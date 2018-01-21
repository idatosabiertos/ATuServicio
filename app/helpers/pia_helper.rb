module PiaHelper

  def nested_pias(groups)
    result = content_tag(:div) do
      	groups.map do |pia, children|

      		header = content_tag :div, :class => "card-header", :id => "#{pia.pid}-title" do
      			content_tag :h5, :class => "mb-0" do
      				content_tag :button, :class => "btn btn-link", :"data-toggle" => "collapse", :"data-target"=> "##{pia.pid}", :"aria-expanded" =>(pia.ancestry ? "false" : "true"), :"aria-controls" =>"#{pia.pid}" do
			      		"#{pia.pid} - #{pia.titulo}"
			      end
			    end
			end
			expanded = pia.ancestry ? "" : "show";
			body = 
			content_tag :div, :"aria-labelledby" => "#{pia.pid}-title", :"data-parent"=>(pia.ancestry ? "##{pia.ancestry}" : "#accordion"), :class => "collapse #{expanded}", :id => "#{pia.pid}" do
			 	content_tag :div, :class => "card-body nested_pia" do
      			  content_tag(:div, pia.informacion) +  nested_pias(children)
				end
			end

	      	card = content_tag :div, :class => "card" do
					(header + body).html_safe
	      	end
    	end.join.html_safe		
    end

  end

 end