class User < ApplicationRecord
    has_many :names
    has_many :namevotes
    has_many :follows, dependent: :destroy
    has_many :followers, class_name: "User", foreign_key: "followee_id", through: :follows
    has_many :followees, class_name: "User", foreign_key: "follower_id", through: :follows
end
