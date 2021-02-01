class WorksController < ApplicationController
  before_action :set_work, only: [:show, :edit, :update, :destroy]

  def index
    @works = Work.all
  end

  def show
  end

  def new
    @work = Work.new
    @work.author_id = params[:author_id] if params[:author_id].present?
  end

  def create
   @work = Work.new(work_params)
   if @work.save
     redirect_to works_path
   else
     render 'new'
   end
  end

  def edit
  end

  def update
    if @work.update(work_params)
      redirect_to work_path
    else
      render 'edit'
    end
  end

  def destroy
    @work.destroy
    redirect_to works_path, notice: "This movie has been deleted!"
  end

  private

  def work_params
    params[:work].permit!
  end

  def set_work
    @work = Work.find(params[:id])
  end
end
