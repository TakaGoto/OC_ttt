[![Build Status](https://magnum.travis-ci.com/TakaGoto/OC_ttt.png?token=AoQy2o2YM8JsaWDuHiLa&branch=master)](https://magnum.travis-ci.com/TakaGoto/OC_ttt)


OC_ttt
======

<b>Requirements</b>

- `brew update`
- [Xcode](https://developer.apple.com/xcode/) 5.0.0 or later
- xcode command line tool (it is downloaded separately since xcode 5)
  - `xcode-select --install`
- xctool
  - `brew install xctool`
- [CocoaPods](http://cocoapods.org/)
  - `gem install cocoapods`
  - `pod setup`

# Tic Tac Toe Engine

<b>To run tests:</b>

- `cd ttt_engine`
- `pod install`
- `xctool -workspace OCTicTacToe.xcworkspace -scheme Specs`

# Tic Tac Toe in Console

<b>To run tests:</b>

- `cd ttt_console`
- `pod install`
- `xctool -workspace console_ttt.xcworkspace -scheme specs`

# To play from terminal

- `bin/playGame`

# to compile console ttt from root

- `bin/compile_console_ttt.sh`
- `bin/playGame` from root to play
