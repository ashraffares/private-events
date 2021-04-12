json.extract! invitation, :id, :user_id, :event_id, :created_at, :updated_at
json.url invitation_url(invitation, format: :json)
