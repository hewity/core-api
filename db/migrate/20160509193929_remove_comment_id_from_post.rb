class RemoveCommentIdFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :comment_id, :integer
  end
end
