class PostsController < ApplicationController
  load_and_authorize_resource
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Post.order('id DESC').page(params[:page] || 1)
  end

  def show; end

  def new
    @post = current_user.posts.new
    @post.images.build
  end

  def edit
    @post.images.build unless @post.images.present?
  end

  def create
    @post = current_user.posts.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.js
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.js
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(
      :title,
      :body,
      images_attributes: :file
    )
  end
end
