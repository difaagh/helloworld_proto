proto_go: 
	protoc \
	--proto_path="." \
	--go_out="./protos" \
	--go_opt=module="github.com/difaagh/helloworld_proto" \
	--go-grpc_out="./protos" \
	--go-grpc_opt=module="github.com/difaagh/helloworld_proto" \
	./protos/*/*.proto

proto_js:
	protoc \
	--proto_path="." \
	--js_out=import_style=commonjs,binary:"./protos/nodejs" \
	--grpc_out="./protos/nodejs" \
	--plugin=protoc-gen-grpc="./node_modules/.bin/grpc_tools_node_protoc_plugin" \
	./protos/*/*.proto

proto_ts:
	protoc \
	--proto_path="." \
	--ts_out="./protos/nodejs" \
	--plugin=protoc-gen-ts="./node_modules/.bin/protoc-gen-ts" \
	./protos/*/*.proto

proto: proto_go proto_js proto_ts
