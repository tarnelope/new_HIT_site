class Product < ActiveRecord::Base
  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, :allow_destroy => true, reject_if: :all_blank
 
  validates :image, :presence => true
end
