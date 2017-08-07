class Match < ApplicationRecord
  # Direct associations

  belongs_to :course,
             :counter_cache => true

  # Indirect associations

  # Validations

end
