class User < ActiveRecord::Base
  validates :email, :password, presence: true
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  # private
  # def isEmail(input)
  #   return input.match((/[a-zA-Z0-9._%]@(?:[a-zA-Z0-9]\.)[a-zA-Z]{2,4}/))
  # end
end
