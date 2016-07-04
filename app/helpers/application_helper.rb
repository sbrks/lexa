module ApplicationHelper
	def flash_class(level)
		case level
			when :notice then "alert alert-info"
			when :success then "alert alert-success"
			when :error then "alert alert-error"
			when :alert then "alert alert-error"
		end
	end


	def devise_mapping
  Devise.mappings[:user]
	end

def resource_name
  devise_mapping.name
end

def resource_class
  devise_mapping.to
end


end
