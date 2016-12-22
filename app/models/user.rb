class User < ActiveRecord::Base 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :commune

  before_create :assign_default_role
  before_validation :generate_random_password, on: :create, if: Proc.new { |x| x.password.blank? }

  def assign_default_role
  	self.role = 'cliente' if role.nil?
  end

  def generate_random_password
  	unless role == 'Cliente'
  		self.password = Devise.friendly_token
  	end
  end


end
