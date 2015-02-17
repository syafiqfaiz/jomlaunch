class User < ActiveRecord::Base
	has_many :projects


	def self.authenticate(email, password)
		user = User.find_by(email: email)
		if user && (user.password == password)
			user
		else
			false
		end
	end
end
