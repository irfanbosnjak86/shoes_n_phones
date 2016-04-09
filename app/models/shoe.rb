class Shoe < ActiveRecord::Base
  belongs_to :admin

  has_attached_file :feat_img, styles: { medium: "300x300>", thumb: "100x100>", :preserve_files => "false" }, 
  :url => "attachments/:class/:attachment/:id_partition/:style/:filename",
  :path => ":rails_root/app/assets/images/attachments/:class/:attachment/:id_partition/:style/:filename"
  validates_attachment_content_type :feat_img, content_type: /\Aimage\/.*\Z/
end
