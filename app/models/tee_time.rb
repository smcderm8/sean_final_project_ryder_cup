class TeeTime < ApplicationRecord
  # Direct associations

  belongs_to :team,
             :counter_cache => true

  # Indirect associations

  # Validations

end
