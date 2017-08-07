class Team < ApplicationRecord
  # Direct associations

  has_many   :tee_times

  has_many   :players

  # Indirect associations

  # Validations

end
