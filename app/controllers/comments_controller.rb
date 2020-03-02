class CommentsController < ApplicationController
  before_action :require_editor, only: i%[show edit]

  def new; end

  def show; end

  def edit; end
end
