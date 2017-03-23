require 'sinatra'

set :port, 8086
set :bind, '0.0.0.0'
set :health, true
set :boot_time, Time.now.utc

get '/' do
  if settings.health && (Time.now.utc - settings.boot_time) < (30 * 60) # in 30min
    [200, 'Hello world!']
  else
    502
  end
end

get '/shutdown' do
  settings.health = false
  'ok'
end
