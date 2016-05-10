class AddPostRefToTags < ActiveRecord::Migration
  def change
    add_reference :tags, :post, index: true, foreign_key: true
  end
end
