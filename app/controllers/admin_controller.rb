class AdminController < ApplicationController

  def index
    @heading = "Admin Page"
    @body = "This is where all the administrative controls go"
    @roles = Role.all
    @users = User.all
  end

end