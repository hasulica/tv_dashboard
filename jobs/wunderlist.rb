require 'wunderlist'

wl = Wunderlist::API.new({
  :access_token => 'aef0f1dd1e0da89cc2cc7cc7836c92ee7c3e9a0cb058ee2d030c8b94aba8',
  :client_id => 'ea56d7159fc0333cc2aa'
})

puts wl

list = wl.list('inbox')

puts list.tasks[0].title

# SCHEDULER.every '10m', :first_in => do |job|
# 	begin
# 		list = wl.list('Inbox')
#
#     if list
#       list = list.map do |item|
#         { name: item.user.name, body: tweet.text, avatar: tweet.user.profile_image_url_https }
#       end
#       send_event('twitter_mentions', comments: tweets)
#     end
#   end
# end
