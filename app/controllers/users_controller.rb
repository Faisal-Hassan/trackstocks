class UsersController < ApplicationController
	
	def portfolio
		@user_stocks = current_user.stocks
		@user = current_user
	end
	
	def friends
		@friendships = current_user.friends
	end
	
	def search
		@uses = User.search(params[:search_params])
		
		if @users
			@users = current_user.except_current_user(@users)
			render partial: 'friends/lookup'
		else
			render status: :not_found, nothing: true
		end
	end
	
	def add_friend
		@ friends = User.find(params[:friend])
		current_user.friendships.build(friend_id: @friend.id)
		
		if current_user.save
			redirect_to friends_path, notice: "Friend was successfully added"
		else
			redirect_to friends_path, flash[:error] = "There was an erorr with adding user as friend"
		end
	end
	
end