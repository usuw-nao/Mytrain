## プロジェクト概要
***
- JSP/Servlet/JDBC/JavaScript使用
- 定期所持者の個人情報記録、イベント参加予定、ポイントを記録するアプリ
- 新幹線予約システム（予定）
***
## 画面遷移図
***
![画面遷移図](/C:/Users/zd2L03/Desktop/gamrnzu.png)

***
## ページ構成 
***

|画面ID  |タイトル| URL         |コントローラー                         |ビュー                   |概要                     |備考|
|--:     |--:    |--:          |    --:                             |--:                     |--:                      | --:|
|Top     |Top    |/TrainApp/Top.jsp|                                 |top.jsp               |TOP画面| |
|大人ページ| | | | | |
|T01-1 |ログイン|/AdultLogin  |AdultLogin                           |adult/adultLogin.jsp    |  大人用ログイン画面    |   |
|T01-2 |ログアウト|/AdultLogout| AdultLogout                        |adult/adultLogout.jsp     |大人用ログアウト画 
|T01-3 | マイページ|/AdultMypage|AdultMypageServlet                 |adult/adultMypage.jsp     |大人用マイページ画面
|T01-4 | 個人情報|/AdultInf|AdultInfServlet                         |adult/adultInf.jsp        |大人用個人情報確認画面
|T01-5 | 個人情報編集|/AdultUpdate|AdultUpdateServlet               |adult/adultUpdate.jsp     |大人用個人情報一部変更画面
|T01-6 | 個人情報編集完了画面|/AdultUpdateDone|AdultUpdateDoneServlet|adult/adultUpdateDaone.jsp|大人用変更完了画面
|T01-7 | 定期範囲・期間|/AdultRange|AdultRangeServlet                |adult/adultRange.jsp      |大人用定期範囲表示画面
|イベント| | | | | | |
|I01-1|イベントTop|/IventTop|IventTopServlet|iventTop.jsp|イベントTop|イベント感想つぶやき|
|I01-2|イベント詳細|/IventDo|IventDoServlet|iventDo.jsp|イベントの詳細| |
|I01-3|イベント参加|/IventDone|IventDoneServlet|iventDone.jsp|参加受理画面| |
|I01-4|参加予定|/IventMy|IventMyServlet|iventMy.jsp|参加予定表示| |
|スケジュール| | | | | | | 
|SC01-1|スケジュール|/ScheduleTop|/ScheduleTopServlet|/scheduleTop.jsp|スケジュールTop| |
|フォトギャラリー| | | | | |
|F01-1|/PhotoTop|/PhotoTopServlet|/PhotoTop.jsp|フォトTopページ | |
|お問い合わせ| | | | | |
|inf01-1|/Inf|/InfServlet|/Inf.jsp|お問い合わせフォーム| |
|駅長ブログ| | | | | |
|b01-1|/BlogTop|/BlogTopServlet|/blogTop.jsp|ブログTop| |

***

## 苦労したところ
***
- イベント参加した場合の表示方法
- データベースとの連携

## これから実装予定のもの
- 新幹線予約システム