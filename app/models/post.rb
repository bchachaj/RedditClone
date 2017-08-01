class Post < ActiveRecord::Base
  validates :title, :sub, presence: true

  belongs_to :sub,
    class_name: 'Sub',
    primary_key: :id,
    foreign_key: 'sub_id'

  belongs_to :author
end
