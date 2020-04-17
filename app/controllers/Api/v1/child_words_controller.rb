class Api::V1::ChildWordsController < ApplicationController
  def create
    word = Word.find_or_create_by(word: params[:word][:word])
    cw = ChildWord.new()
    cw.word_id = word.id
    cw.child_id = params[:word][:child_id]
    cw.baby_says = params[:word][:baby_says]
    cw.notes = params[:word][:notes]
    if cw.save
      render json: {
        word: cw.as_json(methods: [:age_learned, :word_string])
      }
    else
      render json: {
        message: 'unable to create child',
        status: :unprocessable_entity
      }
    end
    
  end
  
  private

  def child_word_params
    params.require(:word).permit(:word, :notes, :baby_says, :child_id)
  end
end