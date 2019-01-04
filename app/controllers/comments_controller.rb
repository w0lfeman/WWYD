class CommentsController < ApplicationController

    def index
        @comments = Comment.all
    end
    
    def new
        @comment = Comment.new
    end
    
    def show
        @comment = Comment.find(params[:id])
    end
    
    def create
        comment = Comment.create!(comment_params)
        if comment.valid?
            comment.save
            redirect_to comments_path
        else
            flash[:errors] = comment.errors.full_messages
            redirect_to new_comment_path
        end
    end
    
    def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to comments_path
    end
    
    private
    
    def comment_params
    params.require(:comment).permit(:comment, :user_id, :post_id)
    end

end
