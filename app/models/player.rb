class Player < ApplicationRecord
  # Direct associations

  has_many   :tee_times,
             :dependent => :destroy

  belongs_to :team,
             :counter_cache => true

  # Indirect associations

  has_many   :matches,
             :through => :tee_times,
             :source => :match

  # Validations

end
