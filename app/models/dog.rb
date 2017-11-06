class Dog < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates_presence_of :image

  def self.search(term)
    if term
      where('name ILIKE ? OR description ILIKE ?', "%#{term}%", "%#{term}%").order('id DESC')
    else
      order('id DESC')
    end
  end

end
