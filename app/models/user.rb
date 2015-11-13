class User < ActiveRecord::Base

  has_many :authored_polls,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "Poll"

  has_many :responses,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "Response"

  validates :user_name, presence: true, uniqueness: true

end
