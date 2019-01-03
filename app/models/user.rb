class User < ApplicationRecord
    has_many :posts
    has_many :comments

    validates :name, presence: true
    validates :handle, presence: true, uniqueness: { case_sensitive: false }
    validates :description, presence: true, length: { minimum: 20 }

end
