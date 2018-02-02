json.extract! note, :id, :submission_id, :user_id, :body, :created_at, :updated_at
json.url note_url(note, format: :json)
