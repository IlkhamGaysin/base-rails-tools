Rails.application.config.after_initialize do
  Bullet.enable = true
  Bullet.alert = true
  Bullet.rails_logger = true
  Bullet.console = true
  Bullet.unused_eager_loading_enable = false
end if defined?(Bullet)
