class List < ActiveRecord::Base
    belongs_to :group
    has_many :tasks
    accepts_nested_attributes_for :tasks
end
