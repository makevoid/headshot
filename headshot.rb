path = File.expand_path "../", __FILE__

require 'url2png'

Url2png::Config.public_key = 'P4E548D4E3A596'
Url2png::Config.shared_secret = File.read("#{path}/config/url2png_secret.txt").strip

include Url2png::Helpers::Common

url = "http://stylequiz.net"
img = site_image_url url, :size => '1200x800'
puts img

# es: http://api.url2png.com/v3/P4E548D4E3A596/ad2faf1f01fd9a433c771a6d87ac0e26/1200x800/http://stylequiz.net