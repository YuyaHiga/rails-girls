json.extract! bulleting_board, :id, :name, :description, :picture, :created_at, :updated_at
json.url bulleting_board_url(bulleting_board, format: :json)