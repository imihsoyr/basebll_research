require "csv"

battings_csv = CSV.readlines("db/battings.csv")

battings_csv.shift

battings_csv.each do |row|

  Batting.create(
    year: row[1],
    team_name: row[2],
    bat_name: row[3],
    age: row[4],
    games: row[5],
    palte_appe: row[6],
    at_bats: row[7],
    runs: row[8],
    hits: row[9],
    doubles: row[10],
    triples: row[11],
    homeruns: row[12],
    runs_batted_in: row[13],
    stolen_bases: row[14],
    caught_steal: row[15],
    walks: row[16],
    strikeouts: row[17],
    batting_avg: row[18],
    onbase_perc: row[19],
    slugging_perc: row[20],
    onbase_plus_slugging: row[21],
    total_bases: row[22],
    grounded_double_plays: row[23],
    hit_by_pitch: row[24],
    sacrifice_hits: row[25],
    sacrifice_flies: row[26],
    intentional_bb:row[27]
    )
end