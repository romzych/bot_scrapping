require 'rubygems'
require 'nokogiri'
require 'open-uri'

def doc
    doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    return doc
end


def crypto_name
  name=[]
  doc.xpath('//tr/td[3]').each do |v|
  name.push(v.text)
  end
  return name
end
name = crypto_name

def crypto_price
  price = []
  doc.xpath('//td/a[@class="price"]').each do |v|
  price.push(v.text)
  end
return price
end
price = crypto_price

def hash_combine(name, price)
  i = 0
  array = []
  name.map.with_index do |key , values|
    combined_hash = {}
    combined_hash[key] = price[values]
    array[i] = combined_hash
    i = i + 1
  end
  return array
end
p hash_combine(name, price)