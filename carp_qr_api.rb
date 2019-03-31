git '/home/ec2-user/work/carp_qr_api' do
  repository 'git@github.com:sasata299/carp_qr_api.git'
end

execute 'bundle install' do
  cwd '/home/ec2-user/work/carp_qr_api'
  command 'bundle install --path vendor/bundle'
end

execute 'rake db:create' do
  cwd '/home/ec2-user/work/carp_qr_api'
  command 'bundle exec rake db:create RAILS_ENV=production'
end

execute 'rake db:migrate' do
  cwd '/home/ec2-user/work/carp_qr_api'
  command 'bundle exec rake db:migrate RAILS_ENV=production'
end
