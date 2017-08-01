class SubsController < ApplicationController
  def new
    @sub = Sub.new
  end

  def index
    @subs = Sub.all
  end

  def edit
    @sub = Sub.find(params[:id])
  end

  def create
    @sub = Sub.new(sub_params)
    @sub.id = current_user.id
    if @sub.save
      redirect_to sub_url(@sub)
    else
      flash.now[:errors] = @sub.errors.full_messages
      render :new
    end
  end

  def update
    @sub = Sub.find_by(params[:id])
    if @sub.update(sub_params) && @sub.id == current_user.id
      redirect_to sub_url(@sub)
    else
      flash.now[:errors] = @sub.errors.full_messages
      render :edit
    end
  end

  def show
    @sub = Sub.find(params[:id])
  end


  def destroy
    sub_ = Sub.find(params[:id])
    redirect_to subs_url
  end

  private

  def sub_params
    params.permit(:sub).require(:title, :description)
  end

end
