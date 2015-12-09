class User < ActiveRecord::Base
  validates_with SafeForWorkUsernameValidator

  validates :username, safe_for_work: true
end
