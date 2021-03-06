#!/bin/bash
# Copyright 2016 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

which yum>/dev/null
if [[ $? != 0 ]]; then
  sudo apt-get install -y unzip
else
  sudo yum install -y unzip
fi

# Install protoc
cd /tmp
curl -sSL https://github.com/google/protobuf/releases/download/v3.0.0/protoc-3.0.0-linux-x86_64.zip -o protoc-3.0.0-linux-x86_64.zip
unzip protoc-3.0.0-linux-x86_64.zip
sudo mv bin/protoc /usr/bin/protoc

echo "protoc installed success."
