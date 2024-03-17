require 'rack/contrib/try_static'
require 'rack/contrib/not_found'

use Rack::TryStatic,
  :root => "output",
  :urls => %w[/],
  :try => ['.html', 'index.html', '/index.html']

run Rack::NotFound.new('output/404.html')
