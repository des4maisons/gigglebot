#!/bin/bash

HUBOT_IRC_SERVER=irc.foonetic.net \
HUBOT_IRC_ROOMS="##superhappyfunpeople" \
HUBOT_IRC_NICK="testbot" \
bin/hubot -a irc --name testbot

