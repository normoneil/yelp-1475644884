class Review < ApplicationRecord
  # Direct associations

  belongs_to :user

  has_many   :responses,
             :dependent => :destroy

  has_many   :photos,
             :dependent => :destroy

  belongs_to :restaurant

  # Indirect associations

  # Validations

end
