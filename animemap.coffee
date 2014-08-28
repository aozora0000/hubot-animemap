# Description:
#   アニメマップ用hubotスクリプト
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_ANIMEMAP_PREF - ANIMEMAPの都道府県
#
# Commands:
#   hubot animemap or animemap help - ヘルプ表示
#   hubot animemap [pref] ([today]) - 都道府県別別アニメ一覧表示
Week =
[
    '日曜日',
    '月曜日',
    '火曜日',
    '水曜日',
    '木曜日',
    '金曜日',
    '土曜日'
]

Date::getWeek = ->
  return Week[this.getDay()]


class Json
  _JSON = new Object
  constructor:(string) ->
    _JSON = JSON.parse(string)
  get:->
    return _JSON

class AnimeMap
  _json = new Object
  getPrefList:(string,isToday) ->
    JsonClass = new Json(string)
    obj = JsonClass.get()
    return parse.call @,obj.response.item,isToday

  parse = (obj,isToday)->
    if isToday
      return todayParse.call @,obj
    else
      return allParse.call @,obj

  todayParse = (obj) ->
    _return = new Array
    _titles = new Array
    today = new Date()
    week = today.getWeek()
    for prog in obj
      if prog.today == "1" and prog.state = "onair" and _titles.indexOf(prog.title) == -1
        _titles.push(prog.title)
        _return.push('【' + week + '】 [' + prog.time + '] ' + prog.station + '「' + prog.title + '」: 第' + prog.next)
    return _return

  allParse = (obj) ->
    _return = new Array
    _titles = new Array
    for prog in obj
      if prog.state = "onair" and _titles.indexOf(prog.title) == -1
        _titles.push(prog.title)
        _return.push('【' + prog.week + '】 [' + prog.time + '] ' + prog.station + '「' + prog.title + '」: 第' + prog.next)
    return _return

module.exports = (robot) ->
  robot.respond /animemap( (help))?$/i,(msg) ->
    msg.send "https://github.com/aozora0000/hubot-animemap"
    
  robot.respond /animemap from ([a-z]+)( (today))?/i, (msg) ->
    default_pref = process.env.HUBOT_ANIMEMAP_PREF or "tokyo"
    pref = if msg.match[1] then msg.match[1] else default_pref
    isToday = if msg.match[3] then true else false
    jsonfile = pref + '.json'
    msg.http("http://animemap.net/api/table/" + jsonfile)
      .get() (err, res, body) ->
        if err or res.statusCode != 200
          msg.send "エラーっぽい"
        else
          animemap = new AnimeMap
          obj = animemap.getPrefList(body,isToday)
          for line in obj
            msg.send line
