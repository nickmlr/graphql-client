module Types
  CommentType = GraphQL::ObjectType.define do
    name "Comment"
    description "A comment"

    field :id, !types.Int
    field :body, !types.String
    field :commenter, !types.String
    field :createdAt, !types.String, property: :created_at
    field :updatedAt, !types.String, property: :updated_at
    field :comments, types[Types::CommentType]
  end
end