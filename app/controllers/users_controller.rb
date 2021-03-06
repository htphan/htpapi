class UsersController < ApplicationController
	def register
		passhash = Digest::SHA1.hexdigest(params[:password])

		@user = User.new(email: params[:email],
												password: passhash)
		if @user.save
			#render json: "register.json.jbuilder, status: :created
			render json: { user: @user.as_json(only: [:id, :email, :access_token]) }, status: :created
		else
			render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
		end


		# .create! forces the server to throw an exception when it fails to save


		# {
		# 	user: {email: @user.email, access_token: @user.access_token}
		# }
	end
end