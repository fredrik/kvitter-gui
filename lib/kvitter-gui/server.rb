require 'rubygems'
require 'sinatra/base'
require 'haml'

class KvitterGui
  class Server < Sinatra::Base
    DefaultPort = 8000

    dir = File.dirname(File.expand_path(__FILE__))
    set :views,  "#{dir}/views"

    get '/' do
      # TODO: parameterize service location.
      haml :index
    end

    def self.start(host, port)
      KvitterGui::Server.run! :host => host, :port => port
    end
  end
end
