// package: helloworld
// file: protos/helloworld/helloworld.proto

/* tslint:disable */
/* eslint-disable */

import * as grpc from "grpc";
import * as protos_helloworld_helloworld_pb from "../../protos/helloworld/helloworld_pb";

interface IGreeterService extends grpc.ServiceDefinition<grpc.UntypedServiceImplementation> {
    sayHello: IGreeterService_ISayHello;
}

interface IGreeterService_ISayHello extends grpc.MethodDefinition<protos_helloworld_helloworld_pb.HelloRequest, protos_helloworld_helloworld_pb.HelloReply> {
    path: "/helloworld.Greeter/SayHello";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<protos_helloworld_helloworld_pb.HelloRequest>;
    requestDeserialize: grpc.deserialize<protos_helloworld_helloworld_pb.HelloRequest>;
    responseSerialize: grpc.serialize<protos_helloworld_helloworld_pb.HelloReply>;
    responseDeserialize: grpc.deserialize<protos_helloworld_helloworld_pb.HelloReply>;
}

export const GreeterService: IGreeterService;

export interface IGreeterServer {
    sayHello: grpc.handleUnaryCall<protos_helloworld_helloworld_pb.HelloRequest, protos_helloworld_helloworld_pb.HelloReply>;
}

export interface IGreeterClient {
    sayHello(request: protos_helloworld_helloworld_pb.HelloRequest, callback: (error: grpc.ServiceError | null, response: protos_helloworld_helloworld_pb.HelloReply) => void): grpc.ClientUnaryCall;
    sayHello(request: protos_helloworld_helloworld_pb.HelloRequest, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: protos_helloworld_helloworld_pb.HelloReply) => void): grpc.ClientUnaryCall;
    sayHello(request: protos_helloworld_helloworld_pb.HelloRequest, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: protos_helloworld_helloworld_pb.HelloReply) => void): grpc.ClientUnaryCall;
}

export class GreeterClient extends grpc.Client implements IGreeterClient {
    constructor(address: string, credentials: grpc.ChannelCredentials, options?: object);
    public sayHello(request: protos_helloworld_helloworld_pb.HelloRequest, callback: (error: grpc.ServiceError | null, response: protos_helloworld_helloworld_pb.HelloReply) => void): grpc.ClientUnaryCall;
    public sayHello(request: protos_helloworld_helloworld_pb.HelloRequest, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: protos_helloworld_helloworld_pb.HelloReply) => void): grpc.ClientUnaryCall;
    public sayHello(request: protos_helloworld_helloworld_pb.HelloRequest, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: protos_helloworld_helloworld_pb.HelloReply) => void): grpc.ClientUnaryCall;
}
