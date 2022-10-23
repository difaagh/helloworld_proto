REPO = github.com/difaagh/helloworld_proto
OUT_DIR = ./stub
PROTO_PATH = ./*.proto
proto_go: 
	protoc \
	--proto_path="." \
	--go_out="${OUT_DIR}/go" \
	--go_opt=module=${REPO} \
	--go-grpc_out=${OUT_DIR}/go \
	--go-grpc_opt=module=${REPO} \
	${PROTO_PATH}

proto_js:
	protoc \
	--proto_path="." \
	--js_out=import_style=commonjs,binary:"${OUT_DIR}/nodejs" \
	--grpc_out="${OUT_DIR}/nodejs" \
	--plugin=protoc-gen-grpc="./node_modules/.bin/grpc_tools_node_protoc_plugin" \
	${PROTO_PATH}

proto_ts:
	protoc \
	--proto_path="." \
	--ts_out="${OUT_DIR}/nodejs" \
	--plugin=protoc-gen-ts="./node_modules/.bin/protoc-gen-ts" \
	${PROTO_PATH}

proto: proto_go proto_js proto_ts
