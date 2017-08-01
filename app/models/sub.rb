class Sub < ActiveRecord::Base
  validates :title, :description, presence: true

  has_many :post_subs,
    primary_key: :id,
    foreign_key: :sub_id,
    class_name: 'PostSub',
  dependent: :destroy


  has_many :posts, through: :post_subs, source: :post

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    inverse_of: :subs,
    class_name: 'User'


end
