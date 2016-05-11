class AddLinkRefToTags < ActiveRecord::Migration
  def change
    add_reference :tags, :link, index: true, foreign_key: true
  end
end
