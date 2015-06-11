class Tour < ActiveRecord::Base
    mount_uploader :picture, PictureUploader

  belongs_to :user
  has_many :toursights
has_many :sights, :through => :toursights

end
