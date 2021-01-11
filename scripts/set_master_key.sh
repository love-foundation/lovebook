# scripts/potential_asset_precompile.sh
#!/bin/bash

if [ $# -eq 0 ] || [ $1 != "" ] ; then
  echo 'setting master key'
  echo $1 > ./config/credentials/production.key
else
  echo "production.key is already there"
fi
