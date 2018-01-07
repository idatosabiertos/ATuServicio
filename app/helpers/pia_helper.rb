module PiaHelper

  def nested_groups(groups)
    s = content_tag(:ul) do
      groups.map do |group, sub_groups|
        content_tag(:li, "#{group.pid} - #{group.titulo}") +  nested_groups(sub_groups)
      end.join.html_safe
    end
  end

end
