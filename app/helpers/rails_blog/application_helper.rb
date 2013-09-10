module RailsBlog
  module ApplicationHelper

    def render_errors object, attr
      if object.errors[attr].present?
        content_tag(:span, object.errors[attr].join(", "), :class => "error")
      end
    end

  end
end
