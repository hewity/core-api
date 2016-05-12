class AddTagToLinks < ActiveRecord::Migration
  def change
    add_reference :links, :tag, index: true, foreign_key: true
  end
end
