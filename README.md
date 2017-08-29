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

## Rails Tips
- railsコマンドをヘルプで確認
```
rails --help
rails generate --help
rails generate controller --help
```
- generateコマンド例
```
rails generate controller Samples index show
rails generate model dao/sample title:string body:text
```
- 主要generateコマンドで生成されるファイル

|コマンド名|コントローラ|ビュー|モデル|マイグレーション|アセット|ルート|テスト|ヘルパー|
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
|scaffold   | ○ | ○ | ○ | ○ | ○ | ○ | ○ | ○ |
|scaffold_controller | ○ | ○ | × | × | × | × | ○ | ○ |
|controller | ○ | ○ | × | × | ○ | ○ | ○ | ○ |
|model      | × | × | ○ | ○ | × | × | ○ | × |
|migration  | × | × | × | ○ | × | × | ○ | × |

- リソースのルーティング

|HTTPリクエスト | URL | アクション | 名前付きルート | 用途 |
|GET | /users | index | users_path | すべてのユーザーを一覧するページ |
|GET | /users/1 | show | user_path(user) | 特定のユーザーを表示するページ |
|GET | /users/new | new | new_user_path | ユーザーを新規作成するページ(ユーザー登録) |
|POST | /users | create | users_path | ユーザーを作成するアクション |
|GET | /users/1/edit | edit | edit_user_path(user) | id=1のユーザーを編集するページ |
|PATCH | /users/1 | update | user_path(user) | ユーザーを更新するアクション |
|DELETE | /users/1 | destroy | user_path(user) | ユーザーを削除するアクション |
