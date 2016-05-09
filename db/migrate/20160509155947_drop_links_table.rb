class DropLinksTable < ActiveRecord::Migration
  def change
    drop_table :links
  end
end
