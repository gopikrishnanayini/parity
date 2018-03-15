class UsersController < ApplicationController
  before_action :authenticate_model!
  before_action :find_user, :only => [:show, :edit , :update, :destroy]
  def index
  	@users = User.all
  end

  def new
    @user = User.new
  end
 
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'user was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
 
  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_path, notice: 'user was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
  	@user.destroy
  	redirect_to users_path
  end

  private
  def find_user
  	@user = User.find(params[:id])
  end

  def user_params
  	params.require(:user).permit!
  end
end
