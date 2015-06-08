FUSOR_GIT_DIR=/home/vagrant/fusor
FUSOR_APP_DIR=/opt/rh/ruby193/root/usr/share/gems/gems/fusor_server-0.0.1

sudo rsync -avz $FUSOR_GIT_DIR/server/app/lib/actions/fusor/deploy.rb $FUSOR_APP_DIR/app/lib/actions/fusor/deploy.rb
sudo rsync -avz $FUSOR_GIT_DIR/server/app/lib/actions/fusor/deployment/deploy_cloud_forms.rb $FUSOR_APP_DIR/app/lib/actions/fusor/deployment/deploy_cloud_forms.rb

mkdir -p $FUSOR_APP_DIR/app/lib/utils/cloud_forms
sudo rsync -avz $FUSOR_GIT_DIR/server/app/lib/utils/cloud_forms/provider.rb $FUSOR_APP_DIR/app/lib/utils/cloud_forms/provider.rb

mkdir -p $FUSOR_APP_DIR/app/lib/utils/fusor/
sudo rsync -avz  $FUSOR_GIT_DIR/server/app/lib/utils/fusor/command_utils.rb $FUSOR_APP_DIR/app/lib/utils/fusor/command_utils.rb
sudo rsync -avz $FUSOR_GIT_DIR/server/app/lib/utils/fusor/ssh_connection.rb $FUSOR_APP_DIR/app/lib/utils/fusor/ssh_connection.rb
