class PagesController < ApplicationController
  def welcome
    @welcome = 'Thank for waching!'
  end

  def admin
    @works = Work.all
    @users = User.all
  end
end
