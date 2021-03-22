class Name < ApplicationRecord
    belongs_to :user
    has_many :namevotes
end
