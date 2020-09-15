# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

League.destroy_all
User.destroy_all
Match.destroy_all
Team.destroy_all
Pick.destroy_all

admin = User.create!(username: 'admin', email: 'admin@email.com', password: '123456')

league = League.create!(name: 'test', open_ind: true, manager: admin)

tottenham = Team.create!(name: 'Tottenham Hotspur')
arsenal = Team.create!(name: 'Arsenal Gunners')

match1 = Match.create!(home_team: tottenham, away_team: arsenal, home_goals: 54, away_goals: 0, result: 'home')

pick1 = Pick.create!(user: admin, league: league, team: tottenham, match: match1)
