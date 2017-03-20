# you can add multiple server to deploy
role :app, %w{ubuntu@45.32.105.54}
set :ssh_options, {
   keys: %w(~/.ssh/id_rsa.pub),
   forward_agent: false,
   auth_methods: %w(publickey)
 }
set :branch, 'master'
set :stage, :production
set :deploy_to, '/home/ubuntu/health_tracking'

# Use this line if you want to use config file from server (not from repository)
# make sure you setup these files in `/home/ubuntu/{{application_name}}/shared/config`
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')