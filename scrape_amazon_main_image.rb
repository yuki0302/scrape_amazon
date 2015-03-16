#require 'openssl'require 'open-uri'
#require 'nokogiri'
url = 'http://www.amazon.co.jp/gp/product/B00NOGQQU0/'

charset = nil
html = open(url, {"User-Agent" => "Chrome"}) do |f|
  charset = f.charset
  f.read
end

#doc = Nokogiri::HTML.parse(html,nil,charset)

#puts doc.search("#main-image").class


img = html.index('"MAIN","landing":[')
start = img + 19
finish = html.index('"],"hiRes":"')
puts html[start...finish]