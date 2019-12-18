# 1. 目次
<!-- TOC -->

- [1. 目次](#1-目次)
- [2. 処理の実行手順](#2-処理の実行手順)
    - [2.1. サーバログイン](#21-サーバログイン)
    - [2.2. インベントリー作成](#22-インベントリー作成)
    - [2.3. 処理の実行](#23-処理の実行)
    - [2.4. 実行結果の確認](#24-実行結果の確認)

<!-- /TOC -->
# 2. 処理の実行手順
## 2.1. サーバログイン
■　以下サーバにログインする。

| 項目 | 内容 |
| ------ | ----- |
| host name | ymsl-test025 |
| ipaddress |  10.147.7.249 |
| account | AnsibleUser |
| password | PVCH116admin |

■　以下、ディレクトリに移動する。
```sh
cd /home/AnsibleUser/projects/SAWA
```

## 2.2. インベントリー作成
■　作業担当者ごとのインベントリーディレクトリを作成する。
※存在する場合は不要
```sh
mkdir playbook-inventory_[作業者名]
```
■　構築対象のホストファイルを作成する。
※構築するホスト毎にファイルを作成すること。
```sh
touch playbook-inventory_[作業者名]/[host名]
```
■　ツールを活用し、インベントリーデータの作成を行う。
| ツール名 | リンク |
| ------ | ------|
| Make_Inventory_Windows | \\vpsh001\ITサービス事業部\01_サーバ管理\12_サーバ新規構築手順\【Windows】OS構築手順\インベントリー作成\Make_Inventory_Windows.xlsx |

■　作成したインベントリーデータを以下のファイルに貼り付ける
```sh
vi playbook-inventory_[作業者名]/[host名]
```

## 2.3. 処理の実行
■　実行ディレクトリにて以下コマンドを実行する。

```sh
 ansible-playbook site.yml -i playbook-inventory_[作業者]/
```

## 2.4. 実行結果の確認
■　処理の実行結果が全てok及びchangedであることを確認する。

```sh
例：
  ok=5    changed=0    unreachable=0    failed=0
```
