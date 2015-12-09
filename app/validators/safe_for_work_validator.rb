class SafeForWorkValidator < ActiveModel::EachValidator
  BAD_WORDS = %w(darn gosh heck golly)

  def validate_each(record, attribute, value)
    if BAD_WORDS.any? { |word| record.username.include?(word) }
      record.errors[attribute] << (options[:message] || "is not safe for work!")
    end
  end
end
