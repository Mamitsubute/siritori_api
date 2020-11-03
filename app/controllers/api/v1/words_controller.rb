module Api
  module V1
    class WordsController < ApplicationController
      def index
        @word = Word.where("word LIKE ?", "#{params[:word]}%")
                    .where("word_count = ?", params[:word_count])
                    .sample(1)
        render json: { status: 'SUCCESS', message: 'Loaded posts', data: @word }
      end
    end
  end
end