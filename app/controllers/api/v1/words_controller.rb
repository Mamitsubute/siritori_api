module Api
  module V1
    class WordsController < ApplicationController
      def index
        word = Word.same_first_charactor(params[:word])
                   .same_word_count(params[:word_count])
                   .sample(1)
        render json: { status: 'SUCCESS', message: 'Loaded word', data: word }
      end
    end
  end
end