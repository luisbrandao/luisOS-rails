#!/bin/bash
gpg2 --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
curl -sSL https://get.rvm.io | bash

source /etc/profile.d/rvm.sh
rvm requirements
rvm install 2.5.3
gem install bundler

cd /root/MecanicaDeps
bundle install

cd /root/HandsDeps
bundle install
