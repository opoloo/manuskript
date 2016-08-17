server 'serverurl', user: 'username', roles: %w{app db web}

set :deploy_to, '/var/www/project-production'
set :branch, 'master'

set :ssh_options, {
  keys: %w(~/.ssh/id_rsa),
  forward_agent: true,
  auth_methods: %w(publickey)
}
