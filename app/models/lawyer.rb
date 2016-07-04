class Lawyer < ActiveRecord::Base


	validates :email, presence: true, uniqueness:true, confirmation: true
	validates :first_name, presence: true
	validates :last_name, presence: true

	has_many :clients

	def self.confirm(params)
		@lawyer = Lawyer.find_by({email: params[:email]})
		@lawyer.try(:authenticate, params[:password])
	end

	has_secure_password
	
end
