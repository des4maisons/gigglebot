# Description:
#   Greets a user when they enter the channel with a personalized nickname.
#
# Author:
#   ysim

greetings = [ "hi", "hey", "hello", "o hai" ]

users =
  des4maisons: [ "stompy", "moogooroot", "moog", "margatron", "bossy", \
    "margaroo" ]
  GloomyBear: [ "danni", "oy" ]
  yiqing: [ "giggles", "yi qing" ]
  sarahferguson: [ "sarah" ]
  nox: [ "nox" ]

module.exports = (robot) ->
  robot.enter (response) ->
    entered_user = response.message.user.name
    greeting = response.random greetings
    if entered_user of users
      nickname = response.random users[entered_user]
      response.send "#{greeting} #{nickname}"
    else if entered_user == "gigglebot"
      response.send "#{greeting} everyone"

