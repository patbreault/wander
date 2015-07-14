class Playlist < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true
  validates :user_id, presence: true

  def self.search(search)
    where("name ILIKE :search",
      search: "%#{search}%")
  end
end
