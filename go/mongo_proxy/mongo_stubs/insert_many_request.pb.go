// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        v3.19.4
// source: insert_many_request.proto

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

type InsertManyRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	CollectionOid []byte          `protobuf:"bytes,1,opt,name=collectionOid,proto3" json:"collectionOid,omitempty"`
	Context       *RequestContext `protobuf:"bytes,2,opt,name=context,proto3" json:"context,omitempty"`
	Documents     [][]byte        `protobuf:"bytes,3,rep,name=documents,proto3" json:"documents,omitempty"`
}

func (x *InsertManyRequest) Reset() {
	*x = InsertManyRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_insert_many_request_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *InsertManyRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*InsertManyRequest) ProtoMessage() {}

func (x *InsertManyRequest) ProtoReflect() protoreflect.Message {
	mi := &file_insert_many_request_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use InsertManyRequest.ProtoReflect.Descriptor instead.
func (*InsertManyRequest) Descriptor() ([]byte, []int) {
	return file_insert_many_request_proto_rawDescGZIP(), []int{0}
}

func (x *InsertManyRequest) GetCollectionOid() []byte {
	if x != nil {
		return x.CollectionOid
	}
	return nil
}

func (x *InsertManyRequest) GetContext() *RequestContext {
	if x != nil {
		return x.Context
	}
	return nil
}

func (x *InsertManyRequest) GetDocuments() [][]byte {
	if x != nil {
		return x.Documents
	}
	return nil
}

var File_insert_many_request_proto protoreflect.FileDescriptor

var file_insert_many_request_proto_rawDesc = []byte{
	0x0a, 0x19, 0x69, 0x6e, 0x73, 0x65, 0x72, 0x74, 0x5f, 0x6d, 0x61, 0x6e, 0x79, 0x5f, 0x72, 0x65,
	0x71, 0x75, 0x65, 0x73, 0x74, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x15, 0x72, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x5f, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x78, 0x74, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x22, 0x82, 0x01, 0x0a, 0x11, 0x49, 0x6e, 0x73, 0x65, 0x72, 0x74, 0x4d, 0x61, 0x6e,
	0x79, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x24, 0x0a, 0x0d, 0x63, 0x6f, 0x6c, 0x6c,
	0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x4f, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0c, 0x52,
	0x0d, 0x63, 0x6f, 0x6c, 0x6c, 0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x4f, 0x69, 0x64, 0x12, 0x29,
	0x0a, 0x07, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x78, 0x74, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32,
	0x0f, 0x2e, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x43, 0x6f, 0x6e, 0x74, 0x65, 0x78, 0x74,
	0x52, 0x07, 0x63, 0x6f, 0x6e, 0x74, 0x65, 0x78, 0x74, 0x12, 0x1c, 0x0a, 0x09, 0x64, 0x6f, 0x63,
	0x75, 0x6d, 0x65, 0x6e, 0x74, 0x73, 0x18, 0x03, 0x20, 0x03, 0x28, 0x0c, 0x52, 0x09, 0x64, 0x6f,
	0x63, 0x75, 0x6d, 0x65, 0x6e, 0x74, 0x73, 0x42, 0x0f, 0x5a, 0x0d, 0x2e, 0x2f, 0x6d, 0x6f, 0x6e,
	0x67, 0x6f, 0x5f, 0x73, 0x74, 0x75, 0x62, 0x73, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_insert_many_request_proto_rawDescOnce sync.Once
	file_insert_many_request_proto_rawDescData = file_insert_many_request_proto_rawDesc
)

func file_insert_many_request_proto_rawDescGZIP() []byte {
	file_insert_many_request_proto_rawDescOnce.Do(func() {
		file_insert_many_request_proto_rawDescData = protoimpl.X.CompressGZIP(file_insert_many_request_proto_rawDescData)
	})
	return file_insert_many_request_proto_rawDescData
}

var file_insert_many_request_proto_msgTypes = make([]protoimpl.MessageInfo, 1)
var file_insert_many_request_proto_goTypes = []interface{}{
	(*InsertManyRequest)(nil), // 0: InsertManyRequest
	(*RequestContext)(nil),    // 1: RequestContext
}
var file_insert_many_request_proto_depIdxs = []int32{
	1, // 0: InsertManyRequest.context:type_name -> RequestContext
	1, // [1:1] is the sub-list for method output_type
	1, // [1:1] is the sub-list for method input_type
	1, // [1:1] is the sub-list for extension type_name
	1, // [1:1] is the sub-list for extension extendee
	0, // [0:1] is the sub-list for field type_name
}

func init() { file_insert_many_request_proto_init() }
func file_insert_many_request_proto_init() {
	if File_insert_many_request_proto != nil {
		return
	}
	file_request_context_proto_init()
	if !protoimpl.UnsafeEnabled {
		file_insert_many_request_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*InsertManyRequest); i {
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
			RawDescriptor: file_insert_many_request_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   1,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_insert_many_request_proto_goTypes,
		DependencyIndexes: file_insert_many_request_proto_depIdxs,
		MessageInfos:      file_insert_many_request_proto_msgTypes,
	}.Build()
	File_insert_many_request_proto = out.File
	file_insert_many_request_proto_rawDesc = nil
	file_insert_many_request_proto_goTypes = nil
	file_insert_many_request_proto_depIdxs = nil
}
