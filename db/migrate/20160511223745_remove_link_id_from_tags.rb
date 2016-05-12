class RemoveLinkIdFromTags < ActiveRecord::Migration
  def change
    remove_column :tags, :link_id, :integer
  end
end
