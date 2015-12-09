class User < ActiveRecord::Base
  validates_with SafeForWorkUsernameValidator
end
