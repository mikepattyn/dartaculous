// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        v3.19.4
// source: end_transaction_request.proto

package mongo_stubs

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type EndTransactionRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	ConnectionOid  []byte `protobuf:"bytes,1,opt,name=connectionOid,proto3" json:"connectionOid,omitempty"`
	SessionOid     []byte `protobuf:"bytes,2,opt,name=sessionOid,proto3" json:"sessionOid,omitempty"`
	TransactionOid []byte `protobuf:"bytes,3,opt,name=transactionOid,proto3" json:"transactionOid,omitempty"`
	ErrorMessage   string `protobuf:"bytes,4,opt,name=errorMessage,proto3" json:"errorMessage,omitempty"`
}

func (x *EndTransactionRequest) Reset() {
	*x = EndTransactionRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_end_transaction_request_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *EndTransactionRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*EndTransactionRequest) ProtoMessage() {}

func (x *EndTransactionRequest) ProtoReflect() protoreflect.Message {
	mi := &file_end_transaction_request_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use EndTransactionRequest.ProtoReflect.Descriptor instead.
func (*EndTransactionRequest) Descriptor() ([]byte, []int) {
	return file_end_transaction_request_proto_rawDescGZIP(), []int{0}
}

func (x *EndTransactionRequest) GetConnectionOid() []byte {
	if x != nil {
		return x.ConnectionOid
	}
	return nil
}

func (x *EndTransactionRequest) GetSessionOid() []byte {
	if x != nil {
		return x.SessionOid
	}
	return nil
}

func (x *EndTransactionRequest) GetTransactionOid() []byte {
	if x != nil {
		return x.TransactionOid
	}
	return nil
}

func (x *EndTransactionRequest) GetErrorMessage() string {
	if x != nil {
		return x.ErrorMessage
	}
	return ""
}

var File_end_transaction_request_proto protoreflect.FileDescriptor

var file_end_transaction_request_proto_rawDesc = []byte{
	0x0a, 0x1d, 0x65, 0x6e, 0x64, 0x5f, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f,
	0x6e, 0x5f, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22,
	0xa9, 0x01, 0x0a, 0x15, 0x45, 0x6e, 0x64, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69,
	0x6f, 0x6e, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x24, 0x0a, 0x0d, 0x63, 0x6f, 0x6e,
	0x6e, 0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x4f, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0c,
	0x52, 0x0d, 0x63, 0x6f, 0x6e, 0x6e, 0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x4f, 0x69, 0x64, 0x12,
	0x1e, 0x0a, 0x0a, 0x73, 0x65, 0x73, 0x73, 0x69, 0x6f, 0x6e, 0x4f, 0x69, 0x64, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x0c, 0x52, 0x0a, 0x73, 0x65, 0x73, 0x73, 0x69, 0x6f, 0x6e, 0x4f, 0x69, 0x64, 0x12,
	0x26, 0x0a, 0x0e, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x4f, 0x69,
	0x64, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x0e, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63,
	0x74, 0x69, 0x6f, 0x6e, 0x4f, 0x69, 0x64, 0x12, 0x22, 0x0a, 0x0c, 0x65, 0x72, 0x72, 0x6f, 0x72,
	0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0c, 0x65,
	0x72, 0x72, 0x6f, 0x72, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x42, 0x0f, 0x5a, 0x0d, 0x2e,
	0x2f, 0x6d, 0x6f, 0x6e, 0x67, 0x6f, 0x5f, 0x73, 0x74, 0x75, 0x62, 0x73, 0x62, 0x06, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_end_transaction_request_proto_rawDescOnce sync.Once
	file_end_transaction_request_proto_rawDescData = file_end_transaction_request_proto_rawDesc
)

func file_end_transaction_request_proto_rawDescGZIP() []byte {
	file_end_transaction_request_proto_rawDescOnce.Do(func() {
		file_end_transaction_request_proto_rawDescData = protoimpl.X.CompressGZIP(file_end_transaction_request_proto_rawDescData)
	})
	return file_end_transaction_request_proto_rawDescData
}

var file_end_transaction_request_proto_msgTypes = make([]protoimpl.MessageInfo, 1)
var file_end_transaction_request_proto_goTypes = []interface{}{
	(*EndTransactionRequest)(nil), // 0: EndTransactionRequest
}
var file_end_transaction_request_proto_depIdxs = []int32{
	0, // [0:0] is the sub-list for method output_type
	0, // [0:0] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_end_transaction_request_proto_init() }
func file_end_transaction_request_proto_init() {
	if File_end_transaction_request_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_end_transaction_request_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*EndTransactionRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_end_transaction_request_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   1,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_end_transaction_request_proto_goTypes,
		DependencyIndexes: file_end_transaction_request_proto_depIdxs,
		MessageInfos:      file_end_transaction_request_proto_msgTypes,
	}.Build()
	File_end_transaction_request_proto = out.File
	file_end_transaction_request_proto_rawDesc = nil
	file_end_transaction_request_proto_goTypes = nil
	file_end_transaction_request_proto_depIdxs = nil
}
