# DB操作
### クライアントからpostgreSQL(コンテナ)のデータを復元してコンテナを起動
```console
# 初回実行はコンテナが起動中のかもしれないので失敗する可能性あり。その場合はもう一度実行。
$ sh ./start.sh
```

### クライアントからpostgreSQL(コンテナ)のデータをdumpする
```console
$ sh ./dump_from_client.sh
```