// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        v3.19.4
// source: fcm/batch_response.proto

package fcm

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

type BatchResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	FailureCount int32           `protobuf:"varint,1,opt,name=failure_count,json=failureCount,proto3" json:"failure_count,omitempty"`
	SuccessCount int32           `protobuf:"varint,2,opt,name=success_count,json=successCount,proto3" json:"success_count,omitempty"`
	Responses    []*SendResponse `protobuf:"bytes,3,rep,name=responses,proto3" json:"responses,omitempty"`
}

func (x *BatchResponse) Reset() {
	*x = BatchResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_fcm_batch_response_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *BatchResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*BatchResponse) ProtoMessage() {}

func (x *BatchResponse) ProtoReflect() protoreflect.Message {
	mi := &file_fcm_batch_response_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use BatchResponse.ProtoReflect.Descriptor instead.
func (*BatchResponse) Descriptor() ([]byte, []int) {
	return file_fcm_batch_response_proto_rawDescGZIP(), []int{0}
}

func (x *BatchResponse) GetFailureCount() int32 {
	if x != nil {
		return x.FailureCount
	}
	return 0
}

func (x *BatchResponse) GetSuccessCount() int32 {
	if x != nil {
		return x.SuccessCount
	}
	return 0
}

func (x *BatchResponse) GetResponses() []*SendResponse {
	if x != nil {
		return x.Responses
	}
	return nil
}

type SendResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	MessageId         string `protobuf:"bytes,1,opt,name=message_id,json=messageId,proto3" json:"message_id,omitempty"`
	MessageIdHasValue bool   `protobuf:"varint,2,opt,name=message_id_has_value,json=messageIdHasValue,proto3" json:"message_id_has_value,omitempty"`
	IsSuccess         bool   `protobuf:"varint,3,opt,name=is_success,json=isSuccess,proto3" json:"is_success,omitempty"`
	Error             string `protobuf:"bytes,4,opt,name=error,proto3" json:"error,omitempty"`
}

func (x *SendResponse) Reset() {
	*x = SendResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_fcm_batch_response_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *SendResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*SendResponse) ProtoMessage() {}

func (x *SendResponse) ProtoReflect() protoreflect.Message {
	mi := &file_fcm_batch_response_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use SendResponse.ProtoReflect.Descriptor instead.
func (*SendResponse) Descriptor() ([]byte, []int) {
	return file_fcm_batch_response_proto_rawDescGZIP(), []int{1}
}

func (x *SendResponse) GetMessageId() string {
	if x != nil {
		return x.MessageId
	}
	return ""
}

func (x *SendResponse) GetMessageIdHasValue() bool {
	if x != nil {
		return x.MessageIdHasValue
	}
	return false
}

func (x *SendResponse) GetIsSuccess() bool {
	if x != nil {
		return x.IsSuccess
	}
	return false
}

func (x *SendResponse) GetError() string {
	if x != nil {
		return x.Error
	}
	return ""
}

var File_fcm_batch_response_proto protoreflect.FileDescriptor

var file_fcm_batch_response_proto_rawDesc = []byte{
	0x0a, 0x18, 0x66, 0x63, 0x6d, 0x2f, 0x62, 0x61, 0x74, 0x63, 0x68, 0x5f, 0x72, 0x65, 0x73, 0x70,
	0x6f, 0x6e, 0x73, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x86, 0x01, 0x0a, 0x0d, 0x42,
	0x61, 0x74, 0x63, 0x68, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x23, 0x0a, 0x0d,
	0x66, 0x61, 0x69, 0x6c, 0x75, 0x72, 0x65, 0x5f, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x18, 0x01, 0x20,
	0x01, 0x28, 0x05, 0x52, 0x0c, 0x66, 0x61, 0x69, 0x6c, 0x75, 0x72, 0x65, 0x43, 0x6f, 0x75, 0x6e,
	0x74, 0x12, 0x23, 0x0a, 0x0d, 0x73, 0x75, 0x63, 0x63, 0x65, 0x73, 0x73, 0x5f, 0x63, 0x6f, 0x75,
	0x6e, 0x74, 0x18, 0x02, 0x20, 0x01, 0x28, 0x05, 0x52, 0x0c, 0x73, 0x75, 0x63, 0x63, 0x65, 0x73,
	0x73, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x12, 0x2b, 0x0a, 0x09, 0x72, 0x65, 0x73, 0x70, 0x6f, 0x6e,
	0x73, 0x65, 0x73, 0x18, 0x03, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x0d, 0x2e, 0x53, 0x65, 0x6e, 0x64,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x52, 0x09, 0x72, 0x65, 0x73, 0x70, 0x6f, 0x6e,
	0x73, 0x65, 0x73, 0x22, 0x93, 0x01, 0x0a, 0x0c, 0x53, 0x65, 0x6e, 0x64, 0x52, 0x65, 0x73, 0x70,
	0x6f, 0x6e, 0x73, 0x65, 0x12, 0x1d, 0x0a, 0x0a, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f,
	0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67,
	0x65, 0x49, 0x64, 0x12, 0x2f, 0x0a, 0x14, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x5f, 0x69,
	0x64, 0x5f, 0x68, 0x61, 0x73, 0x5f, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28,
	0x08, 0x52, 0x11, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x49, 0x64, 0x48, 0x61, 0x73, 0x56,
	0x61, 0x6c, 0x75, 0x65, 0x12, 0x1d, 0x0a, 0x0a, 0x69, 0x73, 0x5f, 0x73, 0x75, 0x63, 0x63, 0x65,
	0x73, 0x73, 0x18, 0x03, 0x20, 0x01, 0x28, 0x08, 0x52, 0x09, 0x69, 0x73, 0x53, 0x75, 0x63, 0x63,
	0x65, 0x73, 0x73, 0x12, 0x14, 0x0a, 0x05, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x18, 0x04, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x05, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x42, 0x0d, 0x5a, 0x0b, 0x2e, 0x2f, 0x73,
	0x74, 0x75, 0x62, 0x73, 0x2f, 0x66, 0x63, 0x6d, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_fcm_batch_response_proto_rawDescOnce sync.Once
	file_fcm_batch_response_proto_rawDescData = file_fcm_batch_response_proto_rawDesc
)

func file_fcm_batch_response_proto_rawDescGZIP() []byte {
	file_fcm_batch_response_proto_rawDescOnce.Do(func() {
		file_fcm_batch_response_proto_rawDescData = protoimpl.X.CompressGZIP(file_fcm_batch_response_proto_rawDescData)
	})
	return file_fcm_batch_response_proto_rawDescData
}

var file_fcm_batch_response_proto_msgTypes = make([]protoimpl.MessageInfo, 2)
var file_fcm_batch_response_proto_goTypes = []interface{}{
	(*BatchResponse)(nil), // 0: BatchResponse
	(*SendResponse)(nil),  // 1: SendResponse
}
var file_fcm_batch_response_proto_depIdxs = []int32{
	1, // 0: BatchResponse.responses:type_name -> SendResponse
	1, // [1:1] is the sub-list for method output_type
	1, // [1:1] is the sub-list for method input_type
	1, // [1:1] is the sub-list for extension type_name
	1, // [1:1] is the sub-list for extension extendee
	0, // [0:1] is the sub-list for field type_name
}

func init() { file_fcm_batch_response_proto_init() }
func file_fcm_batch_response_proto_init() {
	if File_fcm_batch_response_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_fcm_batch_response_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*BatchResponse); i {
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
		file_fcm_batch_response_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*SendResponse); i {
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
			RawDescriptor: file_fcm_batch_response_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   2,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_fcm_batch_response_proto_goTypes,
		DependencyIndexes: file_fcm_batch_response_proto_depIdxs,
		MessageInfos:      file_fcm_batch_response_proto_msgTypes,
	}.Build()
	File_fcm_batch_response_proto = out.File
	file_fcm_batch_response_proto_rawDesc = nil
	file_fcm_batch_response_proto_goTypes = nil
	file_fcm_batch_response_proto_depIdxs = nil
}
