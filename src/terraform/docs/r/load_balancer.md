# ロードバランサ: sakuracloud_load_balancer

## Example Usage

```hcl
resource "sakuracloud_load_balancer" "foobar" {
  name         = "foobar"
  switch_id    = sakuracloud_switch.foobar.id
  vrid         = 1
  ip_addresses = ["192.168.11.101"]
  netmask      = 24
  gateway      = "192.168.11.1"

  description = "description"
  tags        = ["tag1", "tag2"]

  vip {
    vip          = "192.168.11.201"
    port         = 80
    delay_loop   = 10
    sorry_server = "192.168.11.21"

    server {
      ip_address = "192.168.11.51"
      protocol   = "http"
      path       = "/health"
      status     = 200
    }

    server {
      ip_address = "192.168.11.52"
      protocol   = "http"
      path       = "/health"
      status     = 200
    }
  }
}

resource "sakuracloud_switch" "foobar" {
  name = "foobar"
}
```

## Argument Reference

* `name` - (Required) 名前 / `1`-`64`文字で指定
* `vrid` - (Required) VRID / `high_availability`が`true`の場合のみ利用されます / この値を変更するとリソースの再作成が行われる
* `high_availability` - (Optional) 冗長化構成の有効かフラグ / この値を変更するとリソースの再作成が行われる
* `plan` - (Optional) プラン / 次のいずれかを指定 [`standard`/`highspec`] / この値を変更するとリソースの再作成が行われる / デフォルト:`standard`
* `vip` - (Optional) VIP設定。詳細は[vipブロック](#vip)を参照

#### ネットワーク関連

* `ip_addresses` - (Required) IPアドレスのリスト / この値を変更するとリソースの再作成が行われる
* `netmask` - (Required) サブネットマスク長 / `8`-`29`の範囲で指定 / この値を変更するとリソースの再作成が行われる
* `gateway` - (Optional) ゲートウェイIPアドレス / この値を変更するとリソースの再作成が行われる
* `switch_id` - (Required) スイッチID / この値を変更するとリソースの再作成が行われる

#### Common Arguments

* `description` - (Optional) 説明 / `1`-`512`文字で指定
* `icon_id` - (Optional) アイコンID
* `tags` - (Optional) タグ
* `zone` - (Optional) リソースを作成する対象ゾーンの名前(例: `is1a`, `tk1a`) / この値を変更するとリソースの再作成が行われる

---

#### vipブロック

* `port` - (Required) ポート番号 / `1`-`65535`の範囲で指定
* `vip` - (Required) 仮想IPアドレス
* `delay_loop` - (Optional) チェック間隔秒数 / `10`-`2147483647`の範囲で指定
* `description` - (Optional) 説明 / `1`-`512`文字で指定
* `server` - (Optional) 実サーバ設定のリスト。詳細は[serverブロック](#server)を参照
* `sorry_server` - (Optional) ソーリーサーバのIPアドレス

---

#### serverブロック

* `ip_address` - (Required) IPアドレス
* `protocol` - (Required) ヘルスチェックで用いるプロコとる / 次のいずれかを指定 [`http`/`https`/`tcp`/`ping`]
* `enabled` - (Optional) 有効フラグ
* `path` - (Optional) HTTP/HTTPSチェック時のリクエストパス
* `status` - (Optional) HTTP/HTTPSチェック時のレスポンスコード

### Timeouts

`timeouts`ブロックで[カスタムタイムアウト](https://www.terraform.io/docs/configuration/resources.html#operation-timeouts)が設定可能です。  

* `create` - 作成 (デフォルト: 60分)
* `update` - 更新 (デフォルト: 60分)
* `delete` - 削除 (デフォルト: 20分)

## Attribute Reference

* `id` - ID

