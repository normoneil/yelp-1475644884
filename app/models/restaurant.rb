class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :reviews,
             :dependent => :destroy

  has_many   :taggings,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
