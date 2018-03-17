Rails.application.config.middleware.use OmniAuth::Builder do
  provider :marvin, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret
  provider :developer unless Rails.env.production?
end
