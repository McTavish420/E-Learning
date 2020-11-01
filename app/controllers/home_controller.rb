class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  def index
    #rules for what will be shown in index page
  end
end
