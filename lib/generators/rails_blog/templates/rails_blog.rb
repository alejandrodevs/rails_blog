RailsBlog.setup do |config|

  # == Blog Title
  #
  # Set the title that is displayed on the main layout
  # for each of the rails blog pages.
  #
  config.blog_title = "<%= Rails.application.class.name.split("::").first.titlecase %>"

end
