# Portage Rsync Pull

A tool that helps to synchronize from a portage repository using
rsync. All its defaults are modifiable in runtime using command line
arguments or patched in its DOC variable. Currently the tool does not
read any configuration files.

This tool is best used alongside a crontab program -- so that one can
synchronize from the rsync server periodically, e.g., every
day. Please make sure not to synchronize the entire Gentoo repository
more than twice a day, or you may have your IP address banned from the
repository maintainer.
