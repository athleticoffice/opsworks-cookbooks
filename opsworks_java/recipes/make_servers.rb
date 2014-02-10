  execute 'create alpha tomcat server' do
    action :run
    command "tomcat7-instance-create -p 8081 -c 8006 /opt/athleticoffice/servers/alpha"
  end
  
    execute 'create omega tomcat server' do
    action :run
    command "tomcat7-instance-create -p 8082 -c 8007 /opt/athleticoffice/servers/omega"
  end


  bin_dir = '/usr/share/tomcat7/bin'
  server_bin_dir = '/opt/athleticoffice/servers/alpha/bin'


  link server_bin_dir do
    to bin_dir
    action :create
  end
  
  
    execute 'download solr' do
    action :run
    command "wget http://www.springblox.com/wp-content/uploads/solr-4.6.1_01.tgz"
  end
