#!/usr/bin/env bash


# electron js api
# https://www.electronjs.org/docs/api
# https://www.electronjs.org/docs/api/app
# https://www.electronjs.org/docs/api/menu
# https://www.electronjs.org/docs/api/tray
# https://www.electronjs.org/docs/tutorial/keyboard-shortcuts
# https://www.electronjs.org/docs/all


# electron build
# https://www.electron.build/
# https://www.electron.build/cli
# https://www.electron.build/api/electron-builder
# https://www.electron.build/configuration/configuration


# apps
# https://www.electronjs.org/apps


# vue
# https://github.com/SimulatedGREG/electron-vue
# https://simulatedgreg.gitbooks.io/electron-vue/content/cn/


# install electron electron-builder
npm install -g electron electron-builder
# or
git clone https://github.com/electron/electron



### electron vue
# https://github.com/SimulatedGREG/electron-vue
# Install vue-cli and scaffold boilerplate
npm install -g vue-cli
cd ./../hello/
vue init simulatedgreg/electron-vue vue1
# Install dependencies and run your app
cd vue1
yarn # or npm install
yarn run dev # or npm run dev



### hello world
# Clone this repository
git clone https://github.com/electron/electron-quick-start
# Go into the repository
cd electron-quick-start
# Install dependencies
# npm install # r
# dev
# Run the app
    electron .
docker run --rm -ti \
 --env-file <(env | grep -iE 'DEBUG|NODE_|ELECTRON_|YARN_|NPM_|CI|CIRCLE|TRAVIS_TAG|TRAVIS|TRAVIS_REPO_|TRAVIS_BUILD_|TRAVIS_BRANCH|TRAVIS_PULL_REQUEST_|APPVEYOR_|CSC_|GH_|GITHUB_|BT_|AWS_|STRIP|BUILD_') \
 --env ELECTRON_CACHE="/root/.cache/electron" \
 --env ELECTRON_BUILDER_CACHE="/root/.cache/electron-builder" \
 -v ${PWD}:/project \
 -v ${PWD##*/}-node-modules:/project/node_modules \
 -v ~/.cache/electron:/root/.cache/electron \
 -v ~/.cache/electron-builder:/root/.cache/electron-builder \
 electronuserland/builder:wine
#
yarn # or npm install
# dev
    yarn run dev # or npm run dev
electron-builder --windows



### asar
Usage: asar [options] [command]
Manipulate asar archive files
Options:
  -V, --version                         output the version number
  -h, --help                            display help for command
Commands:
  pack|p [options] <dir> <output>       create asar archive
  list|l [options] <archive>            list files of asar archive
  extract-file|ef <archive> <filename>  extract one file from archive
  extract|e <archive> <dest>            extract archive
  *
  help [command]                        display help for command



# 解决electron-vue build 后static/下资源无法加载问题
# vue-cli
b.style.background = 'url(static/bgimg/' + this.bgImgList[a] + ')'
# electron-vue
# b.style.background = 'url(' + __static + '/bgimg/' + this.bgImgList[a] + ')'
# OK OK OK through hard hard hard
# https://github.com/oudream/lishi-sharedb
# https://github.com/oudream/lishi-sharedb/commit/df7ac1cde9a6dd9769dbff4076aeb3bfd9f8e2be
back-ground-image='url("./static/jpg/login-bg.jpg")'
