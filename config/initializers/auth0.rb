Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'BeMmGu5eBVZOz2AU3F7MFy1ftH9yID51',
    '80Q9pqaXqfpLQArXj0fLK8QWdEPlJ4siOnblAcWO0vofVzgm31uOTV9MrJAjq7OD',
    'danielm.eu.auth0.com',
    callback_path: "/auth/auth0/callback"
  )
end