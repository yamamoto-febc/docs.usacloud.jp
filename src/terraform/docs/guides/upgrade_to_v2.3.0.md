# アップグレードガイド(v2.3.0)

## 目次

- [追加/変更/削除されたリソース](#generalDiff)
- [各リソースの変更点](#diffDetail)
    - [サーバ: `server`](#resourceServer)
    
# 追加/変更/削除されたリソース {: #generalDiff }

#### リソース

- [サーバ: `server`](#resourceServer)

# 各リソースの変更点 {: #diffDetail }

### [サーバ: `sakuracloud_server`](https://docs.usacloud.jp/terraform/r/server) {: #resourceServer}

ドキュメント: [https://docs.usacloud.jp/terraform/r/server](https://docs.usacloud.jp/terraform/r/server)

ディスクの修正でのスタートアップスクリプトでパラメータを指定可能になりました。

- *追加* `disk_edit_parameter.note`:
    - `id`: スタートアップスクリプトのID
    - `api_key_id`: スタートアップスクリプト内で利用できるAPIキー(トークン/シークレット)のID
    - `variables`: スタートアップスクリプトに渡す変数のマップ。値は文字列で指定
    
!!! Warning
    既存の`note_ids`パラメータは引き続き利用可能ですが非推奨です。  
    `note_ids`は将来のバージョンで削除されますので`note`への移行を検討してください。

#### 利用例

```tf
resource "sakuracloud_server" "foobar" {
  name  = "foobar"
  disks = [sakuracloud_disk.foobar.id]

  network_interface {
    upstream = "shared"
  }

  disk_edit_parameter {
    password = "password"
    note {
      id         = "123456789012"
      api_key_id = "123456789012"
      variables  = {
        foo = "foo"
        bar = "bar"
      }
    }
  }
}
```
