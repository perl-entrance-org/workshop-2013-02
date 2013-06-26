# Perl入学式 #2

## 今日の流れ
- 前回の復習
- おまじない
- 標準入力
- 変数
- 四則演算
- if, else文
- for文, 配列

## 前回の復習

## plenv
    $ plenv versions
    * 5.16.3
      system

- `plenv versions`（plenvのバージョンが古い方は`plenv list`）とすることで、`5.16.3`が選択されているか確認しよう

## Hello, World!
    print "Hello, World!\n";

- このように書いたものを, `hello.pl`として保存
- `print`は, 端末に文字を出力する
- `\n`は改行を表す
- 最後に`;`を忘れずに

## Hello, World! の実行
    $ perl hello.pl
    Hello, World!

- `perl`の引数に実行するスクリプトファイル名を与えると, そのスクリプトを実行する

## 今日の内容

## おまじない
    #!/usr/bin/env perl 
    use strict;
    use warnings;

- おまじないとして、冒頭の3行を書くようにしよう
- `use strict` -> 厳密な書式を定めたり、未定義の変数を警告するといった効果

## use
    use Acme::FizzBuzz;

- `use`を書くことで, `Perl`のモジュールを読み込む事を意味する
- 前回は`Acme::FizzBuzz`というモジュールを利用したように`CPAN`からモジュールを入手できる

## 練習問題
- 先程の冒頭の3行のおまじないを加えた上で, `Hello, World`という文字列を出力する`hello.pl`を作成しよう

## 変数 1
    my $hoge;
    $hoge = 1;
    my $foo = 3.14;
    $hoge = "bar";

- 変数を宣言するときには, `my` をつける. 1度宣言すれば, それ以降は `my` をつけない
- 変数(スカラー変数)の先頭には`$`をつける
- `Perl` では、C言語のように `int`, `char` といった型がないので, 数値や文字列などを自由に代入することができる

## 変数 2
    my $hoge;
    $hoge = 1;

- 1行目で変数`hoge`を宣言
- 2行目にて変数`hoge`に値を代入している

## 変数の出力
    my $hoge = 1;
    print "$hoge\n";

    $ 1

-  `print` を使うことで変数を出力することができる
- 変数を出力する場合は、`""(ダブルクォテーション)`の中に変数を書けばよい
- `\n`は改行を意味する

## 練習問題
- 自分の名前, 年齢, 身長などの情報をそれぞれ`name`, `age`, `height`といった変数に格納し、それらの値を出力するスクリプト `profile.pl`を作成しよう
- `use strict`, `use warnings`を使おう

## 標準入力 1
    #!/usr/bin/env perl
    use strict;
    use warnings;
    my $str = <STDIN>;
    chomp $str;
    print $str;

- まずはこのように書いたファイルを`stdin.pl`と保存して、実行してみよう

## 標準入力 2
    my $str = <STDIN>;
    chomp $str;

- `<STDIN>`とすることで, 端末から入力した文字列を変数`str`に格納する
- `chomp`により行末の改行を削除できる

## 四則演算
    my $hoge = 4;
    my $foo  = 2;
    my $res;
    $res = $hoge + $foo  # 4 + 2 = 6
    $res = $hoge - $foo  # 4 - 2 = 2
    $res = $hoge * $foo  # 4 * 2 = 8
    $res = $hoge / $foo  # 4 / 2 = 2
    $res = $hoge % $foo  # 4 % 2 = 0
    $res = $hoge ** $foo # 4 の 2乗 は 16

- `perl`では、C言語と異なりべき乗の計算を簡単に行うことができる

## 練習問題
- 標準入力<STDIN>から変数を2つ読み込み, それらを四則演算(+, -, *, /)した値を出力するスクリプト `calc.pl`を作成しよう

## 制御構文 1
    #!/usr/bin/env perl
    use strict;
    use warnings;
    my $hoge = 1;
    if ( $hoge == 1 ) {
      print "OK\n";
    }
    else {
      print "NG\n";
    }

- このようなスクリプトを`ifelse.pl`と保存して, 変数`hoge`を色々な値にして実行してみよう

## 制御構文 2
    if ( $hoge == 1 ) {
      print "OK\n";
    }
    else {
      print "NG\n";
    }

- `==` は"等しい"ことを意味する. ここでは`$hoge`が`1`であるときに限り, `OK`という文字が表示される
- `$hoge`が1でなければ, `else`に処理が移り`NG`という文字が表示される

## 制御構文 3
    == # 等しい
    != # 等しくない (== の反対)
    <
    >
    <=
    >=

- 数字同士を比較するとき, 上記の演算子を使うことができる.

## 制御構文 4
    my $hoge = 1;
    if ( $hoge == 1 ) {
    }
    elsif ( $hoge == 2 ) {
    }
    elsif ( $hoge == 3 ) {
    }
    else {
    }

- `if`と`else`だけでは2通りしか分岐できないので, さらに分岐を増やす場合は`elsif`を用いる
- `elsif`は`else if`の省略形

## 練習問題
    #!/usr/bin/env perl
    use strict;
    use warnings;
    my $answer = 1; # 好きな値をいれる

- 簡単な数当てゲーム `question.pl`を作成しよう
- 端末から数字を一つ入力し, その数字が`$answer`と一致したら`OK`, `$answer`より大きければ`too big`, 小さければ`too small`と表示する

## 文字列比較 1
    eq  ==  equal
    ne  !=  not equal
    gt  >   greater than
    ge  >=  greater equal
    lt  <   less than
    le  <=  less equal

- 数値を比較する場合は`==`や`!=`を使ったが, 文字列を比較する場合は`eq`や`ne`といった演算子を使う

## 文字列比較 2
    #!/usr/bin/env perl
    use strict;
    use warnings;
    my $hoge = 'hello';
    if ( $hoge eq 'hello' ) {
        print "OK";
    }
    else {
        print "NG";
    }

- `5行目`では, `hello`という文字列と比較するので, `eq`を用いている

## 練習問題
    #!/usr/bin/env perl
    use strict;
    use warnings;
    my $answer = 'perl'; # 好きな文字をいれる

- 簡単な文字当てゲーム `question_word.pl`を作成しよう
- 端末から文字列を一つ入力し, その文字列が`$answer`と一致したら`OK`, 外れたら`NG`と表示する

## 関係演算子 1
    && -> かつ
    || -> または

- `if文`で複雑な条件を扱いたいときに上記の`関係演算子`を用いる

## 関係演算子 2
    my $hoge = 64;
    if ( $hoge > 0 && $hoge % 2 == 0 ) {
        print "&&: OK\n";
    }
    if ( $hoge > 0 || $hoge % 2 == 1 ) {
        print "||: OK\n";
    }

- `5行目` では,`64`が0より大きい`かつ`2で割った余りが0ならば真となる
  - 条件の両方を満たせば真となる
- `8行目` では,`64`が0より大きい`または`2で割った余りが1ならば真となる
  - 条件のどちらかを満たせば真となる

## 配列 1
    #!/usr/bin/env perl
    use strict;
    use warnings;
    my @array = ( 1, "hoge", 3 );
    print "@array\n";    # 1 hoge 3
    print "$array[0]\n"; # 1
    print "$array[1]\n"; # hoge
    print "$array[2]\n"; # 3

- `配列`を使うことで, 数値や文字列を一つの変数でまとめて格納できる
- `配列`は変数名の前に`@`をつける
- `配列`の一つ一つの要素にアクセスする場合は`$`を使う

## 配列 2
    #!/usr/bin/env perl
    use strict;
    use warnings;
    my @array = ( 1, "hoge", 3 );
    my $sum = $array[0] + $array[2];
    print "$sum\n" # => 4

- 配列の要素は普通のスカラー`$`変数と同じように扱えるので, 代入や計算が可能である

## 配列 3
    my @array1 = ( 1, 2, 3, 4 );
    my @array2 = ( 1 .. 4 ); 

- `()`を使うことで, 配列にをまとめて代入することができる
- 連続する数字であれば, `a .. b`とすることで`a以上b以下`の値を配列に代入する

## 配列 4
    my @array1 = ( 5, 4, 3, 2, 1 );
    my @array2 = ( 5 .. 1 ); # NG
    my @array3 = reverse ( 1 .. 5 ); # OK

- `@array1`のように連番を逆の順番で配列に格納したい場合は, `reverse`を使う
- `@array2`のように書くと, `@array2`には空の要素が格納されるので注意しよう

## for ループ
    #!/usr/bin/env perl
    use strict;
    use warnings;
    my @array = ( 1, "hoge", 3 );
    for my $var ( @array ) {
      print "$var\n";
    }

- 配列の中身を走査するのに, `for(each)`文がある
- 変数`$var`に`$array[0]`, `$array[1]` ... という値が代入されている

## for ループ ( C言語風 )
    #!/usr/bin/env perl
    use strict;
    use warnings;
    my @array = ( 1, "hoge", 3 );
    for ( my $i = 0; $i < @array; $i++ ) {
      print "$array[$i]\n";
    }

- `$i < @array` において `@array` は`スカラ`として評価される。その際の値は配列の要素数となるので, `3`と扱われる

## 練習問題
- 変数`@array`に1 - 100の数値を格納し, その配列の中身を`for`文を使って出力する`for.pl`を作成しよう

## 最終問題
- `FizzBuzz`問題にチャレンジ!!
- 数字が`3`で割り切れるなら`Fizz`, `5`なら`Buzz`, 両方(`15`)で割り切れるなら`FizzBuzz`, これら以外はその数字自身を出力する`fizzbuzz.pl`を作成しよう

## 復習問題

- <https://github.com/perl-entrance-org/workshop-2013-02/blob/master/practice.md>

  - 今回の内容を復習することができる問題集です
  - ご不明な点があれば, 気軽にスタッフまでお尋ねください
  
