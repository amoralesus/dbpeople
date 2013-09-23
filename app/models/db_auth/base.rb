module DbAuth
  class Base < ActiveRecord::Base
    self.abstract_class = true
    establish_connection :db_auth
    
    #The request is redirected to DbAuth that handles the authentication
    #send the url in the field
    def self.login_url(request)
      Rails.configuration.login_url_prefix+Rack::Utils.escape(request.original_url)
    end
  end
end
