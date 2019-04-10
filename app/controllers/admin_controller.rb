class AdminController < ApplicationController

  def index
    @heading = "Admin Page"
    logger.debug "person"
    @body = "This is where all the administrative controls go"
    @roles = Role.all
    @users = User.all
    @paul = User.all.first
  end

end