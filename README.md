\$ docker-compose run web rails new . --force --database=postgresql

プロジェクトをビルド。--force オプションで Gemfile を上書き。--database=postgresql でデータベースを PostgreSQL に指定。

\$ docker-compose build

新しい Gemfile をもう一度ビルド。

\$ docker-compose up

docker-compose.yml で定義したサービスを開始・再起動する。

\$ docker-compose run web rake db:create

アプリケーションは Docker デーモン上で動作させる。

\$ docker images

docker のイメージの確認

\$ docker stop

コンテナの停止

\$ docker ps -a

コンテナの確認

-a をつけると停止しているコンテナも表示する
