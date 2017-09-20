#!/usr/bin/env bash

suits=(♠ ♥ ♦ ♣)

export PS1="\[\e[34m\][\[\e[m\]\w\[\e[34m\]]\[\e[m\] \[\e[96m\]\${suits[\$RANDOM%4]}\[\e[m\] "
