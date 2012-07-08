path = File.expand_path "../../", __FILE__

require 'url2png'
require 'net/http'

Url2png::Config.public_key = 'P4E548D4E3A596'
Url2png::Config.shared_secret = File.read("#{ENV["HOME"]}/.url2png").strip

include Url2png::Helpers::Common

url = "http://stylequiz.net/ladder"
img = site_image_url url, :size => '1200x800'

uri = URI.parse img
Net::HTTP.get_response uri

puts img

# es: http://api.url2png.com/v3/P4E548D4E3A596/ad2faf1f01fd9a433c771a6d87ac0e26/1200x800/http://stylequiz.net