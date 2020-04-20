# アップグレードガイド(v2.2.0)

## 目次

- [追加/変更/削除されたリソース](#generalDiff)
- [各リソースの変更点](#diffDetail)
    - [アーカイブ共有: `sakuracloud_archive_share`](#resourceArchiveShare)
    - [アーカイブ: `sakuracloud_archive`](#resourceArchive)
    - [データベース: `sakuracloud_database`](#resourceDatabase)    
    
# 追加/変更/削除されたリソース {: #generalDiff }

- [アーカイブ共有: `sakuracloud_archive_share`](#resourceArchiveShare)
- [アーカイブ: `sakuracloud_archive`](#resourceArchive)
- [データベース: `sakuracloud_database`](#resourceDatabase)

# 各リソースの変更点 {: #diffDetail }

### [アーカイブ共有: `sakuracloud_archive_share`](https://docs.usacloud.jp/terraform/r/archive_share) {: #resourceArchiveShare}

ドキュメント: [https://docs.usacloud.jp/terraform/r/archive_share](https://docs.usacloud.jp/terraform/r/archive_share)

アーカイブ共有を有効にするためのリソースが追加されました。

---

### [アーカイブ: `sakuracloud_archive`](https://docs.usacloud.jp/terraform/r/archive) {: #resourceArchive}

ドキュメント: [https://docs.usacloud.jp/terraform/r/archive](https://docs.usacloud.jp/terraform/r/archive)

アーカイブのソースとして以下の3パターンに対応しました。

- 同一アカウント/同一ゾーンのディスク/アーカイブからの作成
- 他ゾーンからの転送
- アーカイブ共有キーを指定して作成

#### 同一アカウント/同一ゾーンのディスク/アーカイブからの作成

```tf
resource "sakuracloud_archive" "from-transferred-archive" {
  name = "foobar"

  source_archive_id   = 123456789012 # コピー元アーカイブのID

  # または
  # source_disk_id = 123456789012
}
```

#### 他ゾーンからの転送

```tf
resource "sakuracloud_archive" "from-transferred-archive" {
  name = "foobar"

  source_archive_id   = 123456789012 # コピー元アーカイブのID
  source_archive_zone = "tk1a"       # コピー元アーカイブの属するゾーン名   
}
```

#### アーカイブ共有キーを指定して作成

```tf
resource "sakuracloud_archive" "from-shared-archive" {
  name = "foobar"

  source_shared_key = "is1a:123456789012:xxx" # アーカイブ共有キー
}
```

### [データベースアプライアンス: `sakuracloud_database`](https://docs.usacloud.jp/terraform/r/database) {: #resourceDatabase}

- MariaDB 10.4

!!! Note
    tfファイル上の項目の変更はありません。  
    既存データベースアプライアンスのMariaDBのバージョンをあげたい場合は再作成が必要です。

---
