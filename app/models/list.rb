class List < ActiveRecord::Base
    belongs_to :group
    has_many :tasks
end
