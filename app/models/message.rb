class Message < ApplicationRecord
  belongs_to :user
  belongs_to :project
  belongs_to :project_thread
  validates :message, presence: true, length: {minimum: 1}
  has_many_attached :photos, :dependent => :destroy
end
