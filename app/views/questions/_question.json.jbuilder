json.extract! question, :id, :body, :answer_id, :note, :catrgory_id, :created_at, :updated_at
json.url question_url(question, format: :json)
