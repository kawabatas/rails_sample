#!/bin/bash

PROJECT="20170829_rails_sample"

# 引数チェック
if [ ! $# -eq 1 ]; then
      echo "引数の数が足りません"
      echo "Usage: sh $0 [command]"
      exit
fi

case "$1" in
      "up")
            rm ./ruby/tmp/*
            rm -r ./ruby/tmp/*
            docker-compose -p ${PROJECT} up
      ;;

      *)
            echo "Usage: sh $0 [command]"
            exit
      ;;
esac
