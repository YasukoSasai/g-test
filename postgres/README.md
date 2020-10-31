# DB操作
### postgreSQL(コンテナ)のデータを復元してコンテナを起動
```console
# 初回実行はコンテナが起動中の可能性があるので失敗する恐れあり。その場合はもう一度実行してください。
$ sh ./start.sh
```

### postgreSQL(コンテナ)のデータをローカルにdumpする
```console
$ sh ./dump_from_client.sh
```