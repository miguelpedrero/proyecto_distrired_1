class User < ActiveRecord::Base 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

belongs_to :communes

  before_create :assign_default_role

  def assign_default_role
  	self.role = 'cliente' if self.role.nil?
  end
end
