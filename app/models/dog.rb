class Dog < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  def self.search(term)
    if term
      where('name LIKE ?', "%#{term}%").order('id DESC')
    else
      order('id DESC')
    end
  end
  
end
