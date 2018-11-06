#!/bin/bash

str="ENU55sDvPHAwRCNU9CjJb1RAreoZgeCtkg2nduo1wkCvdTbXpAXNH","ENU5N9iBArp3GMtqW9iw7SB2QJ5oVYGg98Rw54gaFbEjP9j9ippda","ENU5kmzcEszZp6HtzNsfgTA3ZNpn7UHPHN7oPibRSbGVET8iZgCRw","ENU5tvrAtRLtNQKAaAz1UEdVVua3yBXALmBwZda9dUE4hYoQ3Ur7D","ENU61iNJg17vREebrUMrSdXUGYuwatVyzyDKXNpePoGoBt9gwDJP8","ENU6VLKv3TbhEHPoGoM7Mr8VpqfM8kYvUnMGLNXUThjUFe9HyW6oY","ENU6jK31jfMkFPj9PQyAaraWgPnpStwNNDWz57fQBA3EuqN4bXp5K","ENU6jNvRANkE7JmeLnK7yAUVVVErzhY4RrQc3QZJdA7QXT3381kXm","ENU6rAmtqGymrzTD9mtUGBbURH6jLtHmLKgEArtpcnvkj1Fc3VneD","ENU6vojok5dbwEG8DkAfWiqe91xqjrek3ZP7vtRToDXAB3yFakFsB","ENU71yFQJP1mhtmb55iZAzfp3giE4QVCcPjgfbobomQg9gebEwdTL","ENU79krmH4reXvhaGsrT1RAHQNdC2BKGh5RhFGxwqKr7PvujfSMAg","ENU7NRyrmYxouZEdrEDJ32Q5oVxh1tvcTEmZ2qfvPhVGZDY5EP8U5","ENU7oYJBFyLje3xpjJJTCSkyEDt1dqLS8fP8iKVJDAp99ZLnhHrVr","ENU8Enbo1fUYzmNcaXsGqXzD8V3HnfK1oh8JDf2EAWZMDcYFmBHhM","ENU8Hiz51WoBhbMU9iur4RbVhHxjqGaxqystaWGHjKbUK2oToNVNB","ENU8WZtGrMB6B96KDfr7V3dpWN2FKCHkuMLGbxPCPcVcmQ4W1Zuc3"
pks=${str//,/ }

found=""
for i in $pks;
do 
  echo -n "$i : "
  account=`/usr/local/enumivo/bin/enucli -u https://filter.qsx.io get accounts $i | jq ".account_names[0]"`
  echo $account
  if [ $account != "null" ];
  then
    found="$found|$account"
  fi
done

found=${found//\"/}
echo ""
echo "Invalid signatures:"
exec egrep -v \"$found\" signatures.txt
