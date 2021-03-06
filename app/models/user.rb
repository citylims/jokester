class User < ActiveRecord::Base
	acts_as_voter
	has_many :votes, :through => :jokes
	has_many :jokes
	has_many :comments, :through => :jokes
	has_many :friends, :through => :friendships
	has_many :friendships
	validates :email, :encrypted_password, :sign_in_count, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
