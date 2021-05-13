class Like
  include Mongoid::Document

  belongs_to :user
  belongs_to :likeable, polymorphic: true
end
