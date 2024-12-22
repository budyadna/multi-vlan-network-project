# dec/21/2024 07:01:22 by RouterOS 6.49.17
# software id = 
#
#
#
/interface ethernet
set [ find default-name=ether4 ] name=ether1
set [ find default-name=ether1 ] name=ether2
set [ find default-name=ether2 ] name=ether3
set [ find default-name=ether3 ] name=ether4
/interface vlan
add interface=ether2 name=VLAN10 vlan-id=10
add interface=ether2 name=VLAN20 vlan-id=20
add interface=ether2 name=VLAN30 vlan-id=30
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip pool
add name=dhcp_pool0 ranges=192.168.10.2/31
add name=dhcp_pool1 ranges=192.168.20.2/31
add name=dhcp_pool2 ranges=192.168.30.2/31
/ip dhcp-server
add address-pool=dhcp_pool0 disabled=no interface=VLAN10 name=dhcp1
add address-pool=dhcp_pool1 disabled=no interface=VLAN20 name=dhcp2
add address-pool=dhcp_pool2 disabled=no interface=VLAN30 name=dhcp3
/ip address
add address=192.168.10.1/24 interface=VLAN10 network=192.168.10.0
add address=192.168.20.1/24 interface=VLAN20 network=192.168.20.0
add address=192.168.30.1/24 interface=VLAN30 network=192.168.30.0
/ip dhcp-client
add disabled=no interface=ether1
/ip dhcp-server network
add address=192.168.10.0/24 gateway=192.168.10.1
add address=192.168.20.0/24 gateway=192.168.20.1
add address=192.168.30.0/24 gateway=192.168.30.1
/ip dns
set allow-remote-requests=yes
/ip firewall nat
add action=masquerade chain=srcnat out-interface=ether1
/system identity
set name=Router_Mikrotik
