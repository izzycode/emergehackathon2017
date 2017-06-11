class Picture < ApplicationRecord
  belongs_to :user

  validates :picture,
  attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
  attachment_size: { less_than: 5.megabytes }

  has_attached_file :picture, styles: {
    original: {convert_options: '-auto-orient'}
  }


end
