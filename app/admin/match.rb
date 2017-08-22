ActiveAdmin.register Match do

 permit_params :name, :course_id, :tee_time, :winning_team_id, :home_team_id, :away_team_id, :booth_player_1_id, :booth_player_2_id, :kellogg_player_1_id, :kellogg_player_2_id

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
