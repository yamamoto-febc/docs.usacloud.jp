# アーカイブ: sakuracloud_archive

## Example Usage

```hcl
resource "sakuracloud_archive" "foobar" {
  name         = "foobar"
  description  = "description"
  tags         = ["tag1", "tag2"]
  size         = 20
  archive_file = "test/dummy.raw"
}
```

## Argument Reference

* `name` - (Required) 名前 / `1`-`64`文字で指定
* `archive_file` - (Required) アップロードするファイルのパス
* `hash` - (Optional) アップロードするファイルをBASE64エンコードしたものから算出されたMD5チェックサム
* `size` - (Optional) アーカイブのサイズ / 次のいずれかを指定 [`20`/`40`/`60`/`80`/`100`/`250`/`500`/`750`/`1024`]  
この値を変更するとリソースの再作成が行われる / デフォルト:`20`

#### Common Arguments

* `description` - (Optional) 説明 / `1`-`512`文字で指定
* `icon_id` - (Optional) アイコンID
* `tags` - (Optional) タグ
* `zone` - (Optional) リソースを作成する対象ゾーンの名前(例: `is1a`, `tk1a`) / この値を変更するとリソースの再作成が行われる

#### Timeouts

`timeouts`ブロックで[カスタムタイムアウト](https://www.terraform.io/docs/configuration/resources.html#operation-timeouts)が設定可能です。  

* `create` - 作成 (デフォルト: 24時間)
* `update` - 更新 (デフォルト: 24時間)
* `delete` - 削除 (デフォルト: 5分)

## Attribute Reference

* `id` - ID



