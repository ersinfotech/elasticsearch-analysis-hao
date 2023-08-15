
# ers-hao

```sh
curl -X GET "localhost:30105/_analyze?pretty" -H 'Content-Type: application/json' -d'
{
  "tokenizer" : "hao_index_mode",
  "char_filter": ["html_strip"],
  "text" : "体力值"
}'
```

## 打包步骤

```sh
# 请先确保在 main 分支，并且同步了 https://github.com/tenlee2012/elasticsearch-analysis-hao 的最新代码
sh ers-patch.sh

```

## 5.x

```sh
# 先修改5.6.8-build.sh 中的version, 默认5.6.8
sh 5.6.8-build.sh

# mvn clean package -Dmaven.test.skip=true
```

## 7.x

```sh

# 请参考 README.md

```
