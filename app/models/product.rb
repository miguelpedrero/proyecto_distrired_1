class Product < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader
	validates :name, presence: true
end
