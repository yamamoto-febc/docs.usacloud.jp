# コマンドリファレンス / server

## コマンド一覧

- Basic Commands
    - [list](#list)
    - [create](#create)
    - [read](#read)
    - [update](#update)
    - [delete](#delete)
- Connect Commands
    - [ssh](#ssh)
    - [vnc](#vnc)
    - [rdp](#rdp)
- Power Management Commands
    - [boot](#boot)
    - [shutdown](#shutdown)
    - [reset](#reset)
- Monitoring Commands
    - [monitor-cpu](#monitor-cpu)
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

Aliases:
  create, build

Flags:

  === Common options ===

      --disk-name string          
      --name string               (*required) 
      --description string        
      --disk-description string   
      --disk-tags strings         
      --tags strings              
      --disk-icon-id int          
      --icon-id int               

  === Plan options ===

      --cpu int             (*required) (aliases: --core) (default 1)
      --memory int          (*required)  (default 1)
      --commitment string   (*required) options: [standard/dedicatedcpu] (default "standard")
      --generation string   (*required) options: [default/g100/g200] (default "default")

  === Server-specific options ===

      --boot-after-create         
      --cdrom-id int              (aliases: --iso-image-id)
      --interface-driver string   (*required) options: [virtio/e1000] (default "virtio")
      --private-host-id int       

  === Disk options ===

      --disk-connection string       options: [virtio/ide]
      --disk-disk-plan string        options: [ssd/hdd]
      --disk-distant-from int        
      --disk-id int                  
      --disk-no-wait                 
      --disk-os-type string          options: [centos/centos8stream/centos8/ubuntu/ubuntu2004/debian/debian10/coreos/rancheros/k3os/freebsd/...]
      --disk-size int                (aliases: --size-gb)
      --disk-source-archive-id int   
      --disk-source-disk-id int      
      --disk-ids int                 
      --disks string                 

  === Edit disk options ===

      --disk-edit-host-name string          
      --disk-edit-password string           
      --disk-edit-ip-address string         
      --disk-edit-netmask int               (aliases: --network-mask-len)
      --disk-edit-gateway string            (aliases: --default-route)
      --disk-edit-disable-pw-auth           
      --disk-edit-enable-dhcp               
      --disk-edit-change-partition-uuid     
      --disk-edit-ssh-keys strings          
      --disk-edit-ssh-key-ids int           
      --disk-edit-make-ssh-keys-ephemeral   
      --disk-edit-note-ids int              
      --disk-edit-notes string              
      --disk-edit-make-notes-ephemeral      

  === Network options ===

      --network-interface-packet-filter-id int     
      --network-interface-upstream string          options: [shared/disconnected/(switch-id)]
      --network-interface-user-ip-address string   
      --network-interfaces string                  

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

      --cpu int             (aliases: --core)
      --memory int          
      --commitment string   options: [standard/dedicatedcpu]
      --generation string   options: [default/g100/g200]

  === Server-specific options ===

      --cdrom-id int                (aliases: --iso-image-id)
      --disks string                
      --force-shutdown              
      --interface-driver string     options: [interface_dirver]
      --network-interfaces string   
      --private-host-id int         

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
      --with-disks   

  === Zone options ===

      --zone string   (*required) 

  === Error handling options ===

      --fail-if-not-found   

  === Input options ===

  -y, --assumeyes           Assume that the answer to any question which would be asked is yes
      --generate-skeleton   Output skeleton of parameters with JSON format (aliases: --skeleton)
      --parameters string   Input parameters in JSON format

  === Parameter example ===

      --example   Output example parameters with JSON format

```

## ssh {: #ssh }

```console
Usage:
  ssh [flags]

Flags:

  === Server-specific options ===

  -i, --key string         
      --password string    (aliases: --pass-phrase)
  -p, --port int           (*required)  (default 22)
  -l, --user string        
      --wait-until-ready   (aliases: --wait)

  === Zone options ===

      --zone string   (*required) 

  === Input options ===

      --generate-skeleton   Output skeleton of parameters with JSON format (aliases: --skeleton)
      --parameters string   Input parameters in JSON format

  === Parameter example ===

      --example   Output example parameters with JSON format

```

## vnc {: #vnc }

```console
Usage:
  vnc [flags]

Flags:

  === Server-specific options ===

      --wait-until-ready   (aliases: --wait)

  === Zone options ===

      --zone string   (*required) 

  === Input options ===

      --generate-skeleton   Output skeleton of parameters with JSON format (aliases: --skeleton)
      --parameters string   Input parameters in JSON format

  === Parameter example ===

      --example   Output example parameters with JSON format

```

## rdp {: #rdp }

```console
Usage:
  rdp [flags]

Aliases:
  rdp, remote-desktop

Flags:

  === Server-specific options ===

      --port int            (default 3389)
      --user string         (default "Administrator")
      --wait-until-ready   (aliases: --wait)

  === Zone options ===

      --zone string   (*required) 

  === Input options ===

      --generate-skeleton   Output skeleton of parameters with JSON format (aliases: --skeleton)
      --parameters string   Input parameters in JSON format

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

  === Server-specific options ===

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

## monitor-cpu {: #monitor-cpu }

```console
Usage:
  monitor-cpu [flags]

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

