class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,  :validatable
<<<<<<< HEAD
  
  has_many :group_users
  has_many :groups, through: :group_users
  validates :name, presence: true, uniqueness: true
=======

  validates :name, presence: true, uniqueness: true

>>>>>>> master
end