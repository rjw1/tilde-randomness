#!/usr/bin/bash
# script to apply puppet 

cd /vagrant
bundle install
bundle exec librarian-puppet install
bundle exec puppet apply --modulepath modules/:vendor/modules --hiera_config hiera.yaml manifests/site.pp
