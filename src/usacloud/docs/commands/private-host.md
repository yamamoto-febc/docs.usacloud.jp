# コマンドリファレンス / private-host

## コマンド一覧

- Basic Commands
    - [list](#list)
    - [create](#create)
    - [read](#read)
    - [update](#update)
    - [delete](#delete)


## list {: #list }

```console
Usage:
  list [flags]

Aliases:
  list, ls, find, select

Flags:

  === Filter options ===

      --names strings   
      --tags strings    

  === Limit/Offset options ===

      --count int   (aliases: --max, --limit)
      --from int    (aliases: --offset)

  === Zone options ===

      --zone string   (*required) 

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

## create {: #create }

```console
Usage:
  create [flags]

Flags:

  === Common options ===

      --name string          (*required) 
      --description string   
      --tags strings         
      --icon-id int          

  === Private-Host-specific options ===

      --class string   (*required) options: [dynamic/ms_windows]
      --plan-id int    (*required) 

  === Zone options ===

      --zone string   (*required) 

  === Input options ===

  -y, --assumeyes           Assume that the answer to any question which would be asked is yes
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

## read {: #read }

```console
Usage:
  read [flags]

Aliases:
  read, show

Flags:

  === Zone options ===

      --zone string   (*required) 

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

## update {: #update }

```console
Usage:
  update [flags]

Flags:

  === Common options ===

      --name string          
      --description string   
      --tags strings         
      --icon-id int          

  === Zone options ===

      --zone string   (*required) 

  === Input options ===

  -y, --assumeyes           Assume that the answer to any question which would be asked is yes
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

## delete {: #delete }

```console
Usage:
  delete [flags]

Aliases:
  delete, rm

Flags:

  === Zone options ===

      --zone string   (*required) 

  === Error handling options ===

      --fail-if-not-found   

  === Wait options ===

      --wait-for-release               
      --wait-for-release-timeout int   
      --wait-for-release-tick int      

  === Input options ===

  -y, --assumeyes           Assume that the answer to any question which would be asked is yes
      --generate-skeleton   Output skeleton of parameters with JSON format (aliases: --skeleton)
      --parameters string   Input parameters in JSON format

  === Parameter example ===

      --example   Output example parameters with JSON format

```

