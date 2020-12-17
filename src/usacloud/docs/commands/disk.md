# コマンドリファレンス / disk

## コマンド一覧

- Basic Commands
    - [list](#list)
    - [create](#create)
    - [read](#read)
    - [update](#update)
    - [delete](#delete)
- Operation Commands
    - [connect-to-server](#connect-to-server)
    - [edit](#edit)
    - [disconnect-from-server](#disconnect-from-server)
    - [resize-partition](#resize-partition)
- Monitoring Commands
    - [monitor-disk](#monitor-disk)
- Other Commands
    - [wait-until-ready](#wait-until-ready)


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

      --disk-plan string   (*required) options: [ssd/hdd] (default "ssd")
      --size int            (default 20)
      --connector string   (*required) options: [virtio/ide] (aliases: --connection) (default "virtio")

  === Disk-specific options ===

      --distant-from int   
      --server-id int      

  === Edit disk options ===

      --edit-disk-host-name string          
      --edit-disk-password string           
      --edit-disk-ip-address string         
      --edit-disk-netmask int               (aliases: --network-mask-len)
      --edit-disk-gateway string            (aliases: --default-route)
      --edit-disk-disable-pw-auth           
      --edit-disk-enable-dhcp               
      --edit-disk-change-partition-uuid     
      --edit-disk-ssh-keys strings          
      --edit-disk-ssh-key-ids int           
      --edit-disk-make-ssh-keys-ephemeral   
      --edit-disk-note-ids int              
      --edit-disk-notes string              
      --edit-disk-make-notes-ephemeral      

  === Source options ===

      --os-type string          options: [centos/centos8stream/centos8/ubuntu/ubuntu2004/debian/debian10/coreos/rancheros/k3os/freebsd/...]
      --source-disk-id int      
      --source-archive-id int   

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

  === Plan options ===

      --connector string   options: [virtio/ide] (aliases: --connection)

  === Edit disk options ===

      --edit-disk-host-name string          
      --edit-disk-password string           
      --edit-disk-ip-address string         
      --edit-disk-netmask int               (aliases: --network-mask-len)
      --edit-disk-gateway string            (aliases: --default-route)
      --edit-disk-disable-pw-auth           
      --edit-disk-enable-dhcp               
      --edit-disk-change-partition-uuid     
      --edit-disk-ssh-keys strings          
      --edit-disk-ssh-key-ids int           
      --edit-disk-make-ssh-keys-ephemeral   
      --edit-disk-note-ids int              
      --edit-disk-notes string              
      --edit-disk-make-notes-ephemeral      

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

  === Output options ===

      --format string        Output format in Go templates (aliases: --fmt)
  -o, --output-type string   Output format: one of the following [table/json/yaml] (aliases: --out)
      --query string         JMESPath query
  -q, --quiet                Output IDs only

  === Parameter example ===

      --example   Output example parameters with JSON format

```

## connect-to-server {: #connect-to-server }

```console
Usage:
  connect-to-server [flags]

Aliases:
  connect-to-server, server-connect

Flags:

  === Disk-specific options ===

      --server-id int   (*required) 

  === Zone options ===

      --zone string   (*required) 

  === Input options ===

  -y, --assumeyes           Assume that the answer to any question which would be asked is yes
      --generate-skeleton   Output skeleton of parameters with JSON format (aliases: --skeleton)
      --parameters string   Input parameters in JSON format

  === Parameter example ===

      --example   Output example parameters with JSON format

```

## edit {: #edit }

```console
Usage:
  edit [flags]

Flags:

  === Edit disk options ===

      --host-name string          
      --password string           
      --ip-address string         
      --netmask int               (aliases: --network-mask-len)
      --gateway string            (aliases: --default-route)
      --disable-pw-auth           
      --enable-dhcp               
      --change-partition-uuid     
      --ssh-keys strings          
      --ssh-key-ids int           
      --make-ssh-keys-ephemeral   
      --note-ids int              
      --notes string              
      --make-notes-ephemeral      

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

## disconnect-from-server {: #disconnect-from-server }

```console
Usage:
  disconnect-from-server [flags]

Aliases:
  disconnect-from-server, server-disconnect

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

## resize-partition {: #resize-partition }

```console
Usage:
  resize-partition [flags]

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

## monitor-disk {: #monitor-disk }

```console
Usage:
  monitor-disk [flags]

Aliases:
  monitor-disk, monitor

Flags:

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
  wait-until-ready, wait, wait-for-copy

Flags:

  === Zone options ===

      --zone string   (*required) 

  === Input options ===

      --generate-skeleton   Output skeleton of parameters with JSON format (aliases: --skeleton)
      --parameters string   Input parameters in JSON format

  === Parameter example ===

      --example   Output example parameters with JSON format

```

