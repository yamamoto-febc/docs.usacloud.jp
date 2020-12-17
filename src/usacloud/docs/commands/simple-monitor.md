# コマンドリファレンス / simple-monitor

## コマンド一覧

- Basic Commands
    - [list](#list)
    - [create](#create)
    - [read](#read)
    - [update](#update)
    - [delete](#delete)
- Monitoring Commands
    - [health](#health)
    - [monitor-response-time](#monitor-response-time)


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

      --description string   
      --tags strings         
      --icon-id int          

  === Simple-Monitor-specific options ===

      --delay-loop int                             (default 60)
      --enabled                                    (default true)
      --health-check-basic-auth-password string   
      --health-check-basic-auth-username string   
      --health-check-community string             
      --health-check-expected-data string         
      --health-check-host string                  
      --health-check-oid string                   
      --health-check-path string                  
      --health-check-port int                     
      --health-check-protocol string              (*required) options: [http/https/ping/tcp/dns/ssh/smtp/pop3/snmp/sslcertificate]
      --health-check-q-name string                
      --health-check-remaining-days int           
      --health-check-sni                          
      --health-check-snmp-version string          
      --health-check-status int                   
      --notify-email-enabled                      
      --notify-email-html                         
      --notify-interval int                        (default 7200)
      --notify-slack-enabled                      
      --slack-webhooks-url string                 
      --target string                             (*required) 

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

      --description string   
      --tags strings         
      --icon-id int          

  === Simple-Monitor-specific options ===

      --delay-loop int                            
      --enabled                                   
      --health-check-basic-auth-password string   
      --health-check-basic-auth-username string   
      --health-check-community string             
      --health-check-expected-data string         
      --health-check-host string                  
      --health-check-oid string                   
      --health-check-path string                  
      --health-check-port int                     
      --health-check-protocol string              options: [http/https/ping/tcp/dns/ssh/smtp/pop3/snmp/sslcertificate]
      --health-check-q-name string                
      --health-check-remaining-days int           
      --health-check-sni                          
      --health-check-snmp-version string          
      --health-check-status int                   
      --notify-email-enabled                      
      --notify-email-html                         
      --notify-interval int                       
      --notify-slack-enabled                      
      --slack-webhooks-url string                 

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

  === Error handling options ===

      --fail-if-not-found   

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

## health {: #health }

```console
Usage:
  health [flags]

Flags:

  === Monitor options ===

      --end string     
      --start string   

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

## monitor-response-time {: #monitor-response-time }

```console
Usage:
  monitor-response-time [flags]

Aliases:
  monitor-response-time, monitor

Flags:

  === Monitor options ===

      --end string     
      --start string   

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

