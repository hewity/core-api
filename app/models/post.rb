class Post < ActiveRecord::Base
belongs_to :tag
has_many :comments

end
