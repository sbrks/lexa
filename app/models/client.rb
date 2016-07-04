class Client < ActiveRecord::Base

	attr_accessor :user_t

	has_secure_password

	validates :email, presence: true, uniqueness:true, confirmation: true
	validates :first_name, presence: true
	validates :last_name, presence: true

	belongs_to :lawyer

	def self.confirm(params)
		@client = Client.find_by({email: params[:email]})
		@client.try(:authenticate, params[:password])
	end

end
