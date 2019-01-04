class PostsController < ApplicationController

    def index
        @posts = Post.all
    end
    
    def new
        @post = Post.new
    end
    
    def show
        @post = Post.find(params[:id])
        @user = User.all
        @comment = Comment.all
    end
    
    def create
        Post.create!(post_params)
        redirect_to posts_path
        
    end
    
    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        post = Post.find(params[:id])
        post.update(post_params)
        redirect_to american
    end
    
    def destroy
        post = Post.find(params[:id])
        post.destroy
        redirect_to posts_path
    
    end
  
    private
    
    def post_params
        params.require(:post).permit(:title, :user_id, :item, :comment)
    end

end

