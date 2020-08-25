class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    user_finder
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)

    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end


  def edit
    user_finder
  end

  def update
    user_finder

    if @user.update(users_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    user_finder.destroy
    redirect_to users_path
  end


end

private

def user_finder
  @user = User.find(params[:id])
end

def users_params
  params.require(:user).permit(:first_name, :last_name, :age, :gender, :hair_color, 
  :eye_color, :alive)
end