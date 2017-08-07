class Player < ApplicationRecord
  # Direct associations

  has_many   :tee_times,
             :dependent => :destroy

  belongs_to :team,
             :counter_cache => true

  # Indirect associations

  # Validations

end
