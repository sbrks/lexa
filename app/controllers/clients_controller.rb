class ClientsController < ApplicationController

	before_action :require_login, :except => [:new, :create, :index, :show]
	before_action :is_client, only:[:edit]
	before_action :client_profile?, only:[:edit, :show]

	def index
		@clients = Client.all
		render :index
	end

	def new
		@client = Client.new
		render :new
	end

	def create
		@client = Client.new(client_params)
			if @client.save
				login(@client, 'clients')
				redirect_to "/clients/#{@client.id}"/lawyer_list
			else
				redirect_to 'clients/new'
			end
		end

		def show
			@client = Client.find(params[:id])
			@lawyer = @client.lawyer
		end

		def update
			@client = Client.find(params[:id])
			@client.update_attributes(client_params)

			if @client.update_attributes(client_params)
				flash[:success] = "Profile updated!"
				redirect_to "/clients/#{@client.id}"
			else
				render :edit
			end
		end

		def destroy
			@client = Client.find(params[:id])
			@client.destroy
			redirect_to '/'
		end

		private 

		def client_params
			params.require(:client).permit(:first_name, :last_name, :location, :description, :image_url, :phone)
		end


end
