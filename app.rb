require 'sinatra'

class App < Sinatra::Base
    set :static, true
    set :public_folder, File.dirname(__FILE__)+'/public'
    set :static_cache_control, [:public, :max_age => 360]
    get '/' do
        send_file(File.dirname(__FILE__)+'/public/index.html')
    end
end
