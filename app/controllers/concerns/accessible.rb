module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_seller
      flash.clear
      # if you have rails_admin. You can redirect anywhere really
      redirect_to(rails_seller.dashboard_path) and return
    elsif current_buyer
      flash.clear
      # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
      redirect_to(authenticated_buyer_root_path) and return
    end
  end
end