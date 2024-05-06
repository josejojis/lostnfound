
# app/models/user.rb
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Define role constants
  ROLES = %w[admin agent user].freeze

  # Define methods to check roles
  def admin?
    role == 'admin'
  end

  def agent?
    role == 'agent'
  end

  def user?
    role == 'user'
  end
end
