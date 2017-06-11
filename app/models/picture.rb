class Picture < ApplicationRecord
  belongs_to :user

  validates :picture,
  attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
  attachment_size: { less_than: 8.megabytes }

  has_attached_file :picture, styles: {
    original: {convert_options: '-auto-orient'},
  }

  process_in_background :picture, processing_image_url: :processing_image_fallback, queue: "paperclip"

 def processing_image_fallback
   options = picture.options
   options[:interpolator].interpolate(options[:url], picture, :original)
 end
end
