###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload, no_swf: true
  activate :autoprefixer
end

activate :i18n, langs: [:en, :de], mount_at_root: :en, templates_dir: "pages"
activate :sprockets

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'

activate :directory_indexes
set :relative_links, true
activate :relative_assets

###
# Helpers
###

helpers do
  # Returns an array of available languages besides the current one
  def other_langs
    langs - [I18n.locale]
  end

  #
  # returns the correct path in the current locale
  # @example
  # = link_to "bar", url("foo/bar.html")
  #
  def path(url, options = {})
    lang = options[:lang] || I18n.locale.to_s
    if lang.to_s == 'en'
      prefix = ''
    else
      prefix = "/#{lang}"
    end

    prefix + "/" + clean_from_i18n(url)
  end

  # removes an i18n lang code from url if its present
  def clean_from_i18n(url)
    parts = url.split('/').select { |p| p && p.size > 0 }
    parts.shift if langs.map(&:to_s).include?(parts[0])

    parts.join('/')
  end
end

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html do |html|
    html.remove_multi_spaces        = true   # Remove multiple spaces
    html.remove_comments            = true   # Remove comments
    html.remove_intertag_spaces     = false  # Remove inter-tag spaces
    html.remove_quotes              = true   # Remove quotes
    html.simple_doctype             = false  # Use simple doctype
    html.remove_script_attributes   = false   # Remove script attributes
    html.remove_style_attributes    = false   # Remove style attributes
    html.remove_link_attributes     = false   # Remove link attributes
    html.remove_form_attributes     = false  # Remove form attributes
    html.remove_input_attributes    = false   # Remove input attributes
    html.remove_javascript_protocol = true   # Remove JS protocol
    html.remove_http_protocol       = false  # Remove HTTP protocol
    html.remove_https_protocol      = false  # Remove HTTPS protocol
    html.preserve_line_breaks       = false  # Preserve line breaks
    html.simple_boolean_attributes  = true   # Use simple boolean attributes
    html.preserve_patterns          = nil    # Patterns to preserve
  end
end

activate :imageoptim do |options|
  # Use a build manifest to prevent re-compressing images between builds
  options.manifest = true

  # Silence problematic image_optim workers
  options.skip_missing_workers = true

  # Cause image_optim to be in shouty-mode
  options.verbose = false

  # Setting these to true or nil will let options determine them (recommended)
  options.nice = true
  options.threads = true

  # Image extensions to attempt to compress
  options.image_extensions = %w(.png .jpg .gif .svg)

  # Compressor worker options, individual optimisers can be disabled by passing
  # false instead of a hash
  options.advpng    = { :level => 4 }
  options.gifsicle  = { :interlace => false }
  options.jpegoptim = { :strip => ['all'], :max_quality => 75 }
  options.jpegtran  = { :copy_chunks => false, :progressive => true, :jpegrescan => true }
  options.optipng   = { :level => 6, :interlace => false }
  options.pngcrush  = { :chunks => ['alla'], :fix => false, :brute => false }
  options.pngout    = { :copy_chunks => false, :strategy => 0 }
  options.svgo      = false
end

