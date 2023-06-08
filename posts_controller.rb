class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.create(post_params)
        redirect_to posts_path
    end
    
    def new
        @post = Post.new
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        redirect_to posts_path
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end

    def post_params
        params.require(:post).permit(:message,:receiver,:sender,:point,:badge)
    end
end
