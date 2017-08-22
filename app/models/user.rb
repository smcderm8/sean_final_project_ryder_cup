class User < ApplicationRecord
  # Direct associations

  has_many   :kellogg_player_2_matches,
             :class_name => "Match",
             :foreign_key => "kellogg_player_2_id",
             :dependent => :destroy

  has_many   :kellogg_player_1_matches,
             :class_name => "Match",
             :foreign_key => "kellogg_player_1_id",
             :dependent => :destroy

  has_many   :booth_player_2_matches,
             :class_name => "Match",
             :foreign_key => "booth_player_2_id",
             :dependent => :destroy

  has_many   :booth_player_1_matches,
             :class_name => "Match",
             :foreign_key => "booth_player_1_id",
             :dependent => :destroy

  has_many   :scores,
             :foreign_key => "player_id"

  belongs_to :team,
             :counter_cache => :players_count

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
