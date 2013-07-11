# Description:
#   Kondos' Akubi
#
# Commands:
#   元気？ - 元気かどうか返事する
# util = require('util')

chooseReply = (main, sub, threshold=0.9) ->
  if(Math.random() < threshold) then main else sub

module.exports = (robot) ->
  robot.respond /元気/i, (msg) ->
    msg.send(chooseReply("はおぉーん", "はぅわん"))

  robot.respond /おはよう/i, (msg) ->
    msg.send(chooseReply("おはようわん", "zzz..."))

  robot.respond /おやすみ/i, (msg) ->
    msg.send(chooseReply("おやすみなさいわん", "https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-prn1/45322_490396367694695_1878585929_n.jpg"))

  robot.respond /仕事/i (msg) ->
    msg.send(chooseReply("仕事するわん", "いいのよ", 0.7))

  robot.catchAll (msg) ->
    matched = /あくび(、)?(.*)/.exec msg.message.text
    if matched and matched[2]
      msg.send "分からない命令だわん: #{matched[2]}"
