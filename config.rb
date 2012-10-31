require 'rubygems'


# Slim HTML
########################################################
require "slim"
Slim::Engine.set_default_options format: :html5
Slim::Engine.set_default_options pretty: true
Slim::Engine.set_default_options tabsize: 2


# Livereload
########################################################
activate :livereload


# Compass
########################################################
require "zurb-foundation"
# require "susy"
# Require any additional compass plugins here.


# Change Compass configuration
compass_config do |config|
  config.output_style = :expanded
  config.preferred_syntax = :sass
end


# Page options, layouts, aliases and proxies
########################################################
Time.zone = "Brasilia"

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/news-feed.html", :layout => "/layouts/logged.html"
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# helpers do
#   def custom_page_classes
#     page_classes + " " + yield_content(:pageClasses)
#   end
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

activate :directory_indexes
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'


# Build-specific configuration
configure :build do
  compass_config do |config|
    config.output_style = :expanded
    config.relative_assets = true
    config.line_comments = false
    config.relative_assets = true
  end
  
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end