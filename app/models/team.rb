class Team < ApplicationRecord
  # Direct associations

  has_many   :tee_times

  has_many   :players

  # Indirect associations

  has_many   :matches,
             :through => :tee_times,
             :source => :match

  # Validations

end
