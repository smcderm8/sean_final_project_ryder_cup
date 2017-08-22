class Team < ApplicationRecord
  # Direct associations

  has_many   :away_team_matches,
             :class_name => "Match",
             :foreign_key => "away_team_id",
             :dependent => :destroy

  has_many   :home_team_matches,
             :class_name => "Match",
             :foreign_key => "home_team_id",
             :dependent => :destroy

  has_many   :winning_matches,
             :class_name => "Match",
             :foreign_key => "winning_team_id",
             :dependent => :destroy

  has_many   :players,
             :class_name => "User"

  # Indirect associations

  # Validations

end
