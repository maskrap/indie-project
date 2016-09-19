class StaticHomeController < ApplicationController
  # before_filter :authenticate_user!

  def home
  end

  def about
    render template: "static_home/about.html.erb", layout: "application"
  end
end
