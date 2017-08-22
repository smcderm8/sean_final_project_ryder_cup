class Match < ApplicationRecord
  # Direct associations

  has_many   :scores,
             :dependent => :destroy

  belongs_to :course,
             :counter_cache => true

  belongs_to :kellogg_player_2,
             :class_name => "User"

  belongs_to :kellogg_player_1,
             :class_name => "User"

  belongs_to :booth_player_2,
             :class_name => "User"

  belongs_to :booth_player_1,
             :class_name => "User"

  belongs_to :away_team,
             :class_name => "Team"

  belongs_to :home_team,
             :class_name => "Team"

  belongs_to :winning_team,
             :class_name => "Team"

  # Indirect associations

  # Validations

end
