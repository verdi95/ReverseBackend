class Follow < ApplicationRecord
    # belongs_to :user
    belongs_to :follower, class_name: "User", optional: true
    belongs_to :followee, class_name: "User", optional: true
end
