class Group < ActiveRecord::Base
    has_many :users
    has_many :lists
    has_many :tasks, through: :lists
end
