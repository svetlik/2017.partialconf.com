activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

set :relative_links, true
set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true, smartypants: true

configure :development do
  activate :livereload
  activate :directory_indexes
end

configure :build do
  activate :asset_hash
  activate :relative_assets
  activate :minify_css
  activate :minify_javascript
end

activate :gh_pages do |gh_pages|
  gh_pages.remote = 'https://github.com/partialconf/2017.partialconf.com'
end

activate :blog do |blog|
  blog.prefix = 'blog'
  blog.layout = 'blog_layout'
end

activate :syntax
