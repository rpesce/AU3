json.extract! item, :id, :name, :image, :link, :description, :created_at, :updated_at
json.url item_url(item, format: :json)
