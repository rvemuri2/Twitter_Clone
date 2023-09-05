#email:string
#password_digest:string

#password:string virtual
#passowrd_confirmation:string virtual
class User < ApplicationRecord

    has_secure_password

    validates :email, presence:true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "must be a valid email address"}
end
