class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all
    
    render json: UserSerializer.new(@users).serializable_hash
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create

    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      render json: {
        current_user: user.as_json(except: [:password_digest], include: [:children.as_json(include: [:child_words, :words])]),
        logged_in: true
      }
    else
      render json: {
        error: "Unable to create account"
      }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :password)
    end
end
