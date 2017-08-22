class Score < ApplicationRecord
  # Direct associations

  belongs_to :hole,
             :counter_cache => true

  belongs_to :match

  belongs_to :player,
             :class_name => "User",
             :counter_cache => true

  # Indirect associations

  # Validations

end
