class Group < ActiveRecord::Base
    validates :title, presence: true
    has_many :users
    has_many :lists
    has_many :tasks, through: :lists
end
