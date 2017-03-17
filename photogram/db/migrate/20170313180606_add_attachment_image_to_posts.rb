class AddAttachmentImageToPosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.attachment :image
    end
  end
end
