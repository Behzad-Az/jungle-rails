class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews
  validates :email, presence: true, exclusion: { in: [nil] }
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
