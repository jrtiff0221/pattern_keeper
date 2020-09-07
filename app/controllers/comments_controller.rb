class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :edit, :update, :destroy]

    
    def new
        @comment = current_user.comments.build
    end

    def create
        @pattern = Pattern.find(comment_params[:pattern_id])
        @comment = @pattern.comments.create(comment_params)

        if @comment.valid?
            @comment.save
        
            redirect_to pattern_path(@pattern)
        else
            render :new
        end
    end 


    def index
        @comments = Comment.order('creat_at ASC')
    end

    def show

        @comment = Comment.find_by(id: params[:id])        

    end


    def edit
        set_comment
    end

    def update
        set_comment
        if current_user.id == @comment.id  && @comment.update(comment_params)
            redirect_to comment_path(@comment)
        else
            render :edit
        end
    end

    def destroy
        set_comment
        if current_user.id == @comment.id 
            @comment.destroy 
            redirect_to comments_path
        end
    end

    private

    def set_comment
        @comment = Comment.find_by(id: params[:id])
        if !@comment  
            redirect_to comments_path    
        end
    end
    
    def comment_params
        params.require(:comment).permit( 
            :title,
            :name,
            :message,
            :user_id,
            :pattern_id,
        )
    end
end
