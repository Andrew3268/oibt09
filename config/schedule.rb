set :output, 'log/crontab.log'

every 1.day , roles: %i(app) do
  rake '-s sitemap:refresh'
end
