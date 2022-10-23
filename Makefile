proto_go: 
	protoc \
	--proto_path="." \
	--go_out="./stub/go" \
	--go_opt=module="github.com/difaagh/helloworld_proto" \
	--go-grpc_out="./stub/go" \
	--go-grpc_opt=module="github.com/difaagh/helloworld_proto" \
	./*/*.proto

proto_js:
	protoc \
	--proto_path="." \
	--js_out=import_style=commonjs,binary:"./stub/nodejs" \
	--grpc_out="./stub/nodejs" \
	--plugin=protoc-gen-grpc="./node_modules/.bin/grpc_tools_node_protoc_plugin" \
	./*/*.proto

proto_ts:
	protoc \
	--proto_path="." \
	--ts_out="./stub/nodejs" \
	--plugin=protoc-gen-ts="./node_modules/.bin/protoc-gen-ts" \
	./*/*.proto

proto: proto_go proto_js proto_ts 
