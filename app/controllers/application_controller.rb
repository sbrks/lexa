class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  include SessionsHelper


  private

  def require_login
    if !current_user
      flash[:error] = "Please login or create an account!"
      redirect_to '/'
    end
  end


  def is_lawyer
    if current_user.user_t == 'lawyers'
    else
      flash[:error] = "Only an attorney may view this!"
      redirect_to '/'
    end
  end

  
  def is_client
    if current_user.user_t == 'clients'
    else
      flash[:error] = "Only a client may view this!"
      redirect_to '/'
    end
  end


  def client_profile?
    if current_user.user_t == 'clients'
      if current_user.id.to_s != params[:id]
        flash[:error] = "You are not authorized to view this!"
        redirect_to "/clients/#{current_user.id}"
      end
    end
  end


  def lawyer_profile?
    if current_user.id.to_s != params[:id]
      flash[:error] = "Only an attorney may view this!"
      redirect_to "/lawyers/#{current_user.id}"
    end
  end




end
