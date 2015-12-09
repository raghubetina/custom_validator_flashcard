class SafeForWorkUsernameValidator < ActiveModel::Validator
  BAD_WORDS = %w(darn gosh heck golly)

  def validate(record)
    if username.include?(BAD_WORDS) # undefined method
      errors.add(:username, "Naughty words are not allowed!")
    end
  end
end
