class Match < ApplicationRecord
  # Direct associations

  has_many   :tee_times,
             :dependent => :destroy

  belongs_to :course,
             :counter_cache => true

  # Indirect associations

  # Validations

end
