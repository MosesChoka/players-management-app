class Sportsperson < ApplicationRecord
  has_one_attached :image

  def self.ransackable_attributes(auth_object = nil)
    ["birthdate", "created_at", "email", "firstname", "id", "lastname", "phone", "position", "team", "updated_at"]

  end

  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end
end
