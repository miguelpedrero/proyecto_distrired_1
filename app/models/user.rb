class User < ActiveRecord::Base 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :commune

  before_create :assign_default_role
  before_create :verify_user_password_per_role

  def assign_default_role
  	self.role = 'cliente' if self.role.nil?
  end

  def verify_user_password_per_role
  	unless self.role == 'Cliente'
  		self.password = Devise.friendly_password
  	end
  end


end
