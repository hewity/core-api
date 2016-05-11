class RemoveCommentIdFromPost < ActiveRecord::Migration
  def change
    remove_reference :comments, :post
  end
end
