
# ers-hao

```sh
curl -X GET "localhost:30105/_analyze?pretty" -H 'Content-Type: application/json' -d'
{
  "tokenizer" : "hao_index_mode",
  "char_filter": ["html_strip"],
  "text" : "体力值"
}'
curl -X GET "localhost:30105/_analyze?pretty" -H 'Content-Type: application/json' -d'
{
  "tokenizer" : "hao_index_mode",
  "char_filter": ["html_strip"],
  "text" : "㒓 奮發圖強"
}'
```

## 打包步骤

```sh
# 去掉hanlp t2s.txt 字典中转换前后长度不一致的词语
node clean_t2s.js
```

```sh
# 请先确保在 main 分支，并且同步了 https://github.com/tenlee2012/elasticsearch-analysis-hao 的最新代码
sh ers-patch.sh

```

## 5.x

```sh
# 先修改5.6.16-build.sh 中的version, 默认5.6.16
sh 5.6.16-build.sh

# mvn clean package -Dmaven.test.skip=true
```

## 7.x

```sh

# 请参考 README.md

```

## 8.x

```sh

# 请参考 README.md

```

## maven 镜像

~/.m2/settings.xml

```xml
<settings>
  <mirrors>
    <mirror>
        <id>aliyunmaven</id>
        <mirrorOf>*</mirrorOf>
        <name>阿里云公共仓库</name>
        <url>https://maven.aliyun.com/repository/public</url>
    </mirror>
  </mirrors>
</settings>
```
