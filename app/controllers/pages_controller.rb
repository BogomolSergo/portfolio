class PagesController < ApplicationController
  def welcome
    @welcome = 'Thank for waching!'
  end

  def admin_pg
    @works = Work.all
    @users = User.all
  end
end
