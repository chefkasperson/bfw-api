class Api::V1::ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :update, :destroy]

  # GET /children
  def index
    @children = Child.all
    options = { include: [:user, :child_words, :words]}
    render json: ChildSerializer.new(@children, options)
  end
  
  # GET /children/1
  def show
    # binding.pry
    render json: {
      child: @child.as_json(except: [:created_at, :updated_at], include: {child_words: {methods: [:age_learned, :word_string]}}),
    } 
  end
  
  # POST /children
  def create
    @child = Child.new(child_params)
    
    if @child.save
      render json: {
        child: @child.as_json(except: [:created_at, :updated_at], include: {child_words: {methods: [:age_learned, :word_string]}}),
      } 
    else
      render json: {
        message: 'unable to create child',
        status: :unprocessable_entity
      }
    end
  end

  # PATCH/PUT /children/1
  def update
    if @child.update(child_params)
      render json: @child
    else
      render json: @child.errors, status: :unprocessable_entity
    end
  end

  # DELETE /children/1
  def destroy
    @child.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child
      @child = Child.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def child_params
      params.require(:child).permit(:name, :birthday, :gender, :user_id)
    end
end
