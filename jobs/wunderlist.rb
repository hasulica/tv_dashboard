require 'wunderlist'

wl = Wunderlist::API.new(access_token: 'aef0f1dd1e0da89cc2cc7cc7836c92ee7c3e9a0cb058ee2d030c8b94aba8',
                         client_id: 'ea56d7159fc0333cc2aa')

list = wl.list('inbox')

SCHEDULER.every '10m', first_in: 0 do |_job|
	begin
		if list.tasks
			list = list.tasks.map{ |item|
				{ value: item.title }
			}
			send_event('wunderlist', items: list)
		end
	end
end
