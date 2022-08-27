class Post < ApplicationRecord
  has_rich_text :body
  has_many_attached :photos, :dependent => :destroy
end
