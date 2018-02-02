json.extract! image, :id, :medium_id, :upload_uid, :upload_name, :created_at, :updated_at
json.upload_url image.upload.thumb('400x400#').url
json.url image_url(image, format: :json)
