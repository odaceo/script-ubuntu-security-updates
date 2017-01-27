#!/bin/bash

# Copyright (C) 2016 Odaceo. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Update your local package index
sudo apt-get update

# Install required packages
sudo apt-get -y install unattended-upgrades

# Send mail to root
sudo sed -i 's|^[/]*Unattended-Upgrade::Mail .*|Unattended-Upgrade::Mail "root";|' \
            /etc/apt/apt.conf.d/50unattended-upgrades

# Do automatic removal of new unused dependencies after the upgrade
sudo sed -i 's|^[/]*Unattended-Upgrade::Remove-Unused-Dependencies .*|Unattended-Upgrade::Remove-Unused-Dependencies "true";|' \
            /etc/apt/apt.conf.d/50unattended-upgrades
