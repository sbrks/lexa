class LawyersController < ApplicationController

	before_action :require_login, :except => [:index, :new, :show, :create]

	before_action :lawyer_profile?, only:[:edit]

	def index 
		@lawyers = Lawyer.all
		render :index
	end

	def new
		@lawyer = Lawyer.new
		render :new
	end


	def show
		@lawyer = Lawyer.find(params[:id])
		render :show
	end

	def create
		@lawyer = Lawyer.new(lawyer_params)
		if @lawyer.save
			login(@lawyer, 'lawyers')
			flash[:success] = "Profile created!"
			redirect_to "/lawyers/#{@lawyer.id}"
		else
			flash[:error] = @lawyer.errors.full_messages.join("---")
			redirect_to '/lawyers/new'
		end
	end

	def edit
		@lawyer = Lawyer.find(params[:id])
		render :edit
	end

	#update client's profile?
	def update
		@lawyer = Lawyer.find(params[:id])
		@lawyer.update_attributes(lawyer_params)

		if @lawyer.update_attributes(lawyer_params)
			redirect_to "/lawyers/#{@lawyer.id}"
			flash[:notice] = "Profile Updated!"
		else
			flash[:error] = @lawyer.errors.full_messages.join("---")
			render :edit
		end
	end

	private

	def lawyer_params
		params.require(:lawyer).permit(:first_name, :last_name, :location, :years_experience, :practice_areas)
	end


end
