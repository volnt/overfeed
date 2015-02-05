class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def view
    @feeds = Feedjira::Feed.fetch_and_parse(current_user.feeds.collect { |feed| feed.url })
  end
end
