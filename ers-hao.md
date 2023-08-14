
# ers-hao

```sh
curl -X GET "localhost:30105/_analyze?pretty" -H 'Content-Type: application/json' -d'
{
  "tokenizer" : "hao_index_mode",
  "char_filter": ["html_strip"],
  "text" : "体力值"
}'
```
