include_recipe "lvm"

node['lvm'].each do |vgname, vg_details|
  vg_details['partitions'].each do |volume|
    lvm_logical_volume volume['name'] do
      group vgname
      size volume['size']
      filesystem volume['fs']
      mount_point :location => volume['mount_point'],
                  :options => volume['mount_options'],
                  :dump => volume['dump'],
                  :pass => volume['pass']
      contiguous volume['contiguous']
      stripes volume['stripes']
      stripe_size volume['stripesize']
      mirrors volume['mirrors']
      readahead volume['readahead']
    end
  end
end
