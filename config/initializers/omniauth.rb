Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '8a98ec6d748d0fe0950b', '5e2ebf8a30e8db6fc21f7b56616ff4d9c185df99'
end
