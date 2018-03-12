module Types
  ArticleType = GraphQL::ObjectType.define do
    name "Article"
    description "An article"

    field :id, !types.Int
    field :title, !types.String
    field :createdAt, !types.String, property: :created_at
    field :updatedAt, !types.String, property: :updated_at
    field :comments, types[Types::CommentType]
  end
end