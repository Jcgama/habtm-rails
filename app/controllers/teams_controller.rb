class TeamsController < ApplicationController
    # Display all teams
    def index
       @teams = Teams.all 
    end
    # Display all favorites
    def show
       @team = Team.find(params[:id]) 
    end
    # Favorite a new team
    def favorite
       team = Team.find(params[:id])
       current_user.teams << team
    end

end
