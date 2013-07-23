RailsBlog.setup do |config|

  # == Blog Title
  #
  # Set the title that is displayed on the main layout
  # for each of the rails blog pages.
  #
  config.blog_title = "<%= Rails.application.class.name.split("::").first.titlecase %>"

  # == Small Blog Title
  #
  # Set the small title that is displayed beside the
  # main title.
  #
  config.small_blog_title = "Blog"

end
