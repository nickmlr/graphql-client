Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :article, Types::ArticleType do
    description "an article"
    argument :id, types.Int
    resolve ->(obj, args, ctx) {
      Article.find(args[:id])
    }
  end
end
