// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        v3.19.6
// source: delete.proto

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

type DeleteRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	CollectionOid []byte `protobuf:"bytes,1,opt,name=collectionOid,proto3" json:"collectionOid,omitempty"`
	SessionOid    []byte `protobuf:"bytes,2,opt,name=sessionOid,proto3" json:"sessionOid,omitempty"`
	Filter        []byte `protobuf:"bytes,3,opt,name=filter,proto3" json:"filter,omitempty"`
}

func (x *DeleteRequest) Reset() {
	*x = DeleteRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_delete_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *DeleteRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DeleteRequest) ProtoMessage() {}

func (x *DeleteRequest) ProtoReflect() protoreflect.Message {
	mi := &file_delete_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DeleteRequest.ProtoReflect.Descriptor instead.
func (*DeleteRequest) Descriptor() ([]byte, []int) {
	return file_delete_proto_rawDescGZIP(), []int{0}
}

func (x *DeleteRequest) GetCollectionOid() []byte {
	if x != nil {
		return x.CollectionOid
	}
	return nil
}

func (x *DeleteRequest) GetSessionOid() []byte {
	if x != nil {
		return x.SessionOid
	}
	return nil
}

func (x *DeleteRequest) GetFilter() []byte {
	if x != nil {
		return x.Filter
	}
	return nil
}

type DeleteResult struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	DeletedCount int64 `protobuf:"varint,1,opt,name=deletedCount,proto3" json:"deletedCount,omitempty"`
}

func (x *DeleteResult) Reset() {
	*x = DeleteResult{}
	if protoimpl.UnsafeEnabled {
		mi := &file_delete_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *DeleteResult) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DeleteResult) ProtoMessage() {}

func (x *DeleteResult) ProtoReflect() protoreflect.Message {
	mi := &file_delete_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DeleteResult.ProtoReflect.Descriptor instead.
func (*DeleteResult) Descriptor() ([]byte, []int) {
	return file_delete_proto_rawDescGZIP(), []int{1}
}

func (x *DeleteResult) GetDeletedCount() int64 {
	if x != nil {
		return x.DeletedCount
	}
	return 0
}

var File_delete_proto protoreflect.FileDescriptor

var file_delete_proto_rawDesc = []byte{
	0x0a, 0x0c, 0x64, 0x65, 0x6c, 0x65, 0x74, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x6d,
	0x0a, 0x0d, 0x44, 0x65, 0x6c, 0x65, 0x74, 0x65, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12,
	0x24, 0x0a, 0x0d, 0x63, 0x6f, 0x6c, 0x6c, 0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x4f, 0x69, 0x64,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x0d, 0x63, 0x6f, 0x6c, 0x6c, 0x65, 0x63, 0x74, 0x69,
	0x6f, 0x6e, 0x4f, 0x69, 0x64, 0x12, 0x1e, 0x0a, 0x0a, 0x73, 0x65, 0x73, 0x73, 0x69, 0x6f, 0x6e,
	0x4f, 0x69, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x0a, 0x73, 0x65, 0x73, 0x73, 0x69,
	0x6f, 0x6e, 0x4f, 0x69, 0x64, 0x12, 0x16, 0x0a, 0x06, 0x66, 0x69, 0x6c, 0x74, 0x65, 0x72, 0x18,
	0x03, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x06, 0x66, 0x69, 0x6c, 0x74, 0x65, 0x72, 0x22, 0x32, 0x0a,
	0x0c, 0x44, 0x65, 0x6c, 0x65, 0x74, 0x65, 0x52, 0x65, 0x73, 0x75, 0x6c, 0x74, 0x12, 0x22, 0x0a,
	0x0c, 0x64, 0x65, 0x6c, 0x65, 0x74, 0x65, 0x64, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x18, 0x01, 0x20,
	0x01, 0x28, 0x03, 0x52, 0x0c, 0x64, 0x65, 0x6c, 0x65, 0x74, 0x65, 0x64, 0x43, 0x6f, 0x75, 0x6e,
	0x74, 0x42, 0x0f, 0x5a, 0x0d, 0x2e, 0x2f, 0x6d, 0x6f, 0x6e, 0x67, 0x6f, 0x5f, 0x73, 0x74, 0x75,
	0x62, 0x73, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_delete_proto_rawDescOnce sync.Once
	file_delete_proto_rawDescData = file_delete_proto_rawDesc
)

func file_delete_proto_rawDescGZIP() []byte {
	file_delete_proto_rawDescOnce.Do(func() {
		file_delete_proto_rawDescData = protoimpl.X.CompressGZIP(file_delete_proto_rawDescData)
	})
	return file_delete_proto_rawDescData
}

var file_delete_proto_msgTypes = make([]protoimpl.MessageInfo, 2)
var file_delete_proto_goTypes = []interface{}{
	(*DeleteRequest)(nil), // 0: DeleteRequest
	(*DeleteResult)(nil),  // 1: DeleteResult
}
var file_delete_proto_depIdxs = []int32{
	0, // [0:0] is the sub-list for method output_type
	0, // [0:0] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_delete_proto_init() }
func file_delete_proto_init() {
	if File_delete_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_delete_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*DeleteRequest); i {
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
		file_delete_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*DeleteResult); i {
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
			RawDescriptor: file_delete_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   2,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_delete_proto_goTypes,
		DependencyIndexes: file_delete_proto_depIdxs,
		MessageInfos:      file_delete_proto_msgTypes,
	}.Build()
	File_delete_proto = out.File
	file_delete_proto_rawDesc = nil
	file_delete_proto_goTypes = nil
	file_delete_proto_depIdxs = nil
}
