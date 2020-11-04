class Word < ApplicationRecord
  scope :same_first_charactor, -> ( word ) { where("word LIKE ?", "#{ word }%") }
  scope :same_word_count, -> ( word_count ) { where("word_count = ?", word_count) }
end
