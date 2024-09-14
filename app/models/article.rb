class Article < ApplicationRecord
  validates_presence_of(:title, :description)
  validates_length_of :title, within: 6..100, on: :create, message: "must have 6 to 100 caracters"
  validates_length_of :description, within: 10..300, on: :create, message: "must have 10 to 300 caracters"
  #Course ways:
  #validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  #validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  #to try:
  #validates_presence_of_and_length_of()
end
