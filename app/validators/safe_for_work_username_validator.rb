class SafeForWorkUsernameValidator < ActiveModel::Validator
  BAD_WORDS = %w(darn gosh heck golly)

  def validate(record)
    if BAD_WORDS.any? { |word| record.username.include?(word) }
      record.errors.add(:username, "cannot contain naughty words!")
    end
  end
end
