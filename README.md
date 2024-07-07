## nftmall NFT数字藏品交易平台

nftmall 微服务架构、数字藏品交易平台服务端 🧩

#### 架构图设计

```
# 稍后附上.......

```


#### 服务端口规定

```
nftmall:

# 用户服务
user-service:
user-api           		127.0.0.1:10001
user-rpc           		127.0.0.1:10002

# 广告服务
ad-service:
ad-api             		127.0.0.1:20001
ad-rpc             		127.0.0.1:20002

# 藏品服务
art-service:
art-api            		127.0.0.1:30001
art-rpc            		127.0.0.1:30002

# 订单服务
order-service:
order-api          		127.0.0.1:40001
order-rpc          		127.0.0.1:40002

# 盲盒服务
mysterybox-service:
mysterybox-api     		127.0.0.1:50001
mysterybox-rpc     		127.0.0.1:50002

# 支付服务
payment-service:
payment-api        		127.0.0.1:60001
payment-rpc        		127.0.0.1:60002

# 联盟链服务
consortium-service:
consortium-api     		127.0.0.1:70001
consortium-rpc     		127.0.0.1:70002
```

#### 项目目录结构

```
├── README.md
├── application
│   ├── ad
│   ├── art
│   ├── consortium
│   ├── mysterybox
│   ├── order
│   ├── payment
│   └── user
├── common
│   ├── constant
│   ├── errcode
│   ├── go.mod
│   ├── go.sum
│   ├── model
│   ├── pkg
│   └── response
├── database
│   ├── ad
│   └── member
├── deployment
│   ├── docker
│   ├── docker-compose-mongo.yml
│   └── docker-compose.yml
├── go.mod
├── go.work
└── go.work.sum

```

相关技术栈：
- golang
- go-zero
- gorm
- mysql
- redis
- kafka
- dtm
- etcd
- nginx-gateway
- jaeger
- prometheus
- elasticsearch
- kibana
- docker
- docker-compose
- kubernetes
