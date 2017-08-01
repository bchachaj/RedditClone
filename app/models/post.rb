class Post < ActiveRecord::Base
  validates :title, :subs, presence: true

#has_many
  has_many :post_subs, inverse_of: :post, dependent: :destroy
  has_many :subs, through: :post_subs, source: :sub

  belongs_to :author


end
