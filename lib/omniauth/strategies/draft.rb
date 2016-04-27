require 'omniauth-oauth2'
require 'multi_json'


module OmniAuth
  module Strategies
    class Draft < OmniAuth::Strategies::OAuth2

      # Give your strategy a name.
      option :name, "draft"

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {
        :site => "https://draftin.com",
        :authorize_path => "/oauth/authorize"
      }

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid{ raw_info['id'] }

      info do
        {
          :email => raw_info['email']
        }
      end

      # Bugfix for regression introduced after omniauth-oauth2 v1.3.1
      # details: https://github.com/intridea/omniauth-oauth2/issues/81
      def callback_url
        options[:callback_url] || full_host + script_name + callback_path
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/people/me.json').parsed
      end
    end
  end
end


