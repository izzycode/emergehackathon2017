class HomeController < ApplicationController
  def index
    @goals ||= current_user.goals if current_user
  end
  def tester
  end
end
