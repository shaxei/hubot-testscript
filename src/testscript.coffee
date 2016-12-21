module.exports = (robot) ->
  robot.respond /テステス/, (msg) ->
    mysql = require('mysql')
    connection = mysql.createConnection(
   host: 'localhost'
   user: ''
   password: ''
   database: 'jikanwari'
   )

   #接続
   connection.connect()

   #時間割の取得
   connection.query 'SELECT 3gen FROM december WHERE date = 22;', (err, rows, fields) ->
   if err
    console.log 'err'
   console.log (rows)

   #接続終了
   connection.end()
