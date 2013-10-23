# Simple recipe to simulate a SAP kernel replacement process
directory "/sapmnt/PRD/exe/" do
  action :create
  owner "root"
  group "root"
  mode "0755"
  recursive true
end

directory "#{node['SAP']['kernel_path']}" do
  action :create
  owner "root"
  group "root"
  mode "0755"
  recursive true
end

remote_file "#{node['SAP']['kernel_path']}/kernel" do
  source "#{node['SAP']['url']}/kernel"
  action :create
  notifies :run, "bash[sap_restart]", :immediately
end


bash "sap_restart" do
  action :nothing
  code <<-EOH
    /sapmnt/PRD/exe/stopsap
    sleep 60
    /sapmnt/PRD/exe/startsap
  EOH
end
