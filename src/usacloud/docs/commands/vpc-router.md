# コマンドリファレンス / vpc-router

## コマンド一覧

- Basic Commands
    - [list](#list)
    - [create](#create)
    - [create-standard](#create-standard)
    - [read](#read)
    - [update](#update)
    - [update-standard](#update-standard)
    - [delete](#delete)
- Power Management Commands
    - [boot](#boot)
    - [shutdown](#shutdown)
    - [reset](#reset)
- Monitoring Commands
    - [monitor-interface](#monitor-interface)
- Other Commands
    - [wait-until-ready](#wait-until-ready)
    - [wait-until-shutdown](#wait-until-shutdown)


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

  === Plan options ===

      --plan string   (*required) options: [premium/highspec/highspec4000] (default "premium")

  === Vpc-Router-specific options ===

      --boot-after-create               
      --dhcp-server string              
      --dhcp-static-mapping string      
      --firewall string                 
      --internet-connection-enabled     
      --l2tp-pre-shared-secret string   
      --l2tp-range-start string         
      --l2tp-range-stop string          
      --port-forwarding string          
      --pptp-range-start string         
      --pptp-range-stop string          
      --site-to-site-vpn string         
      --static-nat string               
      --static-route string             
      --syslog-host string              
      --users string                    
      --vrid int                        

  === Network options ===

      --public-network-interface-ip-addresses strings        
      --public-network-interface-ip-aliases strings          
      --public-network-interface-switch-id int               
      --public-network-interface-virtual-ip-address string   
      --private-network-interfaces string                    

  === Zone options ===

      --zone string   (*required) 

  === Wait options ===

      --no-wait   

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

## create-standard {: #create-standard }

```console
Usage:
  create-standard [flags]

Flags:

  === Common options ===

      --name string          (*required) 
      --description string   
      --tags strings         
      --icon-id int          

  === Vpc-Router-specific options ===

      --boot-after-create                   
      --dhcp-server string                  
      --dhcp-static-mapping string          
      --firewall string                     
      --internet-connection-enabled         
      --l2tp-pre-shared-secret string       
      --l2tp-range-start string             
      --l2tp-range-stop string              
      --port-forwarding string              
      --pptp-range-start string             
      --pptp-range-stop string              
      --private-network-interfaces string   
      --site-to-site-vpn string             
      --static-nat string                   
      --static-route string                 
      --syslog-host string                  
      --users string                        
      --vrid int                            

  === Zone options ===

      --zone string   (*required) 

  === Wait options ===

      --no-wait   

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

  === Vpc-Router-specific options ===

      --dhcp-server string              
      --dhcp-static-mapping string      
      --firewall string                 
      --internet-connection-enabled     
      --l2tp-pre-shared-secret string   
      --l2tp-range-start string         
      --l2tp-range-stop string          
      --port-forwarding string          
      --pptp-range-start string         
      --pptp-range-stop string          
      --site-to-site-vpn string         
      --static-nat string               
      --static-route string             
      --syslog-host string              
      --users string                    

  === Network options ===

      --public-network-interface-ip-addresses strings        
      --public-network-interface-ip-aliases strings          
      --public-network-interface-virtual-ip-address string   
      --private-network-interfaces string                    

  === Zone options ===

      --zone string   (*required) 

  === Wait options ===

      --no-wait   

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

## update-standard {: #update-standard }

```console
Usage:
  update-standard [flags]

Flags:

  === Common options ===

      --name string          
      --description string   
      --tags strings         
      --icon-id int          

  === Vpc-Router-specific options ===

      --dhcp-server string                  
      --dhcp-static-mapping string          
      --firewall string                     
      --internet-connection-enabled         
      --l2tp-pre-shared-secret string       
      --l2tp-range-start string             
      --l2tp-range-stop string              
      --port-forwarding string              
      --pptp-range-start string             
      --pptp-range-stop string              
      --private-network-interfaces string   
      --site-to-site-vpn string             
      --static-nat string                   
      --static-route string                 
      --syslog-host string                  
      --users string                        

  === Zone options ===

      --zone string   (*required) 

  === Wait options ===

      --no-wait   

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

  === Delete options ===

  -f, --force   

  === Zone options ===

      --zone string   (*required) 

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

## boot {: #boot }

```console
Usage:
  boot [flags]

Aliases:
  boot, power-on

Flags:

  === Zone options ===

      --zone string   (*required) 

  === Wait options ===

      --no-wait   

  === Input options ===

  -y, --assumeyes           Assume that the answer to any question which would be asked is yes
      --generate-skeleton   Output skeleton of parameters with JSON format (aliases: --skeleton)
      --parameters string   Input parameters in JSON format

  === Parameter example ===

      --example   Output example parameters with JSON format

```

## shutdown {: #shutdown }

```console
Usage:
  shutdown [flags]

Aliases:
  shutdown, power-off

Flags:

  === Vpc-Router-specific options ===

  -f, --force-shutdown   (aliases: --force)

  === Zone options ===

      --zone string   (*required) 

  === Wait options ===

      --no-wait   

  === Input options ===

  -y, --assumeyes           Assume that the answer to any question which would be asked is yes
      --generate-skeleton   Output skeleton of parameters with JSON format (aliases: --skeleton)
      --parameters string   Input parameters in JSON format

  === Parameter example ===

      --example   Output example parameters with JSON format

```

## reset {: #reset }

```console
Usage:
  reset [flags]

Flags:

  === Zone options ===

      --zone string   (*required) 

  === Input options ===

  -y, --assumeyes           Assume that the answer to any question which would be asked is yes
      --generate-skeleton   Output skeleton of parameters with JSON format (aliases: --skeleton)
      --parameters string   Input parameters in JSON format

  === Parameter example ===

      --example   Output example parameters with JSON format

```

## monitor-interface {: #monitor-interface }

```console
Usage:
  monitor-interface [flags]

Aliases:
  monitor-interface, monitor-nic

Flags:

  === Vpc-Router-specific options ===

      --index int   

  === Monitor options ===

      --end string     
      --start string   

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

## wait-until-ready {: #wait-until-ready }

```console
Usage:
  wait-until-ready [flags]

Aliases:
  wait-until-ready, wait-for-boot

Flags:

  === Zone options ===

      --zone string   (*required) 

  === Input options ===

      --generate-skeleton   Output skeleton of parameters with JSON format (aliases: --skeleton)
      --parameters string   Input parameters in JSON format

  === Parameter example ===

      --example   Output example parameters with JSON format

```

## wait-until-shutdown {: #wait-until-shutdown }

```console
Usage:
  wait-until-shutdown [flags]

Aliases:
  wait-until-shutdown, wait-for-down

Flags:

  === Zone options ===

      --zone string   (*required) 

  === Input options ===

      --generate-skeleton   Output skeleton of parameters with JSON format (aliases: --skeleton)
      --parameters string   Input parameters in JSON format

  === Parameter example ===

      --example   Output example parameters with JSON format

```

