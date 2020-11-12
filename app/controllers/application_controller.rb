class ApplicationController < ActionController::Base
  before_action :authenticate_seller!, except: [:index]
end
