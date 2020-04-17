class Api::V1::SessionsController < ApplicationController

  def new
    user = User.find_by(username: params[:user][:username])
    
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      render json: {
        current_user: current_user.as_json(except: [:password_digest], include: {children: {methods: :age, include: [{child_words: {methods: :word_string}}]}}),
        logged_in: true
      }
    else
      render json: {
        error: "invalid credentials"
      }
    end
    
    # params["user"]["username"]
    # params["user"]["password"]
  end
  
  def destroy
    reset_session
    render json: {
      message: 'successful logout',
      logged_in: false
    }
  end
  
  def get_current_user 
    if logged_in?
      render json: {
        current_user: current_user.as_json(except: [:password_digest], include: {children: {methods: :age, include: [{child_words: {methods: :word_string}}]}}),
        logged_in: true
      } 
    else
      render json: {
        message: 'no one logged in',
        logged_in: false
      }
    end
  end
end