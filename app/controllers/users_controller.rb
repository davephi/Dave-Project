class UsersController < ApplicationController
  
    def update
  @user = User.find(params[:id])
 
    if @user.update(params[:user].permit(:name, :email, :password, :tour_id))
      redirect_to users_path
    else
      render 'edit'
    end
  end


  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to users_path
  	else
  		render 'new'
  	end
  end

  def user_params
  	params.require(:user).permit(:name, :email, :password, :tour_id)
  end

  def index
  	@users = User.all
  end

  def destroy
  @user = User.find(params[:id])
  @user.destroy
 
  redirect_to users_path
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  @user = User.find(params[:id])
  end






end



