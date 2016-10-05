class Response < ApplicationRecord
  # Direct associations

  belongs_to :owner

  belongs_to :review

  # Indirect associations

  # Validations

end
