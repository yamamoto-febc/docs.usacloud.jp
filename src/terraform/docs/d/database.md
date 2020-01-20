# データベース: sakuracloud_database

データベースの情報を参照するためのデータソース

## Example Usage

```hcl
data "sakuracloud_database" "foobar" {
  filter {
    names = ["foobar"]
  }
}
```
## Argument Reference

* `filter` - (Optional) 参照対象をフィルタリングするための条件。詳細は[filterブロック](#filter)を参照 
* `zone` - (Optional) 対象ゾーンの名前 (例: `is1a`, `tk1a`)  

---

#### filterブロック

* `condition` - (Optional) APIリクエスト時に利用されるフィルタリング用パラメータ。詳細は[conditionブロック](#condition)を参照  
* `id` - (Optional) 対象リソースのID 
* `names` - (Optional) 対象リソースの名前。指定値と部分一致するリソースが参照対象となる。複数指定した場合はAND条件となる  
* `tags` - (Optional) 対象リソースが持つタグ。指定値と完全一致するリソースが参照対象となる。複数指定した場合はAND条件となる

---

#### conditionブロック

* `name` - (Required) 対象フィールド名。大文字/小文字を区別する  
* `values` - (Required) 対象フィールドの値。複数指定した場合はAND条件となる


## Attribute Reference

* `id` - ID
* `backup_time` - バックアップ開始時刻。`HH:mm`形式
* `backup_weekdays` - バックアップを取得する曜日のリスト  
要素は次のいずれかとなる [`sun`/`mon`/`tue`/`wed`/`thu`/`fri`/`sat`]
* `database_type` - データベース種別。 次のいずれかとなる [`mariadb`/`postgres`]
* `description` - 説明
* `gateway` - ゲートウェイのIPアドレス
* `icon_id` - アイコンID
* `ip_address` - IPアドレス
* `name` - 名前
* `netmask` - サブネットマスク長
* `password` - デフォルトユーザーのパスワード
* `plan` - プラン。次のいずれかとなる [`10g`/`30g`/`90g`/`240g`/`500g`/`1t`].
* `port` - ポート番号
* `replica_password` - レプリケーションユーザーのパスワード
* `replica_user` - レプリケーションユーザー名
* `source_ranges` - データベースへのアクセスを許可するソースIP範囲のリスト
* `switch_id` - スイッチID
* `tags` - タグ
* `username` - デフォルトユーザー名



