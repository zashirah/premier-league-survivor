# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pick.destroy_all
League.destroy_all
User.destroy_all
Match.destroy_all
Team.destroy_all

admin = User.create!(username: 'admin', email: 'admin@email.com', password: '123456')
user2 = User.create!(username: 'user2', email: 'user2@email.com', password: '123456')

league = League.create!(name: 'test', status: 'open', manager: admin)

league.users.push(admin, user2)

spurs = Team.create!(name: 'Tottenham')
arsenal = Team.create!(name: 'Arsenal')
brighton = Team.create!(name: 'Brighton & Hove Albion')
sheffield = Team.create!(name: 'Sheffield United')
west_brom = Team.create!(name: 'West Bromwich Albion')
west_ham = Team.create!(name: 'West Ham United')
liverpool = Team.create!(name: 'Liverpool')
palace = Team.create!(name: 'Chrystal Palace')
burnley = Team.create!(name: 'Burnley')
man_city = Team.create!(name: 'Manchester City')
fulham = Team.create!(name: 'Fulham')
everton = Team.create!(name: 'Everton')
leeds = Team.create!(name: 'Leeds United')
man_utd = Team.create!(name: 'Manchester United')
southampton = Team.create!(name: 'Southampton')
newcastle = Team.create!(name: 'Newcastle')
chelsea = Team.create!(name: 'Chelsea')
leicester = Team.create!(name: 'Leicester City')
villa = Team.create!(name: 'Aston Villa')
wolves = Team.create!(name: 'Wolverhampton')

match1 = Match.create!(
  home_team: spurs,
  away_team: arsenal,
  home_goals: 54,
  away_goals: 0,
  match_datetime: DateTime.civil(2020, 9, 1, 12, 0, 0, 0)
)

MATCH_DATA = [
  {
    match_datetime: DateTime.civil(2020,9,14,0,0,0,0),
    home_team: brighton,
    home_goals: 1,
    away_goals: 3,
    away_team: chelsea,
    matchweek: 1
  },
  {
    match_datetime: DateTime.civil(2020,9,14,0,0,0,0),
    home_team: sheffield,
    home_goals: 0,
    away_goals: 2,
    away_team: wolves,
    matchweek: 1
  },
  {
    match_datetime: DateTime.civil(2020,9,13,0,0,0,0),
    home_team: spurs,
    home_goals: 0,
    away_goals: 1,
    away_team: everton,
    matchweek: 1
  },
  {
    match_datetime: DateTime.civil(2020,9,13,0,0,0,0),
    home_team: west_brom,
    home_goals: 0,
    away_goals: 3,
    away_team: leicester,
    matchweek: 1
  },
  {
    match_datetime: DateTime.civil(2020,9,12,0,0,0,0),
    home_team: west_ham,
    home_goals: 0,
    away_goals: 2,
    away_team: newcastle,
    matchweek: 1
  },
  {
    match_datetime: DateTime.civil(2020,9,12,0,0,0,0),
    home_team: liverpool,
    home_goals: 4,
    away_goals: 3,
    away_team: leeds,
    matchweek: 1
  },
  {
    match_datetime: DateTime.civil(2020,9,12,0,0,0,0),
    home_team: palace,
    home_goals: 1,
    away_goals: 0,
    away_team: southampton,
    matchweek: 1
  },
  {
    match_datetime: DateTime.civil(2020,9,12,0,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 1
  },
  {
    match_datetime: DateTime.civil(2020,9,12,0,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 1
  },
  {
    match_datetime: DateTime.civil(2020,9,12,0,0,0,0),
    home_team: fulham,
    home_goals: 0,
    away_goals: 3,
    away_team: arsenal,
    matchweek: 1
  },
  {
    match_datetime: DateTime.civil(2020,9,19,7,30,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 2
  },
  {
    match_datetime: DateTime.civil(2020,9,19,10,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 2
  },
  {
    match_datetime: DateTime.civil(2020,9,19,12,30,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 2
  },
  {
    match_datetime: DateTime.civil(2020,9,19,3,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 2
  },
  {
    match_datetime: DateTime.civil(2020,9,20,7,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 2
  },
  {
    match_datetime: DateTime.civil(2020,9,20,9,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 2
  },
  {
    match_datetime: DateTime.civil(2020,9,20,11,30,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 2
  },
  {
    match_datetime: DateTime.civil(2020,9,20,2,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 2
  },
  {
    match_datetime: DateTime.civil(2020,9,21,1,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 2
  },
  {
    match_datetime: DateTime.civil(2020,9,21,3,15,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 2
  },
  {
    match_datetime: DateTime.civil(2020,9,26,7,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 3
  },
  {
    match_datetime: DateTime.civil(2020,9,26,10,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 3
  },
  {
    match_datetime: DateTime.civil(2020,9,26,12,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 3
  },
  {
    match_datetime: DateTime.civil(2020,9,26,3,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 3
  },
  {
    match_datetime: DateTime.civil(2020,9,27,7,0,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 3
  },
  {
    match_datetime: DateTime.civil(2020,9,27,9,0,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 3
  },
  {
    match_datetime: DateTime.civil(2020,9,27,11,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 3
  },
  {
    match_datetime: DateTime.civil(2020,9,27,2,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 3
  },
  {
    match_datetime: DateTime.civil(2020,9,28,1,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 3
  },
  {
    match_datetime: DateTime.civil(2020,9,28,3,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 3
  },
  {
    match_datetime: DateTime.civil(2020,10,3,10,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 4
  },
  {
    match_datetime: DateTime.civil(2020,10,3,10,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 4
  },
  {
    match_datetime: DateTime.civil(2020,10,3,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 4
  },
  {
    match_datetime: DateTime.civil(2020,10,3,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 4
  },
  {
    match_datetime: DateTime.civil(2020,10,3,10,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 4
  },
  {
    match_datetime: DateTime.civil(2020,10,3,10,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 4
  },
  {
    match_datetime: DateTime.civil(2020,10,3,10,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 4
  },
  {
    match_datetime: DateTime.civil(2020,10,3,10,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 4
  },
  {
    match_datetime: DateTime.civil(2020,10,3,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 4
  },
  {
    match_datetime: DateTime.civil(2020,10,3,10,0,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 4
  },
  {
    match_datetime: DateTime.civil(2020,10,17,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 5
  },
  {
    match_datetime: DateTime.civil(2020,10,17,10,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 5
  },
  {
    match_datetime: DateTime.civil(2020,10,17,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 5
  },
  {
    match_datetime: DateTime.civil(2020,10,17,10,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 5
  },
  {
    match_datetime: DateTime.civil(2020,10,17,10,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 5
  },
  {
    match_datetime: DateTime.civil(2020,10,17,10,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 5
  },
  {
    match_datetime: DateTime.civil(2020,10,17,10,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 5
  },
  {
    match_datetime: DateTime.civil(2020,10,17,10,0,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 5
  },
  {
    match_datetime: DateTime.civil(2020,10,17,10,0,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 5
  },
  {
    match_datetime: DateTime.civil(2020,10,17,10,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 5
  },
  {
    match_datetime: DateTime.civil(2020,10,24,10,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 6
  },
  {
    match_datetime: DateTime.civil(2020,10,24,10,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 6
  },
  {
    match_datetime: DateTime.civil(2020,10,24,10,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 6
  },
  {
    match_datetime: DateTime.civil(2020,10,24,10,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 6
  },
  {
    match_datetime: DateTime.civil(2020,10,24,10,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 6
  },
  {
    match_datetime: DateTime.civil(2020,10,24,10,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 6
  },
  {
    match_datetime: DateTime.civil(2020,10,24,10,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 6
  },
  {
    match_datetime: DateTime.civil(2020,10,24,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 6
  },
  {
    match_datetime: DateTime.civil(2020,10,24,10,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 6
  },
  {
    match_datetime: DateTime.civil(2020,10,24,10,0,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 6
  },
  {
    match_datetime: DateTime.civil(2020,10,31,11,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 7
  },
  {
    match_datetime: DateTime.civil(2020,10,31,11,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 7
  },
  {
    match_datetime: DateTime.civil(2020,10,31,11,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 7
  },
  {
    match_datetime: DateTime.civil(2020,10,31,11,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 7
  },
  {
    match_datetime: DateTime.civil(2020,10,31,11,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 7
  },
  {
    match_datetime: DateTime.civil(2020,10,31,11,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 7
  },
  {
    match_datetime: DateTime.civil(2020,10,31,11,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 7
  },
  {
    match_datetime: DateTime.civil(2020,10,31,11,0,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 7
  },
  {
    match_datetime: DateTime.civil(2020,10,31,11,0,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 7
  },
  {
    match_datetime: DateTime.civil(2020,10,31,11,0,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 7
  },
  {
    match_datetime: DateTime.civil(2020,11,7,11,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 8
  },
  {
    match_datetime: DateTime.civil(2020,11,7,10,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 8
  },
  {
    match_datetime: DateTime.civil(2020,11,7,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 8
  },
  {
    match_datetime: DateTime.civil(2020,11,7,10,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 8
  },
  {
    match_datetime: DateTime.civil(2020,11,7,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 8
  },
  {
    match_datetime: DateTime.civil(2020,11,7,10,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 8
  },
  {
    match_datetime: DateTime.civil(2020,11,7,10,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 8
  },
  {
    match_datetime: DateTime.civil(2020,11,7,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 8
  },
  {
    match_datetime: DateTime.civil(2020,11,7,10,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 8
  },
  {
    match_datetime: DateTime.civil(2020,11,7,10,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 8
  },
  {
    match_datetime: DateTime.civil(2020,11,21,10,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 9
  },
  {
    match_datetime: DateTime.civil(2020,11,21,10,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 9
  },
  {
    match_datetime: DateTime.civil(2020,11,21,10,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 9
  },
  {
    match_datetime: DateTime.civil(2020,11,21,10,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 9
  },
  {
    match_datetime: DateTime.civil(2020,11,21,10,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 9
  },
  {
    match_datetime: DateTime.civil(2020,11,21,10,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 9
  },
  {
    match_datetime: DateTime.civil(2020,11,21,10,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 9
  },
  {
    match_datetime: DateTime.civil(2020,11,21,10,0,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 9
  },
  {
    match_datetime: DateTime.civil(2020,11,21,10,0,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 9
  },
  {
    match_datetime: DateTime.civil(2020,11,21,10,0,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 9
  },
  {
    match_datetime: DateTime.civil(2020,11,28,10,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 10
  },
  {
    match_datetime: DateTime.civil(2020,11,28,10,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 10
  },
  {
    match_datetime: DateTime.civil(2020,11,28,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 10
  },
  {
    match_datetime: DateTime.civil(2020,11,28,10,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 10
  },
  {
    match_datetime: DateTime.civil(2020,11,28,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 10
  },
  {
    match_datetime: DateTime.civil(2020,11,28,10,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 10
  },
  {
    match_datetime: DateTime.civil(2020,11,28,10,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 10
  },
  {
    match_datetime: DateTime.civil(2020,11,28,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 10
  },
  {
    match_datetime: DateTime.civil(2020,11,28,10,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 10
  },
  {
    match_datetime: DateTime.civil(2020,11,28,10,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 10
  },
  {
    match_datetime: DateTime.civil(2020,12,5,10,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 11
  },
  {
    match_datetime: DateTime.civil(2020,12,5,10,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 11
  },
  {
    match_datetime: DateTime.civil(2020,12,5,10,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 11
  },
  {
    match_datetime: DateTime.civil(2020,12,5,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 11
  },
  {
    match_datetime: DateTime.civil(2020,12,5,10,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 11
  },
  {
    match_datetime: DateTime.civil(2020,12,5,10,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 11
  },
  {
    match_datetime: DateTime.civil(2020,12,5,10,0,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 11
  },
  {
    match_datetime: DateTime.civil(2020,12,5,10,0,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 11
  },
  {
    match_datetime: DateTime.civil(2020,12,5,10,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 11
  },
  {
    match_datetime: DateTime.civil(2020,12,5,10,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 11
  },
  {
    match_datetime: DateTime.civil(2020,12,12,10,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 12
  },
  {
    match_datetime: DateTime.civil(2020,12,12,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 12
  },
  {
    match_datetime: DateTime.civil(2020,12,12,10,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 12
  },
  {
    match_datetime: DateTime.civil(2020,12,12,10,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 12
  },
  {
    match_datetime: DateTime.civil(2020,12,12,10,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 12
  },
  {
    match_datetime: DateTime.civil(2020,12,12,10,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 12
  },
  {
    match_datetime: DateTime.civil(2020,12,12,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 12
  },
  {
    match_datetime: DateTime.civil(2020,12,12,10,0,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 12
  },
  {
    match_datetime: DateTime.civil(2020,12,13,10,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 12
  },
  {
    match_datetime: DateTime.civil(2020,12,13,10,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 12
  },
  {
    match_datetime: DateTime.civil(2020,12,15,10,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 13
  },
  {
    match_datetime: DateTime.civil(2020,12,15,10,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 13
  },
  {
    match_datetime: DateTime.civil(2020,12,15,10,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 13
  },
  {
    match_datetime: DateTime.civil(2020,12,15,2,45,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 13
  },
  {
    match_datetime: DateTime.civil(2020,12,15,2,45,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 13
  },
  {
    match_datetime: DateTime.civil(2020,12,15,2,45,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 13
  },
  {
    match_datetime: DateTime.civil(2020,12,15,2,45,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 13
  },
  {
    match_datetime: DateTime.civil(2020,12,15,2,45,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 13
  },
  {
    match_datetime: DateTime.civil(2020,12,16,3,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 13
  },
  {
    match_datetime: DateTime.civil(2020,12,16,3,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 13
  },
  {
    match_datetime: DateTime.civil(2020,12,19,10,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 14
  },
  {
    match_datetime: DateTime.civil(2020,12,19,10,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 14
  },
  {
    match_datetime: DateTime.civil(2020,12,19,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 14
  },
  {
    match_datetime: DateTime.civil(2020,12,19,10,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 14
  },
  {
    match_datetime: DateTime.civil(2020,12,19,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 14
  },
  {
    match_datetime: DateTime.civil(2020,12,19,10,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 14
  },
  {
    match_datetime: DateTime.civil(2020,12,19,10,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 14
  },
  {
    match_datetime: DateTime.civil(2020,12,19,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 14
  },
  {
    match_datetime: DateTime.civil(2020,12,19,10,0,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 14
  },
  {
    match_datetime: DateTime.civil(2020,12,19,10,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 14
  },
  {
    match_datetime: DateTime.civil(2020,12,26,10,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 15
  },
  {
    match_datetime: DateTime.civil(2020,12,26,10,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 15
  },
  {
    match_datetime: DateTime.civil(2020,12,26,10,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 15
  },
  {
    match_datetime: DateTime.civil(2020,12,26,10,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 15
  },
  {
    match_datetime: DateTime.civil(2020,12,26,10,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 15
  },
  {
    match_datetime: DateTime.civil(2020,12,26,10,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 15
  },
  {
    match_datetime: DateTime.civil(2020,12,26,10,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 15
  },
  {
    match_datetime: DateTime.civil(2020,12,26,10,0,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 15
  },
  {
    match_datetime: DateTime.civil(2020,12,26,10,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 15
  },
  {
    match_datetime: DateTime.civil(2020,12,26,10,0,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 15
  },
  {
    match_datetime: DateTime.civil(2020,12,28,10,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 16
  },
  {
    match_datetime: DateTime.civil(2020,12,28,10,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 16
  },
  {
    match_datetime: DateTime.civil(2020,12,28,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 16
  },
  {
    match_datetime: DateTime.civil(2020,12,28,10,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 16
  },
  {
    match_datetime: DateTime.civil(2020,12,28,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 16
  },
  {
    match_datetime: DateTime.civil(2020,12,28,10,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 16
  },
  {
    match_datetime: DateTime.civil(2020,12,28,10,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 16
  },
  {
    match_datetime: DateTime.civil(2020,12,28,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 16
  },
  {
    match_datetime: DateTime.civil(2020,12,28,10,0,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 16
  },
  {
    match_datetime: DateTime.civil(2020,12,28,10,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 16
  },
  {
    match_datetime: DateTime.civil(2020,1,2,10,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 17
  },
  {
    match_datetime: DateTime.civil(2020,1,2,10,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 17
  },
  {
    match_datetime: DateTime.civil(2020,1,2,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 17
  },
  {
    match_datetime: DateTime.civil(2020,1,2,10,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 17
  },
  {
    match_datetime: DateTime.civil(2020,1,2,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 17
  },
  {
    match_datetime: DateTime.civil(2020,1,2,10,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 17
  },
  {
    match_datetime: DateTime.civil(2020,1,2,10,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 17
  },
  {
    match_datetime: DateTime.civil(2020,1,2,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 17
  },
  {
    match_datetime: DateTime.civil(2020,1,2,10,0,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 17
  },
  {
    match_datetime: DateTime.civil(2020,1,2,10,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 17
  },
  {
    match_datetime: DateTime.civil(2020,1,12,2,45,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 18
  },
  {
    match_datetime: DateTime.civil(2020,1,12,2,45,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 18
  },
  {
    match_datetime: DateTime.civil(2020,1,12,2,45,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 18
  },
  {
    match_datetime: DateTime.civil(2020,1,12,2,45,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 18
  },
  {
    match_datetime: DateTime.civil(2020,1,12,2,45,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 18
  },
  {
    match_datetime: DateTime.civil(2020,1,12,2,45,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 18
  },
  {
    match_datetime: DateTime.civil(2020,1,12,2,45,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 18
  },
  {
    match_datetime: DateTime.civil(2020,1,12,2,45,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 18
  },
  {
    match_datetime: DateTime.civil(2020,1,13,3,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 18
  },
  {
    match_datetime: DateTime.civil(2020,1,13,3,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 18
  },
  {
    match_datetime: DateTime.civil(2020,1,16,10,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 19
  },
  {
    match_datetime: DateTime.civil(2020,1,16,10,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 19
  },
  {
    match_datetime: DateTime.civil(2020,1,16,10,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 19
  },
  {
    match_datetime: DateTime.civil(2020,1,16,10,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 19
  },
  {
    match_datetime: DateTime.civil(2020,1,16,10,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 19
  },
  {
    match_datetime: DateTime.civil(2020,1,16,10,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 19
  },
  {
    match_datetime: DateTime.civil(2020,1,16,10,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 19
  },
  {
    match_datetime: DateTime.civil(2020,1,16,10,0,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 19
  },
  {
    match_datetime: DateTime.civil(2020,1,16,10,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 19
  },
  {
    match_datetime: DateTime.civil(2020,1,16,10,0,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 19
  },
  {
    match_datetime: DateTime.civil(2020,1,26,2,45,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 20
  },
  {
    match_datetime: DateTime.civil(2020,1,26,2,45,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 20
  },
  {
    match_datetime: DateTime.civil(2020,1,26,2,45,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 20
  },
  {
    match_datetime: DateTime.civil(2020,1,26,3,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 20
  },
  {
    match_datetime: DateTime.civil(2020,1,26,3,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 20
  },
  {
    match_datetime: DateTime.civil(2020,1,27,2,45,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 20
  },
  {
    match_datetime: DateTime.civil(2020,1,27,2,45,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 20
  },
  {
    match_datetime: DateTime.civil(2020,1,27,2,45,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 20
  },
  {
    match_datetime: DateTime.civil(2020,1,27,2,45,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 20
  },
  {
    match_datetime: DateTime.civil(2020,1,27,3,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 20
  },
  {
    match_datetime: DateTime.civil(2020,1,30,10,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 21
  },
  {
    match_datetime: DateTime.civil(2020,1,30,10,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 21
  },
  {
    match_datetime: DateTime.civil(2020,1,30,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 21
  },
  {
    match_datetime: DateTime.civil(2020,1,30,10,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 21
  },
  {
    match_datetime: DateTime.civil(2020,1,30,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 21
  },
  {
    match_datetime: DateTime.civil(2020,1,30,10,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 21
  },
  {
    match_datetime: DateTime.civil(2020,1,30,10,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 21
  },
  {
    match_datetime: DateTime.civil(2020,1,30,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 21
  },
  {
    match_datetime: DateTime.civil(2020,1,30,10,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 21
  },
  {
    match_datetime: DateTime.civil(2020,1,30,10,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 21
  },
  {
    match_datetime: DateTime.civil(2020,2,2,2,45,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 22
  },
  {
    match_datetime: DateTime.civil(2020,2,2,2,45,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 22
  },
  {
    match_datetime: DateTime.civil(2020,2,2,2,45,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 22
  },
  {
    match_datetime: DateTime.civil(2020,2,2,2,45,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 22
  },
  {
    match_datetime: DateTime.civil(2020,2,2,2,45,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 22
  },
  {
    match_datetime: DateTime.civil(2020,2,2,2,45,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 22
  },
  {
    match_datetime: DateTime.civil(2020,2,2,3,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 22
  },
  {
    match_datetime: DateTime.civil(2020,2,3,2,45,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 22
  },
  {
    match_datetime: DateTime.civil(2020,2,3,2,45,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 22
  },
  {
    match_datetime: DateTime.civil(2020,2,3,3,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 22
  },
  {
    match_datetime: DateTime.civil(2020,2,6,10,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 23
  },
  {
    match_datetime: DateTime.civil(2020,2,6,10,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 23
  },
  {
    match_datetime: DateTime.civil(2020,2,6,10,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 23
  },
  {
    match_datetime: DateTime.civil(2020,2,6,10,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 23
  },
  {
    match_datetime: DateTime.civil(2020,2,6,10,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 23
  },
  {
    match_datetime: DateTime.civil(2020,2,6,10,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 23
  },
  {
    match_datetime: DateTime.civil(2020,2,6,10,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 23
  },
  {
    match_datetime: DateTime.civil(2020,2,6,10,0,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 23
  },
  {
    match_datetime: DateTime.civil(2020,2,6,10,0,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 23
  },
  {
    match_datetime: DateTime.civil(2020,2,6,10,0,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 23
  },
  {
    match_datetime: DateTime.civil(2020,2,13,10,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 24
  },
  {
    match_datetime: DateTime.civil(2020,2,13,10,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 24
  },
  {
    match_datetime: DateTime.civil(2020,2,13,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 24
  },
  {
    match_datetime: DateTime.civil(2020,2,13,10,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 24
  },
  {
    match_datetime: DateTime.civil(2020,2,13,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 24
  },
  {
    match_datetime: DateTime.civil(2020,2,13,10,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 24
  },
  {
    match_datetime: DateTime.civil(2020,2,13,10,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 24
  },
  {
    match_datetime: DateTime.civil(2020,2,13,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 24
  },
  {
    match_datetime: DateTime.civil(2020,2,13,10,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 24
  },
  {
    match_datetime: DateTime.civil(2020,2,13,10,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 24
  },
  {
    match_datetime: DateTime.civil(2020,2,20,10,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 25
  },
  {
    match_datetime: DateTime.civil(2020,2,20,10,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 25
  },
  {
    match_datetime: DateTime.civil(2020,2,20,10,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 25
  },
  {
    match_datetime: DateTime.civil(2020,2,20,10,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 25
  },
  {
    match_datetime: DateTime.civil(2020,2,20,10,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 25
  },
  {
    match_datetime: DateTime.civil(2020,2,20,10,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 25
  },
  {
    match_datetime: DateTime.civil(2020,2,20,10,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 25
  },
  {
    match_datetime: DateTime.civil(2020,2,20,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 25
  },
  {
    match_datetime: DateTime.civil(2020,2,20,10,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 25
  },
  {
    match_datetime: DateTime.civil(2020,2,20,10,0,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 25
  },
  {
    match_datetime: DateTime.civil(2020,2,27,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 26
  },
  {
    match_datetime: DateTime.civil(2020,2,27,10,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 26
  },
  {
    match_datetime: DateTime.civil(2020,2,27,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 26
  },
  {
    match_datetime: DateTime.civil(2020,2,27,10,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 26
  },
  {
    match_datetime: DateTime.civil(2020,2,27,10,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 26
  },
  {
    match_datetime: DateTime.civil(2020,2,27,10,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 26
  },
  {
    match_datetime: DateTime.civil(2020,2,27,10,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 26
  },
  {
    match_datetime: DateTime.civil(2020,2,27,10,0,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 26
  },
  {
    match_datetime: DateTime.civil(2020,2,27,10,0,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 26
  },
  {
    match_datetime: DateTime.civil(2020,2,27,10,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 26
  },
  {
    match_datetime: DateTime.civil(2020,3,6,10,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 27
  },
  {
    match_datetime: DateTime.civil(2020,3,6,10,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 27
  },
  {
    match_datetime: DateTime.civil(2020,3,6,10,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 27
  },
  {
    match_datetime: DateTime.civil(2020,3,6,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 27
  },
  {
    match_datetime: DateTime.civil(2020,3,6,10,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 27
  },
  {
    match_datetime: DateTime.civil(2020,3,6,10,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 27
  },
  {
    match_datetime: DateTime.civil(2020,3,6,10,0,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 27
  },
  {
    match_datetime: DateTime.civil(2020,3,6,10,0,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 27
  },
  {
    match_datetime: DateTime.civil(2020,3,6,10,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 27
  },
  {
    match_datetime: DateTime.civil(2020,3,6,10,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 27
  },
  {
    match_datetime: DateTime.civil(2020,3,13,10,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 28
  },
  {
    match_datetime: DateTime.civil(2020,3,13,10,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 28
  },
  {
    match_datetime: DateTime.civil(2020,3,13,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 28
  },
  {
    match_datetime: DateTime.civil(2020,3,13,10,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 28
  },
  {
    match_datetime: DateTime.civil(2020,3,13,10,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 28
  },
  {
    match_datetime: DateTime.civil(2020,3,13,10,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 28
  },
  {
    match_datetime: DateTime.civil(2020,3,13,10,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 28
  },
  {
    match_datetime: DateTime.civil(2020,3,13,10,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 28
  },
  {
    match_datetime: DateTime.civil(2020,3,13,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 28
  },
  {
    match_datetime: DateTime.civil(2020,3,13,10,0,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 28
  },
  {
    match_datetime: DateTime.civil(2020,3,20,11,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 29
  },
  {
    match_datetime: DateTime.civil(2020,3,20,11,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 29
  },
  {
    match_datetime: DateTime.civil(2020,3,20,11,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 29
  },
  {
    match_datetime: DateTime.civil(2020,3,20,11,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 29
  },
  {
    match_datetime: DateTime.civil(2020,3,20,11,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 29
  },
  {
    match_datetime: DateTime.civil(2020,3,20,11,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 29
  },
  {
    match_datetime: DateTime.civil(2020,3,20,11,0,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 29
  },
  {
    match_datetime: DateTime.civil(2020,3,20,11,0,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 29
  },
  {
    match_datetime: DateTime.civil(2020,3,20,11,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 29
  },
  {
    match_datetime: DateTime.civil(2020,3,20,11,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 29
  },
  {
    match_datetime: DateTime.civil(2020,4,3,10,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 30
  },
  {
    match_datetime: DateTime.civil(2020,4,3,10,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 30
  },
  {
    match_datetime: DateTime.civil(2020,4,3,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 30
  },
  {
    match_datetime: DateTime.civil(2020,4,3,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 30
  },
  {
    match_datetime: DateTime.civil(2020,4,3,10,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 30
  },
  {
    match_datetime: DateTime.civil(2020,4,3,10,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 30
  },
  {
    match_datetime: DateTime.civil(2020,4,3,10,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 30
  },
  {
    match_datetime: DateTime.civil(2020,4,3,10,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 30
  },
  {
    match_datetime: DateTime.civil(2020,4,3,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 30
  },
  {
    match_datetime: DateTime.civil(2020,4,3,10,0,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 30
  },
  {
    match_datetime: DateTime.civil(2020,4,10,10,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 31
  },
  {
    match_datetime: DateTime.civil(2020,4,10,10,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 31
  },
  {
    match_datetime: DateTime.civil(2020,4,10,10,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 31
  },
  {
    match_datetime: DateTime.civil(2020,4,10,10,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 31
  },
  {
    match_datetime: DateTime.civil(2020,4,10,10,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 31
  },
  {
    match_datetime: DateTime.civil(2020,4,10,10,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 31
  },
  {
    match_datetime: DateTime.civil(2020,4,10,10,0,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 31
  },
  {
    match_datetime: DateTime.civil(2020,4,10,10,0,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 31
  },
  {
    match_datetime: DateTime.civil(2020,4,10,10,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 31
  },
  {
    match_datetime: DateTime.civil(2020,4,10,10,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 31
  },
  {
    match_datetime: DateTime.civil(2020,4,17,10,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 32
  },
  {
    match_datetime: DateTime.civil(2020,4,17,10,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 32
  },
  {
    match_datetime: DateTime.civil(2020,4,17,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 32
  },
  {
    match_datetime: DateTime.civil(2020,4,17,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 32
  },
  {
    match_datetime: DateTime.civil(2020,4,17,10,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 32
  },
  {
    match_datetime: DateTime.civil(2020,4,17,10,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 32
  },
  {
    match_datetime: DateTime.civil(2020,4,17,10,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 32
  },
  {
    match_datetime: DateTime.civil(2020,4,17,10,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 32
  },
  {
    match_datetime: DateTime.civil(2020,4,17,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 32
  },
  {
    match_datetime: DateTime.civil(2020,4,17,10,0,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 32
  },
  {
    match_datetime: DateTime.civil(2020,4,24,10,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 33
  },
  {
    match_datetime: DateTime.civil(2020,4,24,10,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 33
  },
  {
    match_datetime: DateTime.civil(2020,4,24,10,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 33
  },
  {
    match_datetime: DateTime.civil(2020,4,24,10,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 33
  },
  {
    match_datetime: DateTime.civil(2020,4,24,10,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 33
  },
  {
    match_datetime: DateTime.civil(2020,4,24,10,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 33
  },
  {
    match_datetime: DateTime.civil(2020,4,24,10,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 33
  },
  {
    match_datetime: DateTime.civil(2020,4,24,10,0,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 33
  },
  {
    match_datetime: DateTime.civil(2020,4,24,10,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 33
  },
  {
    match_datetime: DateTime.civil(2020,4,24,10,0,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 33
  },
  {
    match_datetime: DateTime.civil(2020,5,1,10,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 34
  },
  {
    match_datetime: DateTime.civil(2020,5,1,10,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 34
  },
  {
    match_datetime: DateTime.civil(2020,5,1,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 34
  },
  {
    match_datetime: DateTime.civil(2020,5,1,10,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 34
  },
  {
    match_datetime: DateTime.civil(2020,5,1,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 34
  },
  {
    match_datetime: DateTime.civil(2020,5,1,10,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 34
  },
  {
    match_datetime: DateTime.civil(2020,5,1,10,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 34
  },
  {
    match_datetime: DateTime.civil(2020,5,1,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 34
  },
  {
    match_datetime: DateTime.civil(2020,5,1,10,0,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 34
  },
  {
    match_datetime: DateTime.civil(2020,5,1,10,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 34
  },
  {
    match_datetime: DateTime.civil(2020,5,8,10,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 35
  },
  {
    match_datetime: DateTime.civil(2020,5,8,10,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 35
  },
  {
    match_datetime: DateTime.civil(2020,5,8,10,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 35
  },
  {
    match_datetime: DateTime.civil(2020,5,8,10,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 35
  },
  {
    match_datetime: DateTime.civil(2020,5,8,10,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 35
  },
  {
    match_datetime: DateTime.civil(2020,5,8,10,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 35
  },
  {
    match_datetime: DateTime.civil(2020,5,8,10,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 35
  },
  {
    match_datetime: DateTime.civil(2020,5,8,10,0,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 35
  },
  {
    match_datetime: DateTime.civil(2020,5,8,10,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 35
  },
  {
    match_datetime: DateTime.civil(2020,5,8,10,0,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 35
  },
  {
    match_datetime: DateTime.civil(2020,5,11,2,45,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 36
  },
  {
    match_datetime: DateTime.civil(2020,5,11,2,45,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 36
  },
  {
    match_datetime: DateTime.civil(2020,5,11,2,45,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 36
  },
  {
    match_datetime: DateTime.civil(2020,5,11,3,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 36
  },
  {
    match_datetime: DateTime.civil(2020,5,11,3,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 36
  },
  {
    match_datetime: DateTime.civil(2020,5,12,2,45,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 36
  },
  {
    match_datetime: DateTime.civil(2020,5,12,2,45,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 36
  },
  {
    match_datetime: DateTime.civil(2020,5,12,2,45,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 36
  },
  {
    match_datetime: DateTime.civil(2020,5,12,2,45,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 36
  },
  {
    match_datetime: DateTime.civil(2020,5,12,3,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 36
  },
  {
    match_datetime: DateTime.civil(2020,5,15,10,0,0,0),
    home_team: brighton,
    home_goals: nil,
    away_goals: nil,
    away_team: man_city,
    matchweek: 37
  },
  {
    match_datetime: DateTime.civil(2020,5,15,10,0,0,0),
    home_team: burnley,
    home_goals: nil,
    away_goals: nil,
    away_team: liverpool,
    matchweek: 37
  },
  {
    match_datetime: DateTime.civil(2020,5,15,10,0,0,0),
    home_team: chelsea,
    home_goals: nil,
    away_goals: nil,
    away_team: leicester,
    matchweek: 37
  },
  {
    match_datetime: DateTime.civil(2020,5,15,10,0,0,0),
    home_team: palace,
    home_goals: nil,
    away_goals: nil,
    away_team: arsenal,
    matchweek: 37
  },
  {
    match_datetime: DateTime.civil(2020,5,15,10,0,0,0),
    home_team: everton,
    home_goals: nil,
    away_goals: nil,
    away_team: wolves,
    matchweek: 37
  },
  {
    match_datetime: DateTime.civil(2020,5,15,10,0,0,0),
    home_team: man_utd,
    home_goals: nil,
    away_goals: nil,
    away_team: fulham,
    matchweek: 37
  },
  {
    match_datetime: DateTime.civil(2020,5,15,10,0,0,0),
    home_team: newcastle,
    home_goals: nil,
    away_goals: nil,
    away_team: sheffield,
    matchweek: 37
  },
  {
    match_datetime: DateTime.civil(2020,5,15,10,0,0,0),
    home_team: southampton,
    home_goals: nil,
    away_goals: nil,
    away_team: leeds,
    matchweek: 37
  },
  {
    match_datetime: DateTime.civil(2020,5,15,10,0,0,0),
    home_team: spurs,
    home_goals: nil,
    away_goals: nil,
    away_team: villa,
    matchweek: 37
  },
  {
    match_datetime: DateTime.civil(2020,5,15,10,0,0,0),
    home_team: west_brom,
    home_goals: nil,
    away_goals: nil,
    away_team: west_ham,
    matchweek: 37
  },
  {
    match_datetime: DateTime.civil(2020,5,23,11,0,0,0),
    home_team: arsenal,
    home_goals: nil,
    away_goals: nil,
    away_team: brighton,
    matchweek: 38
  },
  {
    match_datetime: DateTime.civil(2020,5,23,11,0,0,0),
    home_team: villa,
    home_goals: nil,
    away_goals: nil,
    away_team: chelsea,
    matchweek: 38
  },
  {
    match_datetime: DateTime.civil(2020,5,23,11,0,0,0),
    home_team: fulham,
    home_goals: nil,
    away_goals: nil,
    away_team: newcastle,
    matchweek: 38
  },
  {
    match_datetime: DateTime.civil(2020,5,23,11,0,0,0),
    home_team: leeds,
    home_goals: nil,
    away_goals: nil,
    away_team: west_brom,
    matchweek: 38
  },
  {
    match_datetime: DateTime.civil(2020,5,23,11,0,0,0),
    home_team: leicester,
    home_goals: nil,
    away_goals: nil,
    away_team: spurs,
    matchweek: 38
  },
  {
    match_datetime: DateTime.civil(2020,5,23,11,0,0,0),
    home_team: liverpool,
    home_goals: nil,
    away_goals: nil,
    away_team: palace,
    matchweek: 38
  },
  {
    match_datetime: DateTime.civil(2020,5,23,11,0,0,0),
    home_team: man_city,
    home_goals: nil,
    away_goals: nil,
    away_team: everton,
    matchweek: 38
  },
  {
    match_datetime: DateTime.civil(2020,5,23,11,0,0,0),
    home_team: sheffield,
    home_goals: nil,
    away_goals: nil,
    away_team: burnley,
    matchweek: 38
  },
  {
    match_datetime: DateTime.civil(2020,5,23,11,0,0,0),
    home_team: west_ham,
    home_goals: nil,
    away_goals: nil,
    away_team: southampton,
    matchweek: 38
  },
  {
    match_datetime: DateTime.civil(2020,5,23,11,0,0,0),
    home_team: wolves,
    home_goals: nil,
    away_goals: nil,
    away_team: man_utd,
    matchweek: 38
  }
]

MATCH_DATA.each do |value|
  Match.create!(value)
end

pick1 = Pick.create!(user: admin, league: league, team: spurs, match: match1)
