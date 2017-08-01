class Sub < ActiveRecord::Base
  validates :title, :description, presence: true

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: 'User'
  #
  # has_many :posts
  #   primary_key: :id,
  #   foreign_key: :user
end