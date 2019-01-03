class UsersController < ApplicationController

def index
    @users = User.all 
end

def new
    @user = User.new
end

def show
    @user = User.find(params[:id])
end

def create
    User.create(user_params)
    redirect_to users_path
end

def edit

end

def update

end

def destroy

end

private

def user_params
    params.require(:user).permit(:name, :handle, :description)
end

end
