class StaticHomeController < ApplicationController
  before_filter :authenticate_user!

  def home
  end
end
