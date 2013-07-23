RailsBlog.setup do |config|

  # == Site Title
  #
  # Set the title that is displayed on the main layout
  # for each of the active admin pages.
  #
  config.blog_title = "<%= Rails.application.class.name.split("::").first.titlecase %>"

end
