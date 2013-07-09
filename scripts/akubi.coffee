# Description:
#   Kondos' Akubi
#
# Commands:
#   元気？ - 元気かどうか返事する
# util = require('util')

module.exports = (robot) ->
  robot.respond /元気/i, (msg) ->
    msg.send(if(Math.random() < 0.9) then "はおぉーん" else "はぅわん")

  robot.catchAll (msg) ->
    matched = /あくび(、)?(.*)/.exec msg.message.text
    if matched and matched[2]
      msg.send "分からない命令だわん: #{matched[2]}"
