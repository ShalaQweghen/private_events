module SessionsHelper

	def sign_in(user)
		session[:id] = user.id
	end
end
