require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "hello! we can reload"
end

get '/secret' do
  "expecting not to see this!!!!!"
end

get '/cat' do
  "<div style='border: dashed red'>
  <img src='https://i.imgur.com/jFaSxym.png' alt='image of cat'>
  </div>"
end
