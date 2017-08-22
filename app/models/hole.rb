class Hole < ApplicationRecord
  # Direct associations

  has_many   :scores,
             :dependent => :destroy

  belongs_to :course

  # Indirect associations

  # Validations

end
