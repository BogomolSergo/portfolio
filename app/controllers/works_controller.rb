class WorksController < ApplicationController
  before_action :require_user, only: :show
  before_action :require_editor, only: %i[update edit]

  def index
    @works = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end

  def edit; end

  def update; end

  def destroy; end
end
