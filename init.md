pkgin -fy update
pkgin -fy upgrade
pkgin -fy install ruby21-puppet-3.8.4 build-essential openssl gmake gcc47 git erlang
echo "192.168.1.210	puppet" >> /etc/hosts
sed -i .bak -e "s/pkgsrc-pbulk-2014q4-2/$(zonename)/" \
            -e "s/# certname =.*/certname = $(zonename).local/" \
            -e "s/manifestdir/# manifestdir/" \
            -e "s/manifest/# manifest/" \
            -e "s/masterlog/# masterlog/" \
            -e "s/ modulepath/ # modulepath/" \
            -e "s/templatedir/# templatedir/" \
            /opt/local/etc/puppet/puppet.conf
mkdir /root/.puppet
