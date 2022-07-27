1. 此文件夹下的脚本实现的功能是部署etcd集群
2. etcd文件夹中是适用于riscv64的etcd,etcdctl,etcdutl二进制包
3. 由于脚本中使用hostname作为node name,所以使用脚本的前提是集群中所有node的hostname的唯一性
4. 文件说明：  
   vars_etcd.yaml：脚本所要使用到的变量文件  
   create_cluster_static.yaml：使用static方式部署etcd集群的脚本  
   create_cluster_discovery.yaml：使用discovery方式部署etcd集群的脚本  
   etcd_static.service.j2：使用static方式部署etcd集群的etcd配置文件etcd.service的模板  
   etcd_discovery.service.j2：使用discovery方式部署etcd集群的etcd配置文件etcd.service的模板  
   get_discovery_url.yaml：获取discovery url的脚本，在使用create_cluster_discovery.yaml部署etcd集群前需要先使用此脚本获取discovery url，获取的discovery url存储在变量文件vars_discovery.yaml中  
   vars_discovery.yaml：执行get_discovery_url.yaml获取的discovery url存储在此变量文件中  
