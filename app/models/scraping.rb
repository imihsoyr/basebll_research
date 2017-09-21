class Scraping
  def self.history_urls
    links = []
    agent = Mechanize.new
    agent.user_agent_alias = "Mac Safari"
    current_page = agent.get("https://www.baseball-reference.com/register/league.cgi?code=JPCL&class=Fgn")
    elements = current_page.search('td.left a')
    elements.each do |ele|
      links << ele.get_attribute('href')
    # ここに処理を書く
  end
  links.each do |link|
    get_stats('https://www.baseball-reference.com' + link)
  end
end

def self.get_stats(link)
  agent = Mechanize.new
  page = agent.get(link)
player = page.at('data-stat.player').inner_text
puts 'player'

    # ここに処理を書く
  end
end