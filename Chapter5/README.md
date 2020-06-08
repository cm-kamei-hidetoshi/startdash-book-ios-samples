# 5章「OSSを駆使した現場の実践TIPS」のサンプルコード
## 検証環境
サンプルコードはこちらの環境で動作確認しました。

- Xcode: Version 11.5
- CocoaPods:1.8.4
- Carthage:0.34.0

## 各節とサンプルコードの対応
各節とサンプルコードの対応は以下の通りです。

### 5-2 CocoaPodsでOSSを管理する
- 5-2_CocoaPods
    - CocoaPodsSample

### 5-3 CarthageでOSSを管理する
- 5-3_Carthage
    - CarthageSample

### 5-4 Swift Package ManagerでOSSを管理する
- 5-4_SwiftPackageManager
    - SPMSample

### 5-5 Alamofireを使用して通信処理を実装する
- 5-5_Alamofire
    - AlamofireSample: Swift Package Managerを使用
    - AlamofireWithCarthage: Carthageを使用

### 5-6 Kingfisherを使用してWeb上の画像を表示する
- 5-6_Kingfisher
    - KingfisherSample: Swift Package Managerを使用
    - KingfisherWithCarthage: Carthageを使用
    - KingfisherWithCocoaPods: CocoaPodsを使用

### 5-7 PKHUDを使用してHUDを表示する
- 5-7_PKHUD
    - PKHUDSample: CocoaPodsを使用
    - PKHUDWithCarthage: CocoaPodsを使用

## サンプルコードのビルド手順
OSS管理ツールごとのサンプルコードのビルド手順は以下の通りです。

### CocoaPods
- `$ pod install`を実行する
- `*.xcworkspace`ファイルを開きビルドを実行する

### Carthage
- `$ carthage bootstrap --platform iOS`を実行する
- `*.xcodeproj`ファイルを開きビルドを実行する

### Swift Package Manager
- `*.xcodeproj`ファイルを開く
- ライブラリのフェッチなどが実行され、しばらくするとビルドできる状態になる
