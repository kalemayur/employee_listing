class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process resize_to_fill: [350, 350]
  end

  def extension_whitelist
    %w(jpg png)
  end

  def content_type_whitelist
    /image\//
  end

  version :small_thumb, from_version: :thumb do
    process resize_to_fill: [50,50]
  end
end
