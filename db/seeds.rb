require "csv"

# battings_csv = CSV.readlines("db/battings.csv")

# battings_csv.shift

# battings_csv.each do |row|

#   Batting.create(
#     year: row[1],
#     team_name: row[2],
#     bat_name: row[3],
#     age: row[4],
#     games: row[5],
#     plate_appe: row[6],
#     at_bats: row[7],
#     runs: row[8],
#     hits: row[9],
#     doubles: row[10],
#     triples: row[11],
#     homeruns: row[12],
#     runs_batted_in: row[13],
#     stolen_bases: row[14],
#     caught_steal: row[15],
#     walks: row[16],
#     strikeouts: row[17],
#     batting_avg: row[18],
#     onbase_perc: row[19],
#     slugging_perc: row[20],
#     onbase_plus_slugging: row[21],
#     total_bases: row[22],
#     grounded_double_plays: row[23],
#     hit_by_pitch: row[24],
#     sacrifice_hits: row[25],
#     sacrifice_flies: row[26],
#     intentional_bb: row[27],
#     batter_id: row[31]
#     )
# end

pitchings_csv = CSV.readlines("db/pitchings.csv")

pitchings_csv.shift

pitchings_csv.each do |row|

  Pitching.create(
    year: row[1],
    team_name: row[2],
    pit_name: row[3],
    age: row[4],
    wins: row[5],
    losses: row[6],
    win_loss_perc: row[7],
    earned_run_avg: row[8],
    games: row[9],
    games_started: row[10],
    games_finished: row[11],
    complete_game: row[12],
    shutouts: row[13],
    saves: row[14],
    innings_pitched: row[15],
    hits: row[16],
    runs: row[17],
    earned_runs: row[18],
    homeruns: row[19],
    walks: row[20],
    intentional_bb: row[21],
    strikeouts: row[22],
    hit_by_pitch: row[23],
    balks: row[24],
    wild_pitches: row[25],
    batters_faced: row[26],
    whip: row[27],
    hits_per_nine: row[28],
    homeruns_per_nine: row[29],
    walks_per_nine: row[30],
    strikeouts_per_nine: row[31],
    strikeouts_per_walks: row[32],
    pitcher_id: row[36]
    )
end