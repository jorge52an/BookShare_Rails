class Photo < ApplicationRecord
	mount_uploader :image, ImageUploader

	def self.load_photo_by_id( id )
		self.find_by_id( id )
	end
end

