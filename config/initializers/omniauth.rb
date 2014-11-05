Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Setting.omniauth_facebook.app_id, Setting.omniauth_facebook.app_secret,
           :scope => 'email, user_likes, user_photos, read_friendlists, read_stream, publish_actions'
end