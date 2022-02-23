# simplehelpers

simple helper scripts

bash functions/scripts:

* ls_mv_last.sh: list (ll) last 10 files and move (mvll) last <n> modified files to another dir
* cdgr.sh: change directory (cd) to git (repository) root 
* list_modified_files_of_packages.sh: lists the modified files installed with (deb, apt) packages
* strip_whitespaces.sh: removes some whitespaces such as the line feed and space characters in stdin
* todec_tohex.sh: convert the argument to/from hex to from/to decimal
* lx-login.sh: login to lxc container as ubuntu, with bash completion

i3 config:

* config.i3: some lines from my config

vim config:
* vimrc: some lines from my config

lxd config:
 * lxd.default.profile: default profile supporting X apps, for idmap to work `echo "root:$UID:1" | sudo tee -a /etc/subuid /etc/subgid`

other:
 * petalinux_env_packages_ubuntu.sh: packages to install for a Peta Linux environment.
 * gnss-sdr-download-agnss.sh: download GPS AGNSS data to be used with GNSS-SDR, requires cddis.nasa.gov account
