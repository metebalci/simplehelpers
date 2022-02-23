YYYY=`date +%Y -u -d '90 minutes ago'`
DDD=`date +%j -u -d '90 minutes ago'`
HH=`date +%H -u -d '90 minutes ago'`

BASEURL="https://cddis.nasa.gov/archive/gnss/data/hourly/${YYYY}/${DDD}/${HH}"

# download GPS AGNSS data

GPSFILENAME="ZIM300CHE_R_${YYYY}${DDD}${HH}00_01H_GN.rnx.gz"
GPSFULLURL="$BASEURL/$GPSFILENAME"

curl -s -c .curl.cookies --netrc --netrc-file .curl.netrc -L -O ${GPSFULLURL}

rinex2assist ${GPSFILENAME}
rm -f ${GPSFILENAME}
