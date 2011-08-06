class Item < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "600x600>", :thumb => "100x100>" }
  validates_attachment_presence :image
end
