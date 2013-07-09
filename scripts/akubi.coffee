# Description:
#   Kondos' Akubi
#
# Commands:
#   あくび、元気？ - 元気かどうか返事する
module.exports = (robot) ->
  robot.hear /^console(.*)/i, (msg) ->
    console.log msg.match[0]

  robot.hear /^あくび、(.*)/i, (msg) ->
    comm = msg.match[1]
    if (/元気/i).test(comm)
      msg.send "はおぉーん"
    else
      msg.send "分からない命令だわん: #{comm}"
