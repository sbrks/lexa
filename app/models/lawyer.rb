class Lawyer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	attr_accessor :user_t

	validates :email, presence: true, uniqueness:true, confirmation: true
	validates :first_name, presence: true
	validates :last_name, presence: true

	has_many :clients

	def self.confirm(params)
		@lawyer = Lawyer.find_by({email: params[:email]})
		@lawyer.try(:authenticate, params[:password])
	end



end
