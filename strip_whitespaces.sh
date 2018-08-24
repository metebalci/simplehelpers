# removes the line feed ("\n") and space (" ") charactes in stdin
# useful especially for hex data such as keys, certificates
# obviously it does not remove all the whitespaces but it can easily be improved

function strip-whitespaces {
  tr -d "\n" | tr -d " "
}
