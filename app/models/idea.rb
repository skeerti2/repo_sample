class Idea < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :tags
  # once uploaded, it recognises that the file uploaded is of picture type.
  # mount_uploader is a method from carrier wave,
  # :picture is the field we want to upload
  # PictureUploader is the name of the class for picture uploader
end
