class Post
  include Mongoid::Document

  field :title, type: String
  field :body, type: String
  field :published_at, type: DateTime

  belongs_to :author, class_name: "User"
  has_many :likes, as: :likeable

  scope :published, -> { where(:published_at.ne => nil) }
end
