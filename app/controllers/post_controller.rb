class PostController < ApplicationController
  def new_post
    if current_user != nil
    @post = Post.new
    render 'new_post'
    else
      redirect_to login_path
    end
  end

  def create_post
    caption = params[:caption]
    image = params[:image]
    location = params[:location]
    user_id = current_user.id
    @post = Post.new(caption: caption, image: image, location: location, user_id: user_id)

    if @post.save
      redirect_to root_path
    else
      render 'new_post'
    end
  end

  def edit_post
    @post = Post.find(params[:id])
    render 'edit_post'
  end

  def update_post
    @post = Post.find(params[:id])

    @post.caption = params[:caption]
    @post.image = params[:image]
    @post.location = params[:location]

    if @post.save
      redirect_to root_path
    end
  end

  def delete_post
    Post.delete(params[:id])
    redirect_to root_path
  end

end
