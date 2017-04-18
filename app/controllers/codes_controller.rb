class CodesController < ApplicationController

  before_action :find_code, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category].blank?
      @codes = Code.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @codes = Code.where(category_id: @category_id).order("created_at DESC")
    end
  end

  def new
     @code = Code.new
  end

  def create
     @code = Code.new code_params
     if @code.save
       redirect_to codes_path
     else
       render :new
     end
  end

  def show
  end

  def edit
  end

  def update
     if @code.update code_params
       redirect_to @code
     else
       render :edit
     end
  end


  def destroy
     @code.destroy
     redirect_to root_path
  end


  private

  def find_code
     @code = Code.find params[:id]
  end

  def code_params
     params.require(:code).permit(:kind, :title, :work, :category_id)
  end





end
