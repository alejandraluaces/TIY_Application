########################################################################
# Basics
########################################################################

set :haml, :format => :html5
set :css_dir, 'stylesheets'
set :images_dir, 'images'
set :partials_dir, 'partials'

page "*", layout: "layout"

########################################################################
# Output
########################################################################

activate :livereload

activate :imageoptim do |options|
  options.manifest = true
  options.skip_missing_workers = true
  options.verbose = false
  options.nice = true
  options.threads = true
  options.image_extensions = %w(.png .jpg .gif .svg)
  options.advpng    = { :level => 4 }
  options.gifsicle  = { :interlace => false }
  options.jpegoptim = { :strip => ['all'], :max_quality => 80 }
  options.jpegtran  = { :copy_chunks => false, :progressive => true, :jpegrescan => true }
  options.optipng   = { :level => 6, :interlace => false }
  options.pngcrush  = { :chunks => ['alla'], :fix => false, :brute => false }
  options.pngout    = { :copy_chunks => false, :strategy => 0 }
  options.svgo      = {}
end

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions',
    'Firefox >= 25',
    'Android >= 4',
    'Explorer >= 9',
    'Opera >= 15',
    'OperaMini >= 7']
  config.cascade  = false
  config.inline   = true
  end

configure :build do

  activate :minify_css

end

########################################################################
# Helpers
########################################################################

helpers do
  def sideNav_link_to(title, url)
    classes = ["sideNav__link"]
    classes << "currentPage" if current_page.url == url
    link_to title, url, class: classes.join(' ')
  end
end
