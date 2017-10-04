class Scraping
  def self.get_battings

    agent = Mechanize.new
    agent.user_agent_alias = "Mac Safari"

    # 取得するページごとに書き換える
    page = agent.get( 'https://www.baseball-reference.com/register/team.cgi?id=fd1d00b1' )
    year = "2016"
    team_name = "Yokohama Bay Stars"

    page.search( '#div_team_batting table tbody tr' ).each do |tr|

      bat_name = tr.at("td a").inner_text  #打者名
      player_id = tr.at("td a").get_attribute("href") #打者ID
      age = tr.at("td.right[data-stat*='age']").inner_text  #年齢
      games = tr.at("td.right[data-stat*='G']").inner_text  #試合
      plate_appe = tr.at("td.right[data-stat*='PA']").inner_text  #打席
      at_bats = tr.at("td.right[data-stat*='AB']").inner_text  #打数
      runs = tr.at("td.right[data-stat*='R']").inner_text  #得点
      hits = tr.at("td.right[data-stat*='H']").inner_text  #安打
      doubles = tr.at("td.right[data-stat*='2B']").inner_text  #2塁打
      triples = tr.at("td.right[data-stat*='3B']").inner_text  #3塁打
      homeruns = tr.at("td.right[data-stat*='HR']").inner_text  #本塁打
      runs_batted_in = tr.at("td.right[data-stat*='RBI']").inner_text  #打点
      stolen_bases = tr.at("td.right[data-stat*='SB']").inner_text  #盗塁
      caught_steal = tr.at("td.right[data-stat*='CS']").inner_text  #盗塁刺
      walks = tr.at("td.right[data-stat*='BB']").inner_text  #四球
      strikeouts = tr.at("td.right[data-stat*='SO']").inner_text  #三振
      batting_avg = tr.at("td.right[data-stat*='batting_avg']").inner_text  #打率
      onbase_perc = tr.at("td.right[data-stat*='onbase_perc']").inner_text  #出塁率
      slugging_perc = tr.at("td.right[data-stat*='slugging_perc']").inner_text  #長打率
      onbase_plus_slugging = tr.at("td.right[data-stat*='onbase_plus_slugging']").inner_text  #出塁プラス長打
      total_bases = tr.at("td.right[data-stat*='TB']").inner_text  #塁打
      grounded_double_plays = tr.at("td.right[data-stat*='GIDP']").inner_text  #併殺打
      hit_by_pitch = tr.at("td.right[data-stat*='HBP']").inner_text  #死球
      sacrifice_hits = tr.at("td.right[data-stat*='SH']").inner_text  #犠打
      sacrifice_flies = tr.at("td.right[data-stat*='SF']").inner_text  #犠飛
      intentional_bb = tr.at("td.right[data-stat*='IBB']").inner_text  #故意四球
      notes = tr.at("td.right[data-stat*='notes']").inner_text  #notes


  batting = Batting.where(bat_name: bat_name, year: year, team_name: team_name).first_or_initialize
    batting.year = year
    batting.team_name = team_name
    batting.bat_name = bat_name
    batting.age = age
    batting.games = games
    batting.plate_appe = plate_appe
    batting.at_bats = at_bats
    batting.runs = runs
    batting.hits = hits
    batting.doubles = doubles
    batting.triples = triples
    batting.homeruns = homeruns
    batting.runs_batted_in = runs_batted_in
    batting.stolen_bases = stolen_bases
    batting.caught_steal = caught_steal
    batting.walks = walks
    batting.strikeouts = strikeouts
    batting.batting_avg = batting_avg
    batting.onbase_perc = onbase_perc
    batting.slugging_perc = slugging_perc
    batting.onbase_plus_slugging = onbase_plus_slugging
    batting.total_bases = total_bases
    batting.grounded_double_plays = grounded_double_plays
    batting.hit_by_pitch = hit_by_pitch
    batting.sacrifice_hits = sacrifice_hits
    batting.sacrifice_flies = sacrifice_flies
    batting.intentional_bb = intentional_bb
    batting.notes = notes
    batting.player_id = player_id
  batting.save
    end
  end

end

