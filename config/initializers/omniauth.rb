OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '555565307339-ucgobvi1lrupvimmioq43mucldutdi1s.apps.googleusercontent.com',
  'hMdOSGVBVMvZEhi4jIMydJ7r', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end