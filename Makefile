REPO = github.com/difaagh/helloworld_proto
OUT_DIR = ./stub
PROTO_PATH = ./*.proto
NODE_MODULES= ./stub/nodejs/node_modules
proto_go: 
	protoc \
	--proto_path="." \
	--go_out="${OUT_DIR}/go" \
	--go_opt=module=${REPO} \
	--go-grpc_out=${OUT_DIR}/go \
	--go-grpc_opt=module=${REPO} \
	${PROTO_PATH}

proto_nodejs:
	--${NODE_MODULES}/.bin/grpc_tools_node_protoc \
	--proto_path="." \
	--plugin=protoc-gen-grpc="${NODE_MODULES}/.bin/grpc_tools_node_protoc_plugin" \
	--plugin=protoc-gen-ts="${NODE_MODULES}/.bin/protoc-gen-ts" \
	--js_out=import_style=commonjs,binary:"${OUT_DIR}/nodejs" \
	--grpc_out="grpc_js:${OUT_DIR}/nodejs" \
	--ts_out="service=grpc-node,mode=grpc-js:${OUT_DIR}/nodejs" \
	${PROTO_PATH}



proto: proto_go proto_nodejs 
