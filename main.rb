require 'sinatra'

set :port, 8086
set :bind, '0.0.0.0'
set :boot_time, Time.now.utc

get '/' do
  if Time.now.utc - settings.boot_time < 30 * 60 # in 30min
    [200, 'Hello world! Hello world!']
  else
    exit!(127)
  end
end

get '/shutdown' do
  exit!(127)
end
