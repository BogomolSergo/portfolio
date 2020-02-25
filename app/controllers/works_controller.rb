class WorksController < ApplicationController
  before_action :require_user, only: :show
  def index
    @works = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end
end
