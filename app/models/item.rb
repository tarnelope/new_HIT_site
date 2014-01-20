class Item < ActiveRecord::Base
  
  has_many :specs
  
  has_attached_file :spec, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/plater.png"
  
  after_spec_post_process :make_pics
  
  private
  
  
  
  
end
