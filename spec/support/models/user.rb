class User
  include Mongoid::Document

  field :name, type: String

  has_many :posts, inverse_of: :author
  has_many :published_posts, -> { published }, class_name: "Post", inverse_of: nil, foreign_key: :author_id
end
