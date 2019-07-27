json.story @story, :id, :name, :text
json.comments @story.comments do |comment|
  json.extract! comment, :id, :name, :content
  json.posting_date comment.created_at.strftime("%m/%d/%y")
end
