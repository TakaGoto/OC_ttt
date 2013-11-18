#!/bin/sh
set -e

xctool -workspace ttt_engine/OCTicTacToe.xcworkspace -scheme Specs
xctool -workspace ttt_console/console_ttt.xcworkspace -scheme specs
