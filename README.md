# `SwiftUI`を使ったクライアントアプリ

[![swift-5.0](https://img.shields.io/badge/swift-5.0-brightgreen.svg)](https://github.com/apple/swift)

## 開発環境
- masOS 10.15 Beta2(19A487I)
- Xcode 11.0 Beta2(11M337n)

## 実装において工夫したポイント

`SwiftUI`を用い、View周りの処理を全て簡潔なコードで記述しています。適切にViewを構成するコンポーネントを分割したため`ContentView`の`body`を短く記述することができました。また、`@State`を使い状態管理することで、従来よりも可動性が高く、更新処理の早い実装を行っています。

ロジック部分とビュー部分のコードは分け、他の開発メンバーが見てもすぐにディレクトリ構成が分かるようにしました。APIから取得した画像・テキストを2列のグリッド表示で順番に表示する際は、[indexの値を用いたアルゴリズム](https://github.com/tomu28/delyClient/wiki/%E5%8F%96%E5%BE%97%E3%81%97%E3%81%9F%E7%94%BB%E5%83%8F%E3%82%92%E9%A0%86%E7%95%AA%E3%81%AB%E8%A1%A8%E7%A4%BA%E3%81%99%E3%82%8B%E9%9A%9B%E3%81%AB%E7%94%A8%E3%81%84%E3%81%9F%E3%82%A2%E3%83%AB%E3%82%B4%E3%83%AA%E3%82%BA%E3%83%A0)を使いシンプルなコードで表現しています。

## 動作の例
![Gif](https://user-images.githubusercontent.com/28621480/60521279-f156f400-9d21-11e9-81bb-13f8052aa234.gif)
