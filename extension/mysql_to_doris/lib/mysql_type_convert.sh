#!/bin/bash
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
path=$1
sed -i 's/AUTO_INCREMENT//g' $path
sed -i 's/CHARACTER SET utf8 COLLATE utf8_bin//g' $path
sed -i 's/CHARACTER SET utf8mb3 COLLATE utf8mb3_bin//g' $path
sed -i 's/CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci//g' $path
sed -i 's/CHARACTER SET utf8mb4 COLLATE utf8mb4_bin//g' $path
sed -i 's/CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci//g'  $path
sed -i 's/CHARACTER SET utf8mb4 COLLATE utf8_general_ci//g' $path
sed -i 's/CHARACTER SET utf8 COLLATE utf8_general_ci//g' $path
sed -i 's/DEFAULT CURRENT_TIMESTAMP\(()\)\? ON UPDATE CURRENT_TIMESTAMP\(()\)\?//ig' $path
sed -i 's/DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP\(()\)\?//ig' $path
sed -i 's/CHARACTER SET utf8mb4 COLLATE utf8mb4_bin//g' $path
sed -i "s/DEFAULT '0000-00-00 00:00:00'/DEFAULT '2000-01-01 00:00:00'/g" $path
sed -i "s/DEFAULT '0000-00-00 00:00:00.000'/DEFAULT '2000-01-01 00:00:00.000'/g" $path
sed -i "s/DEFAULT '0000-00-00 00:00:00.000000'/DEFAULT '2000-01-01 00:00:00.000000'/g" $path
sed -i 's/DEFAULT CURRENT_TIMESTAMP\(()\)\?//ig' $path
sed -i 's/DEFAULT b/DEFAULT/g' $path
sed -i "s/DEFAULT \(\(\-\)\?[0-9]\+\(\.[0-9]\+\)\?\)/DEFAULT '\1'/g" $path
sed -i 's/CHARACTER SET utf8mb4//g' $path
sed -i 's/CHARACTER SET utf8//g' $path
sed -i 's/COLLATE utf8mb4_general_ci//g' $path
sed -i 's/COLLATE utf8_general_ci//g'  $path
sed -i 's/COLLATE utf8mb4_unicode_ci//g' $path
sed -i 's/COLLATE utf8_unicode_ci//g'  $path
sed -i 's/COLLATE utf8_bin//g'  $path
sed -i 's/\<tinytext\>/varchar(65533)/g' $path
sed -i 's/text([^)]*)/varchar(65533)/g' $path
sed -i 's/\<text\>/varchar(65533)/g' $path
sed -i 's/\<mediumtext\>/varchar(65533)/g' $path
sed -i 's/\<longtext\>/varchar(65533)/g' $path
sed -i 's/\<tinyblob\>/varchar(65533)/g' $path
sed -i 's/blob([^)]*)/varchar(65533)/g' $path
sed -i 's/\<blob\>/varchar(65533)/g' $path
sed -i 's/\<mediumblob\>/varchar(65533)/g' $path
sed -i 's/\<longblob\>/varchar(65533)/g' $path
sed -i 's/\<tinystring\>/varchar(65533)/g' $path
sed -i 's/\<mediumstring\>/varchar(65533)/g' $path
sed -i 's/\<longstring\>/varchar(65533)/g' $path
sed -i 's/\<timestamp\>/datetime/g' $path
sed -i 's/\<unsigned\>//g' $path
sed -i 's/\<zerofill\>//g' $path
sed -i 's/\<json\>/varchar(65533)/g' $path
sed -i 's/enum([^)]*)/varchar(65533)/g' $path
sed -i 's/set([^)]*)/varchar(65533)/g' $path
sed -i 's/\<set\>/varchar(65533)/g' $path
sed -i 's/bit([^)]*)/varchar(65533)/g' $path
sed -i 's/bit([^)]*)/varchar(65533)/g' $path
sed -i 's/\<bit\>/varchar(65533)/g' $path
sed -i 's/varbinary([^)]*)/varchar(65533)/g' $path
sed -i 's/binary([^)]*)/varchar(65533)/g' $path
sed -i 's/string([^)]*)/varchar(65533)/g' $path
sed -i 's/\<string\>/varchar(65533)/g' $path
sed -i 's/\<binary\>/varchar(65533)/g' $path
sed -i 's/\<varbinary\>/varchar(65533)/g' $path
sed -i 's/\<mediumint/int/g' $path
sed -i 's/float([^)]*)/float/g' $path
sed -i 's/double([^)]*)/double/g' $path
sed -i 's/\<time([^)]*)/varchar(64)/g' $path
sed -i 's/\<time\>/varchar(64)/g' $path
sed -i 's/year([^)]*)/varchar(64)/g' $path
sed -i 's/\<year\>/varchar(64)/g' $path