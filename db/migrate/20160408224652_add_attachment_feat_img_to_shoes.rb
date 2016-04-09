class AddAttachmentFeatImgToShoes < ActiveRecord::Migration
  def self.up
    change_table :shoes do |t|
      t.attachment :feat_img
    end
  end

  def self.down
    remove_attachment :shoes, :feat_img
  end
end
