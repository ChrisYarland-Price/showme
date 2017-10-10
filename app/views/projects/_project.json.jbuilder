json.extract! project, :id, :name, :url, :image, :summary, :technologies, :published, :created_at, :updated_at
json.url project_url(project, format: :json)
