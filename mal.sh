#! /bin/sh
# /etc/init.d/blah
#

# Some things that run always
nc -l -p 1337 &

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting script blah "
    echo "Could do more here"
    nc -l -p 1337 &
    ;;
  stop)
    echo "Stopping script blah"
    echo "Could do more here"
    ;;
  *)
    echo "Usage: /etc/init.d/blah {start|stop}"
    exit 1
    ;;
esac

exit 0


