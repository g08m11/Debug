The better way to deal with Debug in Swift

## Debug


## 実行環境
### Mac:OSX Yosemite Version 10.10.4

![スクリーンショット 2015-08-01 14.40.53.png](https://qiita-image-store.s3.amazonaws.com/0/15812/eb83695a-4126-6ed1-2a5e-5e498e66bf02.png "スクリーンショット 2015-08-01 14.40.53.png")


### Xcode:6.4(Xcode7では未確認)


![スクリーンショット 2015-08-01 14.40.45.png](https://qiita-image-store.s3.amazonaws.com/0/15812/6244088c-30e3-4ac3-910c-b52ac79ba7cc.png "スクリーンショット 2015-08-01 14.40.45.png")

### Swift:1.2(Swift2では未確認)


# 使うまでの流れ

## 1.Debugのソースを落としてくる
[ここから]()zipファイルを落としてきて
「Debug.swift」だけ取り出す。

## 2.デバッグ時のみ実行したい設定にする
(既に設定されている方はスキップ可能です。)

### 2.1①TARGEETSから「マイプロジェクト」を選び、②「Build Settings」を選び、「Swift Compiler」から③「Other Swift Flags」を選ぶ。

![スクリーンショット 2015-09-19 0.09.05.png](https://qiita-image-store.s3.amazonaws.com/0/15812/41bcd9e3-e1b4-af11-23ca-5629c9d07cb2.png "スクリーンショット 2015-09-19 0.09.05.png")


![スクリーンショット 2015-09-19 0.09.21.png](https://qiita-image-store.s3.amazonaws.com/0/15812/66c87ca0-af90-7854-d4d9-5201e77eca1c.png "スクリーンショット 2015-09-19 0.09.21.png")


### 2.2「+」を押し、「-D DEBUG」を入力して設定する。

![スクリーンショット 2015-09-19 0.09.38.png](https://qiita-image-store.s3.amazonaws.com/0/15812/d44e301e-5637-802b-c246-e23e4424fd0c.png "スクリーンショット 2015-09-19 0.09.38.png")


![スクリーンショット 2015-09-19 0.09.38.png](https://qiita-image-store.s3.amazonaws.com/0/15812/63177c72-823f-cb5d-0abf-342fee71af5d.png "スクリーンショット 2015-09-19 0.09.38.png")

### 2.3設定を確認する。

![スクリーンショット 2015-09-19 0.41.56.png](https://qiita-image-store.s3.amazonaws.com/0/15812/063bda9d-c2e8-33da-ca33-b8c57132f7a8.png "スクリーンショット 2015-09-19 0.41.56.png")



## 3.デバッグしたい所にコードを書く
(今回はViewControllerに書いてます。)

```ViewController.swift
class ViewController: UIViewController {

  override func viewDidLoad() {
    Debug.log("ここまできてる")
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}
```



## 4.確認する
こちらはConsole側に出力されます。
こちらはConsoleのみにすると綺麗に見えます。


![スクリーンショット 2015-09-19 0.27.12.png](https://qiita-image-store.s3.amazonaws.com/0/15812/d404596e-d21d-686f-135c-d660b562ee32.png "スクリーンショット 2015-09-19 0.27.12.png")



# 使い方

ただ呼ばれているか確認したいだけの場合

```
Debug.log("")
```

呼ばれていてメッセージも確認したい場合

```
Debug.log("g08m11")
```


変数の値を確認したい場合

```
str = "g08m11"
Debug.log("ここまできてる\(str)")
```


インスタンス変数の値を確認したい場合

```
var myComposeView : SLComposeViewController!
Debug.log("ここまできてる\(myComposeView)")
```


# 見方

```
*** MESSAGE
  -- FileName: /Users/gushikenmasaru/work/swift/MyApps/test/test/ViewController.swift
  -- Method: viewDidLoad()
  -- Line: 14

```
### MESSAGE:
Debug.log("MESSAGE")など文字列を設定した場合に表示されます。

### FileName:
Debug.log()を追加したファイル名に該当します。

### Method:
Debug.log()を追加したファイルのメソッド名に該当します。

### Line:
Debug.log()を追加したファイルの行に該当します。


## 参考サイト：
http://oropon.hatenablog.com/entry/2014/06/05/030620
http://qiita.com/qmihara/items/a6b88b74fe64e1e05ca4
http://qiita.com/inamiy/items/c4e137309725485dc195

