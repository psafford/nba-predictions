setwd('~/desktop')

team_dataset <- read.csv('possible_team_game_by_game_data.csv')
team_dataset$W <- 0
team_dataset[team_dataset$W.L == 'W',]$W <- 1
team_dataset$home <- 1
team_dataset$opp <- ''
team_dataset[with(team_dataset, grepl("@", paste(MATCHUP))),]$opp <- 
  gsub('.*@ ', '' , team_dataset[with(team_dataset, grepl("@", paste(MATCHUP))),]$MATCHUP)
team_dataset[with(team_dataset, grepl("vs.", paste(MATCHUP))),]$opp <- 
  gsub('.*vs. ', '' , team_dataset[with(team_dataset, grepl("vs.", paste(MATCHUP))),]$MATCHUP)
team_dataset[with(team_dataset, grepl("@", paste(MATCHUP))),]$home <- 0
team_dataset$MATCHUP <- NULL
team_dataset$W.L <- NULL
team_dataset$game <- 1

team_dataset <- team_dataset[order(team_dataset$TEAM, as.Date(team_dataset$DATE, format = '%m/%d/%y')),]
team_dataset$ot_games_pg <- 0
team_dataset$pts_pg <- 0
team_dataset$fg_pg <- 0
team_dataset$fga_pg <- 0
team_dataset$fg_perc <- team_dataset$fg_pg/team_dataset$fga_pg
team_dataset$thr_pg <- 0
team_dataset$thr_att_pg <- 0
team_dataset$thr_perc <- team_dataset$thr_pg/team_dataset$thr_att_pg
team_dataset$ft_pg <- 0
team_dataset$fta_pg <- 0
team_dataset$ft_perc <- team_dataset$ft_pg/team_dataset$fta_pg
team_dataset$orb_pg <- 0
team_dataset$drb_pg <- 0
team_dataset$rb_pg <- team_dataset$orb_pg+team_dataset$drb_pg
team_dataset$ast_pg <- 0
team_dataset$stl_pg <- 0
team_dataset$blk_pg <- 0
team_dataset$to_pg <- 0
team_dataset$pf_pg <- 0
team_dataset$plus_minus_pg <- 0
team_dataset$w_pg <- 0
team_dataset$game <- 0

for (a in 2:nrow(team_dataset)){
  if (team_dataset$TEAM[a] == team_dataset$TEAM[a-1]){
    # do a bunch of stuff in here
  }
  
}

#for loop to look at each of the past games that have occured and find their per game numbers



#split min into ot and not ot

