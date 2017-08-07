class TeeTime < ApplicationRecord
  # Direct associations

  belongs_to :player,
             :counter_cache => true

  belongs_to :team,
             :counter_cache => true

  # Indirect associations

  # Validations

end
