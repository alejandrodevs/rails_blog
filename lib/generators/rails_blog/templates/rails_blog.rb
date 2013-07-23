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

  # == Sidebar Widgets
  #
  # Set the widgets that are displayed in the sidebar
  # whitin the layout.
  #
  # To add new widgets add this line...
  #
  #   config.sidebar_widgets.add :your_widget, order: 1, title: "Your title"
  #
  # The :your_widget param is the partial view name
  # that should be located in the next folder:
  #
  #   "app/views/layout/rails_blog/application/sidebar_widgets"
  #
  config.sidebar_widgets.add :search, order: 1
  config.sidebar_widgets.add :about_us, order: 2
  config.sidebar_widgets.add :latest_posts, order: 3

end
