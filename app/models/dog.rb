class Dog < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates_presence_of :image

  validates :name, presence: true, length: { minimum: 2, maximum: 50 }, uniqueness: { case_sensitive: false }

  validates :price, presence: true, numericality: { greater_than: 0 }

  validates :description, presence: true, length: { minimum: 20, maximum: 150 }

  validates :age, presence: true, numericality: { only_integer: true, greater_than: -1 }

  def self.search(term)
    if term
      where('name ILIKE ? OR description ILIKE ?', "%#{term}%", "%#{term}%").order('id DESC')
    else
      order('id DESC')
    end
  end

end
