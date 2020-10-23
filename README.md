# app

## コンテナのイメージをビルド
```
$ docker-compose build
```

## コンテナを起動
```
$ docker-compose up -d
```

## コンテナに接続
```
$ docker-compose exec app sh
```

## コンテナの中
```
/usr/src/app # vue create .
```

## Project setup
```
yarn install
```

### Compiles and hot-reloads for development
```
yarn serve
```

### Compiles and minifies for production
```
yarn build
```

### Lints and fixes files
```
yarn lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
