class User < ActiveRecord::Base
  has_many :tasks
  belongs_to :group 
  # Include default devise modules. Others available are:
 # :confirmable, :lockable, :timeoutable and :omniauthable
 devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
end
