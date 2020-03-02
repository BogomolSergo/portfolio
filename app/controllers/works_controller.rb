class WorksController < ApplicationController
  before_action :require_user, only: :show
  before_action :require_editor, only: %i[update edit]
  before_action :require_admin, only: %i[edit update destroy]

  def index
    @works = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end

  def edit
    flash[:success] = 'Project updated!'
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update_attributes(work_params)
      redirect_to work_path
    else
      redirect_to admin_path
    end
  end

  def destroy
    flash[:success] = 'Project removed!'
    Work.find(params[:id]).destroy
    redirect_to admin_path
  end

  private

  def work_params
    params.require(:work).permit(:title, :description, :language, :price)
  end
end
