#!/bin/bash
source "$HOME/.rvm/scripts/rvm"

# # Load RVM into a shell session *as a function*
# if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then

#     # First try to load from a user install
#     source "$HOME/.rvm/scripts/rvm"

# elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then

#     # Then try to load from a root install
#     source "/usr/local/rvm/scripts/rvm"

# else

#     printf "ERROR: An RVM installation was not found.\n"

# fi

cd /var/www/redmine
rvm use ree-1.8.7-2011.12@redmine
passenger start -a 127.0.0.1 -p 3000 -d -e production