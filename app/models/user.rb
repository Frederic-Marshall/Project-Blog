class User < ApplicationRecord
	has_many :posts
	has_many :room_messages
	
	has_one_attached :avatar

	def avatar_thumbnail
		avatar.variant(resize_to_fill: [300, 300]).processed 
	end
	
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :confirmable, :validatable
end
