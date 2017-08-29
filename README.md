# Rails Sample App

## 【初回】Railsプロジェクト作成
- Gemfileを準備
```
touch ruby/Gemfile
touch ruby/Gemfile.lock
```
- スケルトン作成
```
docker-compose run --rm web rails new . --force --database=mysql --skip-bundle
```
- Gemfileが上書きされたため、再ビルドでbundle installを実行
```
docker-compose build
```
- コンテナを起動
```
docker-compose up
```
- config/database.ymlを修正し、webコンテナからデータベースを作成
```
rails db:create
```
- ブラウザで確認
- webコンテナ内でテストの動作確認
```
rails test

```

## Docker Tips
- 起動
```
docker-compose up
```
- コンテナ内へアクセス
```
docker exec -it コンテナ名 bash
```
- プロセス確認
```
docker ps -a
```
