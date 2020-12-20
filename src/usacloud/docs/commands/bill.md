# コマンドリファレンス / bill

## コマンド一覧

- Basic Commands
    - [list](#list)
    - [csv](#csv)


## list {: #list }

##### Usage
```console
Usage:
  list [flags]

Aliases:
  list, ls, find, select

Flags:

  === Bill-specific options ===

      --month int   
      --year int    (*required) 

  === Input options ===

      --generate-skeleton   Output skeleton of parameters with JSON format (aliases: --skeleton)
      --parameters string   Input parameters in JSON format

  === Output options ===

      --format string        Output format in Go templates (aliases: --fmt)
  -o, --output-type string   Output format: one of the following [table/json/yaml] (aliases: --out)
      --query string         JMESPath query
  -q, --quiet                Output IDs only

  === Parameter example ===

      --example   Output example parameters with JSON format

```


## csv {: #csv }

##### Usage
```console
Usage:
  csv BillID [flags]

Flags:

  === Input options ===

      --generate-skeleton   Output skeleton of parameters with JSON format (aliases: --skeleton)
      --parameters string   Input parameters in JSON format

  === Output options ===

      --format string        Output format in Go templates (aliases: --fmt)
  -o, --output-type string   Output format: one of the following [table/json/yaml] (aliases: --out)
      --query string         JMESPath query
  -q, --quiet                Output IDs only

  === Parameter example ===

      --example   Output example parameters with JSON format

```


