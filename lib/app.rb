require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "hello! we can reload"
end

get '/secret' do
  "expecting not to see this!!!!!"
end

get '/cat' do
  "<div>
  <img src='http://placekitten.com/500/500' alt='image of cat'>
  </div>"
end
