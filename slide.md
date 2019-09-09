## なぜTDDをやるのか

動作するきれいなコードを書くため

---

## 動作する

* 仕様どおりに動く
* そのクラスに要求された責務を満たす

---

## きれいな

* 可読性が高い
* 意図が伝わりやすい
* 要件の変更が小さいときは小さなコードの変更で済む

---

## アプローチは2通りある

---

![動作するきれいなコード](https://image.slidesharecdn.com/asbctddtwada-131211062645-phpapp01/95/tdd-agile-samurai-base-camp-19-638.jpg)

---

### 上の矢印のアプローチ

* 先に「きれいな」を満たす設計を行ってから実装を行い「動作する」状態にもっていく

### 下の矢印のアプローチ

* まず「動作する」状態にしてから「きれいな」状態になるようにリファクタリングする

---

## TDDのアプローチは下の矢印

先に動く状態にした後にきれいにしていく

* 最初に完璧な設計ができるほどシステム開発は単純ではない（場合がほとんど）
* 実装してみてから気づくこと、動かしてみてから気づくことがたくさんある

---

![TDDと黄金の回転](https://image.slidesharecdn.com/asbctddtwada-131211062645-phpapp01/95/tdd-agile-samurai-base-camp-21-638.jpg)

---

* 最初は左下の状態
* まずは満たすべきテストを書いてテスト失敗（Red）の状態にする
* できるだけはやくテストを成功（Green）にするためのコードを書く（右下）
* テストが成功した状態を保ちながらRefactorしていく（右上）
* 次に満たすべきテストを書く（Red）

---

サイクルを回すことでまずは動く状態（Green）にしてからテストで守りながらリファクタすることを繰り返し、コードベースを成長させていく

---

## TDDのサイクル

1. どのようにテストするかを考える
2. 実装するべき機能や満たすべき仕様を箇条書きする（TODOリストをつくる）
3. TODOリストから一つ選んでその機能をあらわすテストを書く
4. そのテストを実行して失敗させる（Red）
5. 失敗したテストが成功するような実装をおこなう（Green）
6. テストで守りながらリファクタをおこなう（Refactor）
7. 必要があればTODOリストを修正する
8. 3.〜7.を繰り返す

<!-- ![TDDのサイクル](https://image.slidesharecdn.com/asbctddtwada-131211062645-phpapp01/95/tdd-agile-samurai-base-camp-20-638.jpg) -->

---

## TDDのこころ

---

### ステップを小さく

* TODOリストにある項目に書かれた内容の粒度が大きすぎるとどうしたらいいかわからなくなる
* 手が動かないようであればTODOリストを細分化してみる
* テストや実装も同じで大きな問題を一度に解決しようとせずに問題を分割して解決していく

---

### 一つずつしとめる

* TODOリストの複数の項目を一度に対処しようとしない
* 複数の問題を一度に解決しようとせずに一つずつ解決していく

---

## デモ

---

### FizzBuzz

1から100までの数をプリントするプログラムを書け。 ただし3の倍数のときは数の代わりに｢Fizz｣と、 5の倍数のときは｢Buzz｣とプリントし、 3と5両方の倍数の場合には｢FizzBuzz｣とプリントすること。

---

### どのようにテストするか

* 標準出力の中身を取ってテストする？
  * 標準出力の中身をテストコードでどうやって取る？
* 出力する文字列をテストする？
  * "1,2,Fizz,4,Buzz,Fizz,7,8,......................."
  * テストデータ、期待値が長すぎる

---

### ステップを小さく

きっと下記のようなループを書く

```ruby
str = ''
(1..100).each do |i|
  str += fizzbuzz(i)
end
```

このfizzbuzzメソッドのテストならテストを書くイメージが持てそう。

---

### TODOリスト

* 3を受け取ったら'Fizz'と返す
* 5を受け取ったら'Buzz'と返す
* 3と5の倍数を受け取ったら'FizzBuzz'を返す
* それ以外を受け取ったらそのまま返す

---

## 演習

https://gist.github.com/twada/72104bf28cae1f83ad7e8e1c9414299a
