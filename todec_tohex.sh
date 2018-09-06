# converts hex to decimal
# tr converts lower case to upper case first, bc accepts upper case only

function todec {
  uc=`echo $1 | tr '[:lower:]' '[:upper:]'`
  echo "ibase=16; $uc" | bc
}

# converts decimal to hex
# tr converts upper case to lower case, just because I like to see hex in lower case

function tohex {
  uc=`echo "obase=16; $1" | bc`
  echo $uc | tr '[:upper:]' '[:lower:]'
}
