class Tag < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :links, dependent: :destroy
end
