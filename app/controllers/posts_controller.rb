class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.new(post_params)
        if post.valid?
            post.save
        else
            puts "Error"
        end
        redirect_to posts_path
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        post = Post.find(params[:id])
        post.update(post_params)
        redirect_to post_path(post)
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy

        redirect_to posts_path
    end

    private

    def post_params
        params.require(:post).permit(:title, :body, :user_id)
    end
end
