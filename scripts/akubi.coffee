# Description:
#   Kondos' Akubi
#
# Commands:
#   元気？ - 元気かどうか返事する
# util = require('util')

chooseReply = (main, sub) ->
  if(Math.random() < 0.9) then main else sub

module.exports = (robot) ->
  robot.respond /元気/i, (msg) ->
    msg.send(chooseReply("はおぉーん", "はぅわん"))

  robot.respond /おはよう/i, (msg) ->
    msg.send(chooseReply("おはようわん", "zzz..."))

  robot.respond /おやすみ/i, (msg) ->
    msg.send(chooseReply("おやすみなさいわん", "https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-prn1/45322_490396367694695_1878585929_n.jpg"))

  robot.catchAll (msg) ->
    matched = /あくび(、)?(.*)/.exec msg.message.text
    if matched and matched[2]
      msg.send "分からない命令だわん: #{matched[2]}"
