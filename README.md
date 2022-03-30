# YYY バックエンド

## ローカル PC 上での開発環境構築手順

1. Visual Studio Code をインストール

    ダウンロードページ: <https://code.visualstudio.com/download>

    下記の拡張機能をインストール

    - Japanese Language Pack for Visual Studio Code
    - Prettier - Code formatter
    - ESLint
    - Docker
    - Remote - Containers
    - GitLens
    - Draw.io Integration

2. Docker Desktop をインストール

    ダウンロードページ: <https://www.docker.com/products/docker-desktop>

    インストール方法: <https://matsuand.github.io/docs.docker.jp.onthefly/docker-for-windows/install/>

    Windows の場合は、WSL2 を利用して Docker をインストールします。
    (Hyper-V は利用しない。WSL2 と Hyper-V で少し動きが違うので、出来ればメンバー全員で動きを統一したいため)

    下記の設定を行い、OS を再起動するとメモリが 4GB しか使わなくなります。

        C:\Users\自分のユーザ名\.wslconfig

        [wsl2]
        memory=4GB
        swap=0

    もし動かして Docker が停止するようでしたら、memory の値を増やします。
    memory の値は最小 4GB、PC のメモリが多い場合は自由に増やして大丈夫です。

    参考サイト: <https://qiita.com/yoichiwo7/items/e3e13b6fe2f32c4c6120>

3. Git からファイルを取得

    下記のフォルダー構成で、Git からファイルを取得します。

        /任意の作業フォルダー/
        |_ YYY-backend: サーバ側のプログラム (Visual Studio Codeから開くフォルダー)
        |_ YYY-frontend: 画面側のプログラム (Visual Studio Codeから開くフォルダー)
        |_ YYY-document: 設計書などのドキュメントの保存場所

    YYY-backend と YYY-frontend は develop ブランチから取得します。

    YYY-document は main ブランチから取得します。

4. Docker コンテナを起動

    下記のコマンドを実行します。
    Visual Studio Code のターミナル上で実行すると便利です。
    または、Visual Studio Code 上で「YYY-backend/docker-compose.yaml」を右クリックし、「Compose up」をクリックでも同様のコマンドが簡単に実行できます。

        cd YYY-backend
        docker-compose up -d --build
        (MacやLinuxの場合は、sudo docker-compose ～ にします)

5. エディタのコード補完用に Docker イメージ内にある node_modules フォルダーをローカル PC にコピー

    下記のコマンドを実行します。

        cd YYY-backend
        docker-compose exec backend cp -R /usr/src/app/node_modules /usr/src/backend/
        docker-compose exec frontend cp -R /usr/src/app/node_modules /usr/src/frontend/

    今後、git をプルした際に YYY-backend/package.json, YYY-frontend/package.json
    が変更になっている場合は、Docker コンテナを再起動後に、上記のコマンドを再び実行してください。

## 開発サーバの起動方法

下記のコマンドを実行します。

    cd YYY-backend
    docker-compose up -d --build

バックエンド(Node.js 14 + NestJS 7.5.1)、フロントエンド(Node.js 14 + Next.js 10.0.5)、
開発用データベースサーバ(PostgreSQL 12)、データベースクライアント(pgAdmin4)、
開発用メールサーバ(MailDev)が起動されます。

下記のページが表示できれば起動完了です。

- URL: <http://localhost/>
- ログインユーザ一覧:
  - テスト企業1:
    - ユーザ1_1:
        - ログインID: user1_1
        - パスワード: password
        - ログイン企業ID: test_company_1
    - ユーザ1_2:
        - ログインID: user1_2
        - パスワード: password
        - ログイン企業ID: test_company_1
    - ユーザ1_3 ～ ユーザ1_18:
        - ログインID: user1_3 ～ user1_18
        - パスワード: password
        - ログイン企業ID: test_company_1
  - テスト企業2:
    - ユーザ2_1:
        - ログインID: user2_1
        - パスワード: password
        - ログイン企業ID: test_company_2
    - ユーザ2_2:
        - ログインID: user2_2
        - パスワード: password
        - ログイン企業ID: test_company_2
    - ユーザ2_3:
        - ログインID: user2_3
        - パスワード: password
        - ログイン企業ID: test_company_2
  - テスト企業3:
    - ユーザ3_1:
        - ログインID: user3_1
        - パスワード: password
        - ログイン企業ID: test_company_3
    - ユーザ3_2:
        - ログインID: user3_2
        - パスワード: password
        - ログイン企業ID: test_company_3
    - ユーザ3_3:
        - ログインID: user3_3
        - パスワード: password
        - ログイン企業ID: test_company_3
  - テスト企業4:
    - ユーザ4_1:
        - ログインID: user4_1
        - パスワード: password
        - ログイン企業ID: test_company_4
    - ユーザ4_2:
        - ログインID: user4_2
        - パスワード: password
        - ログイン企業ID: test_company_4
    - ユーザ4_3:
        - ログインID: user4_3
        - パスワード: password
        - ログイン企業ID: test_company_4
  - テスト企業5:
    - ユーザ5_1:
        - ログインID: user5_1
        - パスワード: password
        - ログイン企業ID: test_company_5
    - ユーザ5_2:
        - ログインID: user5_2
        - パスワード: password
        - ログイン企業ID: test_company_5
    - ユーザ5_3:
        - ログインID: user5_3
        - パスワード: password
        - ログイン企業ID: test_company_5

下記のコマンドを実行すると、Docker コンテナのログをリアルタイムに表示できます。
TypeScript でビルドエラーになった時は、ここのログに出力されます。

    cd YYY-backend
    docker-compose logs -f            (全てのログを表示)
    docker-compose logs -f backend    (YYY-backendのログのみを表示)
    docker-compose logs -f frontend   (YYY-frontendのログのみを表示)

## 開発サーバの停止方法

下記のコマンドを実行します。

    cd YYY-backend
    docker-compose down

データベースのデータファイル(/var/lib/postgresql/data)、pgAdmin4 のデータファイル(/var/lib/pgadmin)は、Docker のボリュームに保存しています。
これらのデータを削除したい場合は下記のコマンドを実行します。

    cd YYY-backend
    docker-compose down -v

## 本番用ビルドでサーバを起動する方法

開発モードでサーバを起動するのではなく、本番ビルドを行った状態でローカル上でサーバを起動します。
この方法でサーバを起動すると、ソースを変更しても自動ビルドが走りません。
git の developブランチにプッシュやマージする際は、下記のコマンドを実行して、本番ビルドができるか確認します。

下記のコマンドを実行します。

    cd YYY-backend
    docker-compose -f "docker-compose-production.yaml" up -d --build

## 開発用データベースの表示

- pgAdmin4 のログイン URL: <http://localhost:4000/>
- ユーザ名: root@example.com
- パスワード: rootpass
- 言語: Japanese

ログイン後に、ブラウザ > Servers > db を選択をすると、データベースにアクセスできます。

## 開発用メールサーバの表示

- MailDev の URL: <http://localhost:5050/>

Nodemailer を利用して Node.js からメールを送信します。
環境変数「SMTP_HOST」等を利用して SMTPサーバ名を取得します。
※開発環境ではMailDevに向くようにdocker-compose.ymlに設定してあります。外部のメールサーバとは通信しません。

Nodemailer の使い方: <https://nodemailer.com/about/>

## 構成

- フロントエンドもバックエンドも TypeScript で記述します。
- ESlint でフォーマットします。
  (Visual Studio Code の場合は拡張機能の ESLint で構文チェック、Prettier で自動フォーマットを有効化してあります)
- tsc で型チェックをコミット前に行うこと。

  git のコミット前に、必ず下記のコマンドを実行して型チェックと ESlint でフォーマットを行います。
  型が間違っている場合はエラーになるので修正します。

        cd YYY-backend
        docker-compose exec backend yarn lint
        docker-compose exec backend yarn type-check
        docker-compose exec frontend yarn lint
        docker-compose exec frontend yarn type-check

- TypeDoc 形式でコメントを追加します。

  TypeDoc の参考サイト: <https://qiita.com/ConquestArrow/items/eb4a0dfb13497be4d6a3>

  コメントの記述例:

  - YYY-backend/src/wordFile/wordFile.resolver.ts
  - YYY-backend/src/wordFile/wordFile.service.ts

### YYY-backend

利用フレームワーク: NestJS 7.5.1

NestJS: <https://nestjs.com/>

ドキュメント: <https://docs.nestjs.com/>

使い方の参考サイト: <https://minase-program.hatenablog.com/entry/2019/06/07/224619>

#### API 通信

API 通信は、Apollo GraphQL を利用します。

Apollo GraphQL: <https://www.apollographql.com/>

#### 開発用に API を実行する方法

下記の URL にアクセスするとブラウザから API を実行することができます。バックエンドの開発時に利用します。

GraphQL のプレイグラウンド画面: <http://localhost/api/graphql>

画面左側のテキストボックスに下記の GraphQL 文を入力して、画面中央の実行ボタンを押すと、画面右側に実行結果が表示されます。

Health API のクエリ:

    {
        health
    }

#### ログインしてから利用するAPIを実行する場合

下記の方法でログインAPIを利用してアクセストークンを取得します。

GraphQL のプレイグラウンド画面: <http://localhost/api/graphql>

ログインAPI のクエリ:

    mutation($loginInput: LoginInput!) {
        login(loginInput: $loginInput) {
            accessToken
            userId
        }
    }

QUERY VARIABLES の値(GraphQL のプレイグラウンド画面の左下のタブ):

    {
        "loginInput":{
            "loginId":"user1_1",
            "password":"password",
            "clientSlug": "test_company_1"
        }
    }

ログインAPIを実行すると下記のアクセストークン(accessToken)を取得できます。

    {
        "data": {
            "login": {
                "accessToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI1IiwiY2xpZW50SWQiOiIxIiwiaWF0IjoxNjI5NDQzNTkyLCJleHAiOjE2Mjk1Mjk5OTJ9.Hi-7pvurNBtHm0LlSNfAnuj66i9vkt_VUfSry64grm8",
                "userId": 5
            }
        }
    }

HTTP HEADERS(GraphQL のプレイグラウンド画面の左下のタブ)に
下記の形式でアクセストークン("authorization": "Bearer {ログインAPIで取得したaccessTokenの値}")のヘッダを設定します。

    {
        "authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI1IiwiY2xpZW50SWQiOiIxIiwiaWF0IjoxNjI5NDQzNTkyLCJleHAiOjE2Mjk1Mjk5OTJ9.Hi-7pvurNBtHm0LlSNfAnuj66i9vkt_VUfSry64grm8"
    }

下記のログインしないと利用できないAPI(会社一覧取得)のクエリが実行できるか確認します。

    query findAllCompanies {
        findAllCompanies {
            id
            name
        }
    }


#### データベースアクセス

データベースアクセスは、typeORM を利用します。

typeORM: <https://typeorm.io/>

#### ログ出力

下記の方法でログ出力します。バックエンド側は console.log() を利用したログ出力は行わないでください。

    import { Injectable, Logger } from '@nestjs/common';

    Logger.log('情報ログ用')
    Logger.error('エラーログ用');
    Logger.warn('警告ログ用');
    Logger.debug('デバックログ用');
    Logger.verbose('詳細なデバッグログ用');

#### Word ファイルの作成

Word ファイルの作成は、docxtemplater を利用します。

docxtemplater: <https://github.com/open-xml-templating/docxtemplater>

テンプレート用 Word ファイルの保存フォルダー: YYY-backend/resource/template

プログラムの作成方法は下記のクラスを参考にします。

- YYY-backend/src/wordFile/wordFile.service.ts

##### Word ファイルのサンプルプログラムの実行

下記を実行するとテンプレートファイルから Word ファイルを作成します。

GraphQL のプレイグラウンド画面: <http://localhost/api/graphql>

「ログインしてから利用するAPIを実行する場合」の章を参考にして、「HTTP HEADERS」に「authorization」を追加します。

createRFIWordFile API のクエリ:

    {
        createRFIWordFile(id: "123")
    }

- テンプレートファイル: YYY-backend/resource/template/rfi.docx
- 保存先: YYY-backend/data/temp/output_rfi.docx

#### Excel ファイルの作成

Excel ファイルの作成は、XLSX Template を利用します。

XLSX Template: <https://github.com/optilude/xlsx-template>

テンプレート用 Excel ファイルの保存フォルダー: YYY-backend/resource/template

プログラムの作成方法は下記のクラスを参考にします。

- YYY-backend/src/excelFile/excelFile.service.ts

##### Excel ファイルのサンプルプログラムの実行

下記を実行するとテンプレートファイルから Excel ファイルを作成します。

GraphQL のプレイグラウンド画面: <http://localhost/api/graphql>

「ログインしてから利用するAPIを実行する場合」の章を参考にして、「HTTP HEADERS」に「authorization」を追加します。

createSampleExcelFile API のクエリ:

    {
        createSampleExcelFile(id: "123")
    }

- テンプレートファイル: YYY-backend/resource/template/example1.xlsx
- 保存先: YYY-backend/data/temp/output_example1.xlsx

#### クラスを追加する場合

下記のコマンドを実行します。

    cd YYY-backend
    docker-compose exec backend nest g module [追加するモジュールの名前]
    docker-compose exec backend nest g service [追加するサービスの名前]
    docker-compose exec backend nest g resolver [追加するGraphQLリゾルバの名前]

    docker-compose exec backend nest --help
    (nestコマンドの使い方: https://docs.nestjs.com/cli/usages)

#### YYY-backend に Node.js のパッケージを追加する場合

YYY-backend の Docker イメージの中にある yarn コマンドを利用して Node.js のパッケージを追加します。
(ローカル PC にインストールされた Node.js や yarn のバージョンの違いによって起こる問題を防ぐため)

下記のコマンドを実行します。

    cd YYY-backend
    docker-compose exec backend yarn add [パッケージ名]
    docker-compose exec backend yarn add --dev [開発用のパッケージ名]
    docker-compose exec backend cp -R /usr/src/app/node_modules /usr/src/backend/

### YYY-frontend

利用フレームワーク: Next.js 10.0.5

Next.js: <https://nextjs.org/>

Next.js のドキュメント: <https://nextjs.org/docs/getting-started>

使い方の参考ページ: <https://qiita.com/thesugar/items/01896c1faa8241e6b1bc>

最近Reactを始めた人向けのReact Hooks入門: <https://sbfl.net/blog/2019/11/12/react-hooks-introduction/>

#### 静的 HTML エクスポート

Next.js の静的 HTML エクスポートで作成した HTML を本番サーバへアップするため、SSR (Server Side Rendering)を禁止とします。

静的 HTML エクスポートを行う際の実装上の注意点:
<https://nextjs.org/docs/advanced-features/static-html-export>

#### UI コンポーネント

UI コンポーネントは、Ant Design を利用します。

Ant Design: <https://ant.design/>


#### URLデザイン

リソースフルデザインで行います。(GraphQLへのリクエストは除く)
https://restfulapi.net/resource-naming/

#### YYY-frontend に Node.js のパッケージを追加する場合

YYY-frontend の Docker イメージの中にある yarn コマンドを利用して Node.js のパッケージを追加します。
(ローカル PC にインストールされた Node.js や yarn のバージョンの違いによって起こる問題を防ぐため)

下記のコマンドを実行します。

    cd YYY-backend
    docker-compose exec frontend yarn add [パッケージ名]
    docker-compose exec frontend yarn add --dev [開発用のパッケージ名]
    docker-compose exec frontend cp -R /usr/src/app/node_modules /usr/src/frontend/

### データベース

利用データベース: PostgreSQL 12

## 参考リンク

- <https://techblog.yahoo.co.jp/entry/2020121530052952/>
- <https://zenn.dev/mikan3rd/articles/5b7840cdbcd2d9>
- <https://developer.medley.jp/entry/2020/11/06/180208>

## Git の方針

プログラム作業者が新しい機能を実装する場合は、下記の作業用ブランチを作成し、そこにプッシュします。

    YYY-backend:
      feature/[英語の機能名]: バックエンドの作業用ブランチ(developブランチから作成)
      client/[英語の企業名]/feature/[英語の機能名]: 企業専用のバックエンドの作業用ブランチ(client/[英語の企業名]/developブランチから作成)

    YYY-frontend:
      feature/[英語の機能名]: フロントエンドの作業用ブランチ(developブランチから作成)
      client/[英語の企業名]/feature/[英語の機能名]: 企業専用のフロントエンドの作業用ブランチ(client/[英語の企業名]/developブランチから作成)

コミットする際のコメントの先頭に、Backlog の課題キー(例: P2FW-211 )を入れるようにします。

developブランチには直接コミットしないようにします。

作業用ブランチのソースをdevelopブランチにマージしたい場合は、下記の backlog の画面からプルリクエストを作成して、PMTの責任者(不明な場合はお問い合わせ下さい)にマージ依頼を行ってください。
(プルリクエストの追加画面で、担当者を「PMTの責任者」、「関連課題」を選択、「マージされたあとにブランチを削除する」にチェックを入れます)

- <https://pmt-proj.backlog.jp/git/P2FW/YYY-backend/pullRequests>
- <https://pmt-proj.backlog.jp/git/P2FW/YYY-frontend/pullRequests>


gitで新しい作業用ブランチを作成する際は、リモートの最新のdevelopブランチを取得してから、新しい作業用ブランチを作成して頂けると助かります。
(最新のdevelopブランチをプルしてから新しい作業用ブランチを作成します。ローカルの古いdevelopブランチを元にして作業用ブランチを作成してプログラム修正を行うと手戻りやファイル競合が起こりやすいので。GUIのgitソフト(source treeとか)を使うとちょっと楽です。)

PRの説明欄に以下の内容を記載ください。
- 概要: どのような変更を加えたか？数行で結構です。不具合対応の場合は省略して大丈夫です。
- セルフチェック：　行ったかどうか

また、プルリクエストを行う前に、以下のセルフチェックをお願いします。
- 作業用ブランチに、最新のdevelopブランチをマージしたか？
- lintと型チェックが正常に終わっているか？
- 追加・修正したカラムの保存されるべき値がデータベースに保存されているか？
- 追加・修正したカラム更新されるべき値がデータベースに保存されているか？
- 追加・修正したカラム削除されるべき値がデータベースに保存されているか？
- レイアウトファイルと文言は一致しているか？
- レイアウトファイルとパーツの長さは一致しているか？
- エンティティの変更点に追随してテストデータの修正が必要か？


## 複数企業導入に向けた方針

### テーブル定義

#### 企業固有の入力項目や表示項目を追加する場合

Git を企業専用ブランチに分けて、エンティティクラスに企業固有項目の変数を追加します。直接テーブルにカラムを追加します。
(フロントエンドのソースを直接修正して企業固有項目を追加します。データベースを企業毎に分ける仕様にしたため)

### 企業毎に機能の動きを変えたい場合

例: ワークフローの差分(承認依頼のタイミング)について、どのように管理するか

バックエンドの環境変数で承認が必要となる箇所を変更できるようにします。企業導入時に環境変数を変更します。
フロントエンドでは、バックエンド側の「承認依頼条件取得API(下記の環境変数を返すAPI)」にアクセスして、どの画面で承認依頼を行うかを判断します。
(バックエンドの環境変数を、API経由でフロントエンドに渡すイメージ。少々ややこしいが、できれば設定を一か所に集約したかったため)

環境変数の例: YYY-backend/docker-compose.yaml

    backend:
    environment:
        APPROVAL_REQUEST_PLANNING: 'true' # 承認依頼:企画立案(true: 承認依頼を行う、false: 承認依頼を行わずにすぐに確定)
        APPROVAL_REQUEST_TASK_ANALYSIS: 'true' # 承認依頼:課題分析(true: 承認依頼を行う、false: 承認依頼を行わずにすぐに確定)
        ...

### 構成管理(ソースコード、DB)

#### ソースコード(TypeScriptなど)が企業毎に変更せざるを得ない場合、構成管理をどのようにするか

  企業全体で利用したい機能は下記のブランチに入れます。

    YYY-backend:
      develop: バックエンドの開発用リポジトリ
      main: バックエンドのメイン用リポジトリ(すぐにリリースできる状態)

    YYY-frontend:
      develop: フロントエンドの開発用リポジトリ
      main: フロントエンドのメイン用リポジトリ(すぐにリリースできる状態)

  企業固有の表示ラベル変更、項目追加、項目削除、機能追加する場合は下記の企業専用ブランチに入れます。

    YYY-backend:
      client/[英語の企業名]/develop: 企業専用のバックエンドの開発用リポジトリ
      client/[英語の企業名]/main: 企業専用のバックエンドのメイン用リポジトリ(すぐにリリースできる状態)

    YYY-frontend:
      client/[英語の企業名]/develop:: 企業専用のフロントエンドの開発用リポジトリ
      client/[英語の企業名]/main: 企業専用のフロントエンドのメイン用リポジトリ(すぐにリリースできる状態)

#### DB

データベースは企業単位に作成します。

### 設計思想

#### 共通部分と企業ごとに異なる部分の線引きは可能か

基本はdevelopブランチに対して機能を実装します。複数の企業で利用できる機能を入れます。

developブランチには企業固有の機能や文言を入れないようにします。
(developブランチから各企業専用ブランチを作成する際に、別企業の機能や企業固有の文言が入ってしまいリスクがあるため)

「フロントエンドのリソースJSON（設定値と表示ラベル、企業固有の情報を含んでおらず別企業でも利用可能）」の変更だけで済む場合は、リソースJSONをコピーして別のファイル名にして、developブランチに入れても構いません。その際は、Dockerイメージのビルド時にリソースJSONを差し替えます。

企業固有の設定情報は「バックエンドの環境変数(YYY-backend/docker-compose.yaml)」と「フロントエンドのリソースJSON（設定値と表示ラベル）」に集約させます。
(企業専用ブランチを作成して、「バックエンドの環境変数(YYY-backend/docker-compose.yaml)」と「フロントエンドのリソースJSON（設定値と表示ラベル）」のファイルのみが企業毎に異なっている状態にしたい。新機能を実装した場合は、developブランチから企業専用ブランチにマージできる感じにしたい)

どうしても企業独自のカスタマイズ機能が必要な場合は、企業専用ブランチ(client/[英語の企業名]/develop)を作成して、その中でプログラム修正を行う。
# demo-backend
# demo-backend
