// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        v3.19.4
// source: auth/claim_base.proto

package auth

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

type ClaimBase struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// Types that are assignable to Props:
	//
	//	*ClaimBase_BoolClaim
	//	*ClaimBase_StringClaim
	//	*ClaimBase_StringListClaim
	Props isClaimBase_Props `protobuf_oneof:"props"`
}

func (x *ClaimBase) Reset() {
	*x = ClaimBase{}
	if protoimpl.UnsafeEnabled {
		mi := &file_auth_claim_base_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ClaimBase) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ClaimBase) ProtoMessage() {}

func (x *ClaimBase) ProtoReflect() protoreflect.Message {
	mi := &file_auth_claim_base_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ClaimBase.ProtoReflect.Descriptor instead.
func (*ClaimBase) Descriptor() ([]byte, []int) {
	return file_auth_claim_base_proto_rawDescGZIP(), []int{0}
}

func (m *ClaimBase) GetProps() isClaimBase_Props {
	if m != nil {
		return m.Props
	}
	return nil
}

func (x *ClaimBase) GetBoolClaim() *BoolClaim {
	if x, ok := x.GetProps().(*ClaimBase_BoolClaim); ok {
		return x.BoolClaim
	}
	return nil
}

func (x *ClaimBase) GetStringClaim() *StringClaim {
	if x, ok := x.GetProps().(*ClaimBase_StringClaim); ok {
		return x.StringClaim
	}
	return nil
}

func (x *ClaimBase) GetStringListClaim() *StringListClaim {
	if x, ok := x.GetProps().(*ClaimBase_StringListClaim); ok {
		return x.StringListClaim
	}
	return nil
}

type isClaimBase_Props interface {
	isClaimBase_Props()
}

type ClaimBase_BoolClaim struct {
	BoolClaim *BoolClaim `protobuf:"bytes,1,opt,name=bool_claim,json=boolClaim,proto3,oneof"`
}

type ClaimBase_StringClaim struct {
	StringClaim *StringClaim `protobuf:"bytes,2,opt,name=string_claim,json=stringClaim,proto3,oneof"`
}

type ClaimBase_StringListClaim struct {
	StringListClaim *StringListClaim `protobuf:"bytes,3,opt,name=string_list_claim,json=stringListClaim,proto3,oneof"`
}

func (*ClaimBase_BoolClaim) isClaimBase_Props() {}

func (*ClaimBase_StringClaim) isClaimBase_Props() {}

func (*ClaimBase_StringListClaim) isClaimBase_Props() {}

var File_auth_claim_base_proto protoreflect.FileDescriptor

var file_auth_claim_base_proto_rawDesc = []byte{
	0x0a, 0x15, 0x61, 0x75, 0x74, 0x68, 0x2f, 0x63, 0x6c, 0x61, 0x69, 0x6d, 0x5f, 0x62, 0x61, 0x73,
	0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x15, 0x61, 0x75, 0x74, 0x68, 0x2f, 0x62, 0x6f,
	0x6f, 0x6c, 0x5f, 0x63, 0x6c, 0x61, 0x69, 0x6d, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x17,
	0x61, 0x75, 0x74, 0x68, 0x2f, 0x73, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x5f, 0x63, 0x6c, 0x61, 0x69,
	0x6d, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x1c, 0x61, 0x75, 0x74, 0x68, 0x2f, 0x73, 0x74,
	0x72, 0x69, 0x6e, 0x67, 0x5f, 0x6c, 0x69, 0x73, 0x74, 0x5f, 0x63, 0x6c, 0x61, 0x69, 0x6d, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0xb4, 0x01, 0x0a, 0x09, 0x43, 0x6c, 0x61, 0x69, 0x6d, 0x42,
	0x61, 0x73, 0x65, 0x12, 0x2b, 0x0a, 0x0a, 0x62, 0x6f, 0x6f, 0x6c, 0x5f, 0x63, 0x6c, 0x61, 0x69,
	0x6d, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0a, 0x2e, 0x42, 0x6f, 0x6f, 0x6c, 0x43, 0x6c,
	0x61, 0x69, 0x6d, 0x48, 0x00, 0x52, 0x09, 0x62, 0x6f, 0x6f, 0x6c, 0x43, 0x6c, 0x61, 0x69, 0x6d,
	0x12, 0x31, 0x0a, 0x0c, 0x73, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x5f, 0x63, 0x6c, 0x61, 0x69, 0x6d,
	0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x0c, 0x2e, 0x53, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x43,
	0x6c, 0x61, 0x69, 0x6d, 0x48, 0x00, 0x52, 0x0b, 0x73, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x43, 0x6c,
	0x61, 0x69, 0x6d, 0x12, 0x3e, 0x0a, 0x11, 0x73, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x5f, 0x6c, 0x69,
	0x73, 0x74, 0x5f, 0x63, 0x6c, 0x61, 0x69, 0x6d, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x10,
	0x2e, 0x53, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x4c, 0x69, 0x73, 0x74, 0x43, 0x6c, 0x61, 0x69, 0x6d,
	0x48, 0x00, 0x52, 0x0f, 0x73, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x4c, 0x69, 0x73, 0x74, 0x43, 0x6c,
	0x61, 0x69, 0x6d, 0x42, 0x07, 0x0a, 0x05, 0x70, 0x72, 0x6f, 0x70, 0x73, 0x42, 0x0e, 0x5a, 0x0c,
	0x2e, 0x2f, 0x73, 0x74, 0x75, 0x62, 0x73, 0x2f, 0x61, 0x75, 0x74, 0x68, 0x62, 0x06, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_auth_claim_base_proto_rawDescOnce sync.Once
	file_auth_claim_base_proto_rawDescData = file_auth_claim_base_proto_rawDesc
)

func file_auth_claim_base_proto_rawDescGZIP() []byte {
	file_auth_claim_base_proto_rawDescOnce.Do(func() {
		file_auth_claim_base_proto_rawDescData = protoimpl.X.CompressGZIP(file_auth_claim_base_proto_rawDescData)
	})
	return file_auth_claim_base_proto_rawDescData
}

var file_auth_claim_base_proto_msgTypes = make([]protoimpl.MessageInfo, 1)
var file_auth_claim_base_proto_goTypes = []interface{}{
	(*ClaimBase)(nil),       // 0: ClaimBase
	(*BoolClaim)(nil),       // 1: BoolClaim
	(*StringClaim)(nil),     // 2: StringClaim
	(*StringListClaim)(nil), // 3: StringListClaim
}
var file_auth_claim_base_proto_depIdxs = []int32{
	1, // 0: ClaimBase.bool_claim:type_name -> BoolClaim
	2, // 1: ClaimBase.string_claim:type_name -> StringClaim
	3, // 2: ClaimBase.string_list_claim:type_name -> StringListClaim
	3, // [3:3] is the sub-list for method output_type
	3, // [3:3] is the sub-list for method input_type
	3, // [3:3] is the sub-list for extension type_name
	3, // [3:3] is the sub-list for extension extendee
	0, // [0:3] is the sub-list for field type_name
}

func init() { file_auth_claim_base_proto_init() }
func file_auth_claim_base_proto_init() {
	if File_auth_claim_base_proto != nil {
		return
	}
	file_auth_bool_claim_proto_init()
	file_auth_string_claim_proto_init()
	file_auth_string_list_claim_proto_init()
	if !protoimpl.UnsafeEnabled {
		file_auth_claim_base_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ClaimBase); i {
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
	file_auth_claim_base_proto_msgTypes[0].OneofWrappers = []interface{}{
		(*ClaimBase_BoolClaim)(nil),
		(*ClaimBase_StringClaim)(nil),
		(*ClaimBase_StringListClaim)(nil),
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_auth_claim_base_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   1,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_auth_claim_base_proto_goTypes,
		DependencyIndexes: file_auth_claim_base_proto_depIdxs,
		MessageInfos:      file_auth_claim_base_proto_msgTypes,
	}.Build()
	File_auth_claim_base_proto = out.File
	file_auth_claim_base_proto_rawDesc = nil
	file_auth_claim_base_proto_goTypes = nil
	file_auth_claim_base_proto_depIdxs = nil
}
