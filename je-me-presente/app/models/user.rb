class User < ApplicationRecord
	  validates :username, uniqueness: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end
