spurs = Team.find_by(name: 'Tottenham')
arsenal = Team.find_by(name: 'Arsenal')
brighton = Team.find_by(name: 'Brighton & Hove Albion')
sheffield = Team.find_by(name: 'Sheffield United')
west_brom = Team.find_by(name: 'West Bromwich Albion')
west_ham = Team.find_by(name: 'West Ham United')
liverpool = Team.find_by(name: 'Liverpool')
palace = Team.find_by(name: 'Chrystal Palace')
burnley = Team.find_by(name: 'Burnley')
fulham = Team.find_by(name: 'Fulham')
everton = Team.find_by(name: 'Everton')
leeds = Team.find_by(name: 'Leeds United')
man_utd = Team.find_by(name: 'Manchester United')
southampton = Team.find_by(name: 'Southampton')
newcastle = Team.find_by(name: 'Newcastle')
chelsea = Team.find_by(name: 'Chelsea')
leicester = Team.find_by(name: 'Leicester City')
villa = Team.find_by(name: 'Aston Villa')
man_city = Team.find_by(name: 'Manchester City')
wolves = Team.find_by(name: 'Wolverhampton')
Match.where("home_team_id = ?  AND away_team_id = ?", wolves.id, man_city.id).update(home_goals: 3, away_goals: 1)

Match.where("home_team_id = ?  AND away_team_id = ?", burnley.id, man_utd.id).update(match_datetime: DateTime.civil(2021,12,31,0,0,0,0))
Match.where("home_team_id = ?  AND away_team_id = ?", man_city.id, villa.id).update(match_datetime: DateTime.civil(2021,12,31,0,0,0,0))

Match.where("home_team_id = ?  AND away_team_id = ?", everton.id, west_brom.id).update(home_goals: 5, away_goals: 2)
Match.where("home_team_id = ?  AND away_team_id = ?", leeds.id, fulham.id).update(home_goals: 4, away_goals: 3)
Match.where("home_team_id = ?  AND away_team_id = ?", man_utd.id, palace.id).update(home_goals: 1, away_goals: 3)
Match.where("home_team_id = ?  AND away_team_id = ?", arsenal.id, west_ham.id).update(home_goals: 2, away_goals: 1)
Match.where("home_team_id = ?  AND away_team_id = ?", southampton.id, spurs.id).update(home_goals: 2, away_goals: 5)
Match.where("home_team_id = ?  AND away_team_id = ?", newcastle.id, brighton.id).update(home_goals: 0, away_goals: 3)
Match.where("home_team_id = ?  AND away_team_id = ?", chelsea.id, liverpool.id).update(home_goals: 0, away_goals: 2)
Match.where("home_team_id = ?  AND away_team_id = ?", leicester.id, burnley.id).update(home_goals: 4, away_goals: 2)
Match.where("home_team_id = ?  AND away_team_id = ?", villa.id, sheffield.id).update(home_goals: 1, away_goals: 0)
Match.where("home_team_id = ?  AND away_team_id = ?", wolves.id, man_city.id).update(home_goals: 1, away_goals: 1)

Match.where("matchweek = ?", 16).update(matchweek: matchweek + 365)

Match.all.each do |match|
  if match.matchweek > 16
    match.update(match_datetime: match.match_datetime + 365)
  end  
end


Match.all.each do |match|
  if match.matchweek != nil && match.matchweek > 16
    match.update(match_datetime: match.match_datetime + 365 * 24 * 60 * 60)
  end  
end