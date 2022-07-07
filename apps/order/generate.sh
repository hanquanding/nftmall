#!/bin/bash
goctl rpc new rpc
goctl api new admin

goctl rpc protoc ./rpc/order.proto --go_out=./rpc/ --go-grpc_out=./rpc/ --zrpc_out=./rpc/
