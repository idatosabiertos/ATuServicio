module PiaHelper

  def nested_pias(groups)
  	if groups
	    result = content_tag(:div) do
	      	groups.map do |pia, children|

				is_first = pia.ancestry == nil || pia.ancestry === ''
				expanded = is_first ? "in show" : "";
				angle_icon= is_first ? "fa-angle-up" : "fa-angle-down"

				link_icon = content_tag :i, :class => "pias-link-icon fa #{angle_icon}" do "" end

	      		header = content_tag :div, :class => "card-header", :id => "#{pia.pid}-title" do
	      			content_tag :h5, :class => "mb-0" do
	      				content_tag :a, 
	      				:class => "btn btn-link pias-link",
	      				  :"data-toggle" => "collapse",
	      				  :href => "##{pia.pid}",
	      				  :"aria-expanded" =>(is_first ? "true" : "false"),
	      				  :"aria-controls" =>"#{pia.pid}" do
				      		((content_tag :span, "#{pia.pid} - #{pia.titulo}") + link_icon ).html_safe 
				      		
				      	end
				    end
				end
				
				body = 
				content_tag :div,
					:id => "#{pia.pid}",
				    :class => "collapse #{expanded} #{ is_first ? 'root': '' }" do
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

 end