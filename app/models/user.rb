class User < ActiveRecord::Base
  validates :email, presence: true, exclusion: { in: [nil] }
  validates :password, presence: true
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
