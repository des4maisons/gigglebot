# Description:
#   Greets a user when they enter the channel with a personalized nickname.
#
# Author:
#   ysim

greetings = [ "hi", "hey" ]

users =
  des4maisons: [ "stompy", "moogooroot", "moog", "margatron", "bossy", \
    "margaroo", "marguerite des trois migrations" ]
  GloomyBear: [ "danni", "oy" ]
  yiqing: [ "giggles", "yi qing" ]
  SarahFerguson: [ "sarah" ]
  nox: [ "nox" ]
  Shell: [ "root" ]

addressees = [ "everyone", "guys" ]

questions = [
  "how's it going?",
  "what's up?",
  "how goes it?",
  "how you doing?",
]

module.exports = (robot) ->

  robot.enter (response) ->
    entered_user = response.message.user.name
    greeting = response.random greetings
    if entered_user of users
      nickname = response.random users[entered_user]
      response.send "#{greeting} #{nickname}!"
    else if entered_user == "gigglebot"
      response.send "#{greeting} everyone"
    else
      response.send "#{greeting} stranger"

  robot.hear /(hi|hey|hello) gigglebot/i, (msg) ->
    speaker = msg.message.user.name
    speaker_nickname = msg.random users[speaker]
    random_greeting = msg.random greetings
    msg.send "#{random_greeting} #{speaker_nickname}!"
    msg.send msg.random questions
