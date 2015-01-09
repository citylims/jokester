class Joke < ActiveRecord::Base
	has_many :votes
	belongs_to :user
	validates_presence_of :body 
end