module DeviseHelper
  def devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join

    html = <<-HTML

    <div class="alert alert-error alert-danger"> <button type="button"
    class="close" data-dismiss="alert">×</button>
    <ul> LOOKS LIKE THAT YOU WAS WRONG IN SOME FIELD :(  </ul>
      #{messages}
    </div>
    HTML

    html.html_safe
  end
end
