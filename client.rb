require "rubygems"
require "json"
require "net/http"

API_HOST = 'diacritic.braincandy.com.ar'
API_PORT = 80
API_RESOURCE = '/api/char/_'

def get_char(c)
  http = Net::HTTP.new(API_HOST, API_PORT)
  request = Net::HTTP::Get.new(API_RESOURCE.tr('_', c))
  response = http.request(request)

  if response.code == "200"
    result = JSON.parse(response.body)
    chars = result['output'].map { |char| char }
    puts chars * " "
  end
end


if ARGV.length > 0
  get_char ARGV[0]
else
  puts "Usage: "+ __FILE__ + " [char]"
end
