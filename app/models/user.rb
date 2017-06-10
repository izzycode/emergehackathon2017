class User < ApplicationRecord
  #  Relationships
  has_many :goals

  # Other
  has_attached_file :avatar, styles: { medium: "500x500>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :avatar, attachment_presence: true

end
