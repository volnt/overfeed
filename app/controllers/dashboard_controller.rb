class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def view
    @feeds = current_user.feeds
  end
end
