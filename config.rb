compass_config do |config|
  config.output_style = :compact
end

require 'slim'
require 'slim/translator'
activate :livereload
activate :directory_indexes

activate :i18n, :path => "/:locale/" # , :templates_dir => "pages"
set :locales_dir, 'source/locales' # is broken. though the middleman configuration looks right, translations are raised as missing. found this workaround:
I18n.load_path = Dir[Middleman::Application.root_path.join('source/_content', '**', '*.{yml}')]
# https://github.com/middleman/middleman/issues/924#issuecomment-22691566

set :js_dir, 'assets/javascripts'
set :css_dir, 'assets/stylesheets'
set :images_dir, 'assets/images'

# Add bower's directory to sprockets asset path
after_configuration do

  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]

end

# Build-specific configuration
configure :build do

  activate :minify_css
  activate :minify_javascript
  activate :asset_hash

  # activate :relative_assets
  # set :relative_links, true

end