# バケットオブジェクト: sakuracloud_bucket_object

バケットオブジェクトの情報を参照するためのデータソース

## Example Usage

```hcl
data "sakuracloud_bucket_object" "foobar" {
  bucket = "foobar"
  key    = "key.txt"
}
```

## Argument Reference

* `access_key` - (Required) オブジェクトストレージAPIのアクセスキー
* `secret_key` - (Required) オブジェクトストレージAPIのシークレットキー
* `bucket` - (Required) バケット名
* `key` - (Required) バケットオブジェクトのキー(ファイル名)



## Attribute Reference

* `id` - ID
* `body` - バケットオブジェクトのデータ
* `content_type` - コンテントタイプ
* `etag` - HTTP ETag
* `http_cache_url` - キャッシュURL(http)
* `http_path_url` - パス形式のURL(http)
* `http_url` - ホスト形式のURL(http)
* `https_cache_url` - キャッシュURL(https)
* `https_path_url` - パス形式のURL(https)
* `https_url` - ホスト形式のURL(https)
* `last_modified` - 最終更新日時
* `size` - サイズ(byte)



