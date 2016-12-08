server 'localhost',
	roles: %w{web app},
	user: 'root',
	port: 2222


set :env, 'production'
set :deploy_to, "/var/www/app"
