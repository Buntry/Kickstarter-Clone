class User < ActiveRecord::Base
    
    has_many :projects_owned, class_name: "Project", through: :ownership
    has_many :projects_donated_to, class_name: "Project", through: :donorship
    
    include BCrypt

	def password
		@password ||= Password.new(password_hash)
	end

	def password=(new_password)
		@password = Password.create(new_password)
		self.password_hash = @password
	end
end