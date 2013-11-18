#!/bin/sh
set -e

xctool -workspace OCTicTacToe.xcworkspace -scheme Specs build test
