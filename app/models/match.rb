class Match < ApplicationRecord
  # Direct associations

  has_many   :tee_times,
             :dependent => :destroy

  belongs_to :course,
             :counter_cache => true

  # Indirect associations

  has_many   :players,
             :through => :tee_times,
             :source => :player

  has_many   :teams,
             :through => :tee_times,
             :source => :team

  # Validations

end
