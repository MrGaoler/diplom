class CommentsController < ApplicationController
  before_action :set_comment, only: %i[show edit update destroy]

  def index
    @comments = Comment.where(post_id: params[:post_id])
  end

  def show; end

  def new
    @comment = Comment.new(post_id: params[:post_id])
  end

  def edit; end

  def create
    @comment = Comment.new(comment_params.merge(post_id: params[:post_id]))

    respond_to do |format|
      if @comment.save
        format.html { redirect_to post_comments_path(post_id: @comment.post_id), notice: 'Comment was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to post_comments_url, notice: 'Comment was successfully destroyed.' }
    end
  end

  private

  def current_post
    Post.find(params[:post_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:post_id, :title, :body)
  end
end
