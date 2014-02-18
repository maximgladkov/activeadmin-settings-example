ActiveadminSettingsExample::Application.routes.draw do
  
  mount_activeadmin_settings()
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  ActiveAdmin.routes(self)

end
