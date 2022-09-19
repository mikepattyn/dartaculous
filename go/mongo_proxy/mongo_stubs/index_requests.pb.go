// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.28.1
// 	protoc        v3.19.4
// source: index_requests.proto

package mongo_stubs

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	wrapperspb "google.golang.org/protobuf/types/known/wrapperspb"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type Collation struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Locale          string `protobuf:"bytes,1,opt,name=Locale,proto3" json:"Locale,omitempty"`
	CaseLevel       bool   `protobuf:"varint,2,opt,name=CaseLevel,proto3" json:"CaseLevel,omitempty"`
	CaseFirst       string `protobuf:"bytes,3,opt,name=CaseFirst,proto3" json:"CaseFirst,omitempty"`
	Strength        int32  `protobuf:"varint,4,opt,name=Strength,proto3" json:"Strength,omitempty"`
	NumericOrdering bool   `protobuf:"varint,5,opt,name=NumericOrdering,proto3" json:"NumericOrdering,omitempty"`
	Alternate       string `protobuf:"bytes,6,opt,name=Alternate,proto3" json:"Alternate,omitempty"`
	MaxVariable     string `protobuf:"bytes,7,opt,name=MaxVariable,proto3" json:"MaxVariable,omitempty"`
	Normalization   bool   `protobuf:"varint,8,opt,name=Normalization,proto3" json:"Normalization,omitempty"`
	Backwards       bool   `protobuf:"varint,9,opt,name=Backwards,proto3" json:"Backwards,omitempty"`
}

func (x *Collation) Reset() {
	*x = Collation{}
	if protoimpl.UnsafeEnabled {
		mi := &file_index_requests_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *Collation) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*Collation) ProtoMessage() {}

func (x *Collation) ProtoReflect() protoreflect.Message {
	mi := &file_index_requests_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use Collation.ProtoReflect.Descriptor instead.
func (*Collation) Descriptor() ([]byte, []int) {
	return file_index_requests_proto_rawDescGZIP(), []int{0}
}

func (x *Collation) GetLocale() string {
	if x != nil {
		return x.Locale
	}
	return ""
}

func (x *Collation) GetCaseLevel() bool {
	if x != nil {
		return x.CaseLevel
	}
	return false
}

func (x *Collation) GetCaseFirst() string {
	if x != nil {
		return x.CaseFirst
	}
	return ""
}

func (x *Collation) GetStrength() int32 {
	if x != nil {
		return x.Strength
	}
	return 0
}

func (x *Collation) GetNumericOrdering() bool {
	if x != nil {
		return x.NumericOrdering
	}
	return false
}

func (x *Collation) GetAlternate() string {
	if x != nil {
		return x.Alternate
	}
	return ""
}

func (x *Collation) GetMaxVariable() string {
	if x != nil {
		return x.MaxVariable
	}
	return ""
}

func (x *Collation) GetNormalization() bool {
	if x != nil {
		return x.Normalization
	}
	return false
}

func (x *Collation) GetBackwards() bool {
	if x != nil {
		return x.Backwards
	}
	return false
}

type IndexOptions struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Background              *wrapperspb.BoolValue   `protobuf:"bytes,1,opt,name=background,proto3" json:"background,omitempty"`
	ExpireAfterSeconds      *wrapperspb.Int32Value  `protobuf:"bytes,2,opt,name=expireAfterSeconds,proto3" json:"expireAfterSeconds,omitempty"`
	Name                    *wrapperspb.StringValue `protobuf:"bytes,3,opt,name=name,proto3" json:"name,omitempty"`
	Sparse                  *wrapperspb.BoolValue   `protobuf:"bytes,4,opt,name=sparse,proto3" json:"sparse,omitempty"`
	StorageEngine           []byte                  `protobuf:"bytes,5,opt,name=storageEngine,proto3" json:"storageEngine,omitempty"`
	Unique                  *wrapperspb.BoolValue   `protobuf:"bytes,6,opt,name=unique,proto3" json:"unique,omitempty"`
	Version                 *wrapperspb.Int32Value  `protobuf:"bytes,7,opt,name=version,proto3" json:"version,omitempty"`
	DefaultLanguage         *wrapperspb.StringValue `protobuf:"bytes,8,opt,name=defaultLanguage,proto3" json:"defaultLanguage,omitempty"`
	LanguageOverride        *wrapperspb.StringValue `protobuf:"bytes,9,opt,name=languageOverride,proto3" json:"languageOverride,omitempty"`
	TextVersion             *wrapperspb.Int32Value  `protobuf:"bytes,10,opt,name=textVersion,proto3" json:"textVersion,omitempty"`
	Weights                 []byte                  `protobuf:"bytes,11,opt,name=weights,proto3" json:"weights,omitempty"`
	SphereVersion           *wrapperspb.Int32Value  `protobuf:"bytes,12,opt,name=sphereVersion,proto3" json:"sphereVersion,omitempty"`
	Bits                    *wrapperspb.Int32Value  `protobuf:"bytes,13,opt,name=bits,proto3" json:"bits,omitempty"`
	Max                     *wrapperspb.DoubleValue `protobuf:"bytes,14,opt,name=max,proto3" json:"max,omitempty"`
	Min                     *wrapperspb.DoubleValue `protobuf:"bytes,15,opt,name=min,proto3" json:"min,omitempty"`
	BucketSize              *wrapperspb.Int32Value  `protobuf:"bytes,16,opt,name=bucketSize,proto3" json:"bucketSize,omitempty"`
	PartialFilterExpression []byte                  `protobuf:"bytes,17,opt,name=partialFilterExpression,proto3" json:"partialFilterExpression,omitempty"`
	Collation               []byte                  `protobuf:"bytes,18,opt,name=collation,proto3" json:"collation,omitempty"`
	WildcardProjection      []byte                  `protobuf:"bytes,19,opt,name=wildcardProjection,proto3" json:"wildcardProjection,omitempty"`
	Hidden                  *wrapperspb.BoolValue   `protobuf:"bytes,20,opt,name=hidden,proto3" json:"hidden,omitempty"`
}

func (x *IndexOptions) Reset() {
	*x = IndexOptions{}
	if protoimpl.UnsafeEnabled {
		mi := &file_index_requests_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *IndexOptions) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*IndexOptions) ProtoMessage() {}

func (x *IndexOptions) ProtoReflect() protoreflect.Message {
	mi := &file_index_requests_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use IndexOptions.ProtoReflect.Descriptor instead.
func (*IndexOptions) Descriptor() ([]byte, []int) {
	return file_index_requests_proto_rawDescGZIP(), []int{1}
}

func (x *IndexOptions) GetBackground() *wrapperspb.BoolValue {
	if x != nil {
		return x.Background
	}
	return nil
}

func (x *IndexOptions) GetExpireAfterSeconds() *wrapperspb.Int32Value {
	if x != nil {
		return x.ExpireAfterSeconds
	}
	return nil
}

func (x *IndexOptions) GetName() *wrapperspb.StringValue {
	if x != nil {
		return x.Name
	}
	return nil
}

func (x *IndexOptions) GetSparse() *wrapperspb.BoolValue {
	if x != nil {
		return x.Sparse
	}
	return nil
}

func (x *IndexOptions) GetStorageEngine() []byte {
	if x != nil {
		return x.StorageEngine
	}
	return nil
}

func (x *IndexOptions) GetUnique() *wrapperspb.BoolValue {
	if x != nil {
		return x.Unique
	}
	return nil
}

func (x *IndexOptions) GetVersion() *wrapperspb.Int32Value {
	if x != nil {
		return x.Version
	}
	return nil
}

func (x *IndexOptions) GetDefaultLanguage() *wrapperspb.StringValue {
	if x != nil {
		return x.DefaultLanguage
	}
	return nil
}

func (x *IndexOptions) GetLanguageOverride() *wrapperspb.StringValue {
	if x != nil {
		return x.LanguageOverride
	}
	return nil
}

func (x *IndexOptions) GetTextVersion() *wrapperspb.Int32Value {
	if x != nil {
		return x.TextVersion
	}
	return nil
}

func (x *IndexOptions) GetWeights() []byte {
	if x != nil {
		return x.Weights
	}
	return nil
}

func (x *IndexOptions) GetSphereVersion() *wrapperspb.Int32Value {
	if x != nil {
		return x.SphereVersion
	}
	return nil
}

func (x *IndexOptions) GetBits() *wrapperspb.Int32Value {
	if x != nil {
		return x.Bits
	}
	return nil
}

func (x *IndexOptions) GetMax() *wrapperspb.DoubleValue {
	if x != nil {
		return x.Max
	}
	return nil
}

func (x *IndexOptions) GetMin() *wrapperspb.DoubleValue {
	if x != nil {
		return x.Min
	}
	return nil
}

func (x *IndexOptions) GetBucketSize() *wrapperspb.Int32Value {
	if x != nil {
		return x.BucketSize
	}
	return nil
}

func (x *IndexOptions) GetPartialFilterExpression() []byte {
	if x != nil {
		return x.PartialFilterExpression
	}
	return nil
}

func (x *IndexOptions) GetCollation() []byte {
	if x != nil {
		return x.Collation
	}
	return nil
}

func (x *IndexOptions) GetWildcardProjection() []byte {
	if x != nil {
		return x.WildcardProjection
	}
	return nil
}

func (x *IndexOptions) GetHidden() *wrapperspb.BoolValue {
	if x != nil {
		return x.Hidden
	}
	return nil
}

type CreateIndexRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	CollectionOid []byte `protobuf:"bytes,1,opt,name=collectionOid,proto3" json:"collectionOid,omitempty"`
	Keys          []byte `protobuf:"bytes,2,opt,name=keys,proto3" json:"keys,omitempty"`
	IndexOptions  []byte `protobuf:"bytes,3,opt,name=indexOptions,proto3" json:"indexOptions,omitempty"`
}

func (x *CreateIndexRequest) Reset() {
	*x = CreateIndexRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_index_requests_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateIndexRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateIndexRequest) ProtoMessage() {}

func (x *CreateIndexRequest) ProtoReflect() protoreflect.Message {
	mi := &file_index_requests_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateIndexRequest.ProtoReflect.Descriptor instead.
func (*CreateIndexRequest) Descriptor() ([]byte, []int) {
	return file_index_requests_proto_rawDescGZIP(), []int{2}
}

func (x *CreateIndexRequest) GetCollectionOid() []byte {
	if x != nil {
		return x.CollectionOid
	}
	return nil
}

func (x *CreateIndexRequest) GetKeys() []byte {
	if x != nil {
		return x.Keys
	}
	return nil
}

func (x *CreateIndexRequest) GetIndexOptions() []byte {
	if x != nil {
		return x.IndexOptions
	}
	return nil
}

type DropIndexRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	CollectionOid []byte `protobuf:"bytes,1,opt,name=collectionOid,proto3" json:"collectionOid,omitempty"`
	Name          string `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
}

func (x *DropIndexRequest) Reset() {
	*x = DropIndexRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_index_requests_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *DropIndexRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DropIndexRequest) ProtoMessage() {}

func (x *DropIndexRequest) ProtoReflect() protoreflect.Message {
	mi := &file_index_requests_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DropIndexRequest.ProtoReflect.Descriptor instead.
func (*DropIndexRequest) Descriptor() ([]byte, []int) {
	return file_index_requests_proto_rawDescGZIP(), []int{3}
}

func (x *DropIndexRequest) GetCollectionOid() []byte {
	if x != nil {
		return x.CollectionOid
	}
	return nil
}

func (x *DropIndexRequest) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

type DropAllIndexesRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	CollectionOid []byte `protobuf:"bytes,1,opt,name=collectionOid,proto3" json:"collectionOid,omitempty"`
}

func (x *DropAllIndexesRequest) Reset() {
	*x = DropAllIndexesRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_index_requests_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *DropAllIndexesRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*DropAllIndexesRequest) ProtoMessage() {}

func (x *DropAllIndexesRequest) ProtoReflect() protoreflect.Message {
	mi := &file_index_requests_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use DropAllIndexesRequest.ProtoReflect.Descriptor instead.
func (*DropAllIndexesRequest) Descriptor() ([]byte, []int) {
	return file_index_requests_proto_rawDescGZIP(), []int{4}
}

func (x *DropAllIndexesRequest) GetCollectionOid() []byte {
	if x != nil {
		return x.CollectionOid
	}
	return nil
}

type ListIndexesRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	CollectionOid []byte `protobuf:"bytes,1,opt,name=collectionOid,proto3" json:"collectionOid,omitempty"`
}

func (x *ListIndexesRequest) Reset() {
	*x = ListIndexesRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_index_requests_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ListIndexesRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ListIndexesRequest) ProtoMessage() {}

func (x *ListIndexesRequest) ProtoReflect() protoreflect.Message {
	mi := &file_index_requests_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ListIndexesRequest.ProtoReflect.Descriptor instead.
func (*ListIndexesRequest) Descriptor() ([]byte, []int) {
	return file_index_requests_proto_rawDescGZIP(), []int{5}
}

func (x *ListIndexesRequest) GetCollectionOid() []byte {
	if x != nil {
		return x.CollectionOid
	}
	return nil
}

var File_index_requests_proto protoreflect.FileDescriptor

var file_index_requests_proto_rawDesc = []byte{
	0x0a, 0x14, 0x69, 0x6e, 0x64, 0x65, 0x78, 0x5f, 0x72, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x73,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x1e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f, 0x77, 0x72, 0x61, 0x70, 0x70, 0x65, 0x72, 0x73,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0xa9, 0x02, 0x0a, 0x09, 0x43, 0x6f, 0x6c, 0x6c, 0x61,
	0x74, 0x69, 0x6f, 0x6e, 0x12, 0x16, 0x0a, 0x06, 0x4c, 0x6f, 0x63, 0x61, 0x6c, 0x65, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x06, 0x4c, 0x6f, 0x63, 0x61, 0x6c, 0x65, 0x12, 0x1c, 0x0a, 0x09,
	0x43, 0x61, 0x73, 0x65, 0x4c, 0x65, 0x76, 0x65, 0x6c, 0x18, 0x02, 0x20, 0x01, 0x28, 0x08, 0x52,
	0x09, 0x43, 0x61, 0x73, 0x65, 0x4c, 0x65, 0x76, 0x65, 0x6c, 0x12, 0x1c, 0x0a, 0x09, 0x43, 0x61,
	0x73, 0x65, 0x46, 0x69, 0x72, 0x73, 0x74, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x43,
	0x61, 0x73, 0x65, 0x46, 0x69, 0x72, 0x73, 0x74, 0x12, 0x1a, 0x0a, 0x08, 0x53, 0x74, 0x72, 0x65,
	0x6e, 0x67, 0x74, 0x68, 0x18, 0x04, 0x20, 0x01, 0x28, 0x05, 0x52, 0x08, 0x53, 0x74, 0x72, 0x65,
	0x6e, 0x67, 0x74, 0x68, 0x12, 0x28, 0x0a, 0x0f, 0x4e, 0x75, 0x6d, 0x65, 0x72, 0x69, 0x63, 0x4f,
	0x72, 0x64, 0x65, 0x72, 0x69, 0x6e, 0x67, 0x18, 0x05, 0x20, 0x01, 0x28, 0x08, 0x52, 0x0f, 0x4e,
	0x75, 0x6d, 0x65, 0x72, 0x69, 0x63, 0x4f, 0x72, 0x64, 0x65, 0x72, 0x69, 0x6e, 0x67, 0x12, 0x1c,
	0x0a, 0x09, 0x41, 0x6c, 0x74, 0x65, 0x72, 0x6e, 0x61, 0x74, 0x65, 0x18, 0x06, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x09, 0x41, 0x6c, 0x74, 0x65, 0x72, 0x6e, 0x61, 0x74, 0x65, 0x12, 0x20, 0x0a, 0x0b,
	0x4d, 0x61, 0x78, 0x56, 0x61, 0x72, 0x69, 0x61, 0x62, 0x6c, 0x65, 0x18, 0x07, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x0b, 0x4d, 0x61, 0x78, 0x56, 0x61, 0x72, 0x69, 0x61, 0x62, 0x6c, 0x65, 0x12, 0x24,
	0x0a, 0x0d, 0x4e, 0x6f, 0x72, 0x6d, 0x61, 0x6c, 0x69, 0x7a, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x18,
	0x08, 0x20, 0x01, 0x28, 0x08, 0x52, 0x0d, 0x4e, 0x6f, 0x72, 0x6d, 0x61, 0x6c, 0x69, 0x7a, 0x61,
	0x74, 0x69, 0x6f, 0x6e, 0x12, 0x1c, 0x0a, 0x09, 0x42, 0x61, 0x63, 0x6b, 0x77, 0x61, 0x72, 0x64,
	0x73, 0x18, 0x09, 0x20, 0x01, 0x28, 0x08, 0x52, 0x09, 0x42, 0x61, 0x63, 0x6b, 0x77, 0x61, 0x72,
	0x64, 0x73, 0x22, 0xc6, 0x08, 0x0a, 0x0c, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x4f, 0x70, 0x74, 0x69,
	0x6f, 0x6e, 0x73, 0x12, 0x3a, 0x0a, 0x0a, 0x62, 0x61, 0x63, 0x6b, 0x67, 0x72, 0x6f, 0x75, 0x6e,
	0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x42, 0x6f, 0x6f, 0x6c, 0x56, 0x61,
	0x6c, 0x75, 0x65, 0x52, 0x0a, 0x62, 0x61, 0x63, 0x6b, 0x67, 0x72, 0x6f, 0x75, 0x6e, 0x64, 0x12,
	0x4b, 0x0a, 0x12, 0x65, 0x78, 0x70, 0x69, 0x72, 0x65, 0x41, 0x66, 0x74, 0x65, 0x72, 0x53, 0x65,
	0x63, 0x6f, 0x6e, 0x64, 0x73, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1b, 0x2e, 0x67, 0x6f,
	0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x49, 0x6e,
	0x74, 0x33, 0x32, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x52, 0x12, 0x65, 0x78, 0x70, 0x69, 0x72, 0x65,
	0x41, 0x66, 0x74, 0x65, 0x72, 0x53, 0x65, 0x63, 0x6f, 0x6e, 0x64, 0x73, 0x12, 0x30, 0x0a, 0x04,
	0x6e, 0x61, 0x6d, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1c, 0x2e, 0x67, 0x6f, 0x6f,
	0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x53, 0x74, 0x72,
	0x69, 0x6e, 0x67, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x32,
	0x0a, 0x06, 0x73, 0x70, 0x61, 0x72, 0x73, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a,
	0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66,
	0x2e, 0x42, 0x6f, 0x6f, 0x6c, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x52, 0x06, 0x73, 0x70, 0x61, 0x72,
	0x73, 0x65, 0x12, 0x24, 0x0a, 0x0d, 0x73, 0x74, 0x6f, 0x72, 0x61, 0x67, 0x65, 0x45, 0x6e, 0x67,
	0x69, 0x6e, 0x65, 0x18, 0x05, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x0d, 0x73, 0x74, 0x6f, 0x72, 0x61,
	0x67, 0x65, 0x45, 0x6e, 0x67, 0x69, 0x6e, 0x65, 0x12, 0x32, 0x0a, 0x06, 0x75, 0x6e, 0x69, 0x71,
	0x75, 0x65, 0x18, 0x06, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c,
	0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x42, 0x6f, 0x6f, 0x6c, 0x56,
	0x61, 0x6c, 0x75, 0x65, 0x52, 0x06, 0x75, 0x6e, 0x69, 0x71, 0x75, 0x65, 0x12, 0x35, 0x0a, 0x07,
	0x76, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x18, 0x07, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1b, 0x2e,
	0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e,
	0x49, 0x6e, 0x74, 0x33, 0x32, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x52, 0x07, 0x76, 0x65, 0x72, 0x73,
	0x69, 0x6f, 0x6e, 0x12, 0x46, 0x0a, 0x0f, 0x64, 0x65, 0x66, 0x61, 0x75, 0x6c, 0x74, 0x4c, 0x61,
	0x6e, 0x67, 0x75, 0x61, 0x67, 0x65, 0x18, 0x08, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1c, 0x2e, 0x67,
	0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x53,
	0x74, 0x72, 0x69, 0x6e, 0x67, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x52, 0x0f, 0x64, 0x65, 0x66, 0x61,
	0x75, 0x6c, 0x74, 0x4c, 0x61, 0x6e, 0x67, 0x75, 0x61, 0x67, 0x65, 0x12, 0x48, 0x0a, 0x10, 0x6c,
	0x61, 0x6e, 0x67, 0x75, 0x61, 0x67, 0x65, 0x4f, 0x76, 0x65, 0x72, 0x72, 0x69, 0x64, 0x65, 0x18,
	0x09, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1c, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x53, 0x74, 0x72, 0x69, 0x6e, 0x67, 0x56, 0x61,
	0x6c, 0x75, 0x65, 0x52, 0x10, 0x6c, 0x61, 0x6e, 0x67, 0x75, 0x61, 0x67, 0x65, 0x4f, 0x76, 0x65,
	0x72, 0x72, 0x69, 0x64, 0x65, 0x12, 0x3d, 0x0a, 0x0b, 0x74, 0x65, 0x78, 0x74, 0x56, 0x65, 0x72,
	0x73, 0x69, 0x6f, 0x6e, 0x18, 0x0a, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1b, 0x2e, 0x67, 0x6f, 0x6f,
	0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x49, 0x6e, 0x74,
	0x33, 0x32, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x52, 0x0b, 0x74, 0x65, 0x78, 0x74, 0x56, 0x65, 0x72,
	0x73, 0x69, 0x6f, 0x6e, 0x12, 0x18, 0x0a, 0x07, 0x77, 0x65, 0x69, 0x67, 0x68, 0x74, 0x73, 0x18,
	0x0b, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x07, 0x77, 0x65, 0x69, 0x67, 0x68, 0x74, 0x73, 0x12, 0x41,
	0x0a, 0x0d, 0x73, 0x70, 0x68, 0x65, 0x72, 0x65, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6f, 0x6e, 0x18,
	0x0c, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1b, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x49, 0x6e, 0x74, 0x33, 0x32, 0x56, 0x61, 0x6c,
	0x75, 0x65, 0x52, 0x0d, 0x73, 0x70, 0x68, 0x65, 0x72, 0x65, 0x56, 0x65, 0x72, 0x73, 0x69, 0x6f,
	0x6e, 0x12, 0x2f, 0x0a, 0x04, 0x62, 0x69, 0x74, 0x73, 0x18, 0x0d, 0x20, 0x01, 0x28, 0x0b, 0x32,
	0x1b, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75,
	0x66, 0x2e, 0x49, 0x6e, 0x74, 0x33, 0x32, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x52, 0x04, 0x62, 0x69,
	0x74, 0x73, 0x12, 0x2e, 0x0a, 0x03, 0x6d, 0x61, 0x78, 0x18, 0x0e, 0x20, 0x01, 0x28, 0x0b, 0x32,
	0x1c, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75,
	0x66, 0x2e, 0x44, 0x6f, 0x75, 0x62, 0x6c, 0x65, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x52, 0x03, 0x6d,
	0x61, 0x78, 0x12, 0x2e, 0x0a, 0x03, 0x6d, 0x69, 0x6e, 0x18, 0x0f, 0x20, 0x01, 0x28, 0x0b, 0x32,
	0x1c, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75,
	0x66, 0x2e, 0x44, 0x6f, 0x75, 0x62, 0x6c, 0x65, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x52, 0x03, 0x6d,
	0x69, 0x6e, 0x12, 0x3b, 0x0a, 0x0a, 0x62, 0x75, 0x63, 0x6b, 0x65, 0x74, 0x53, 0x69, 0x7a, 0x65,
	0x18, 0x10, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1b, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x49, 0x6e, 0x74, 0x33, 0x32, 0x56, 0x61,
	0x6c, 0x75, 0x65, 0x52, 0x0a, 0x62, 0x75, 0x63, 0x6b, 0x65, 0x74, 0x53, 0x69, 0x7a, 0x65, 0x12,
	0x38, 0x0a, 0x17, 0x70, 0x61, 0x72, 0x74, 0x69, 0x61, 0x6c, 0x46, 0x69, 0x6c, 0x74, 0x65, 0x72,
	0x45, 0x78, 0x70, 0x72, 0x65, 0x73, 0x73, 0x69, 0x6f, 0x6e, 0x18, 0x11, 0x20, 0x01, 0x28, 0x0c,
	0x52, 0x17, 0x70, 0x61, 0x72, 0x74, 0x69, 0x61, 0x6c, 0x46, 0x69, 0x6c, 0x74, 0x65, 0x72, 0x45,
	0x78, 0x70, 0x72, 0x65, 0x73, 0x73, 0x69, 0x6f, 0x6e, 0x12, 0x1c, 0x0a, 0x09, 0x63, 0x6f, 0x6c,
	0x6c, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x12, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x09, 0x63, 0x6f,
	0x6c, 0x6c, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x2e, 0x0a, 0x12, 0x77, 0x69, 0x6c, 0x64, 0x63,
	0x61, 0x72, 0x64, 0x50, 0x72, 0x6f, 0x6a, 0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x13, 0x20,
	0x01, 0x28, 0x0c, 0x52, 0x12, 0x77, 0x69, 0x6c, 0x64, 0x63, 0x61, 0x72, 0x64, 0x50, 0x72, 0x6f,
	0x6a, 0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x32, 0x0a, 0x06, 0x68, 0x69, 0x64, 0x64, 0x65,
	0x6e, 0x18, 0x14, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x42, 0x6f, 0x6f, 0x6c, 0x56, 0x61,
	0x6c, 0x75, 0x65, 0x52, 0x06, 0x68, 0x69, 0x64, 0x64, 0x65, 0x6e, 0x22, 0x72, 0x0a, 0x12, 0x43,
	0x72, 0x65, 0x61, 0x74, 0x65, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
	0x74, 0x12, 0x24, 0x0a, 0x0d, 0x63, 0x6f, 0x6c, 0x6c, 0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x4f,
	0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x0d, 0x63, 0x6f, 0x6c, 0x6c, 0x65, 0x63,
	0x74, 0x69, 0x6f, 0x6e, 0x4f, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x6b, 0x65, 0x79, 0x73, 0x18,
	0x02, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x04, 0x6b, 0x65, 0x79, 0x73, 0x12, 0x22, 0x0a, 0x0c, 0x69,
	0x6e, 0x64, 0x65, 0x78, 0x4f, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x18, 0x03, 0x20, 0x01, 0x28,
	0x0c, 0x52, 0x0c, 0x69, 0x6e, 0x64, 0x65, 0x78, 0x4f, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x22,
	0x4c, 0x0a, 0x10, 0x44, 0x72, 0x6f, 0x70, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x52, 0x65, 0x71, 0x75,
	0x65, 0x73, 0x74, 0x12, 0x24, 0x0a, 0x0d, 0x63, 0x6f, 0x6c, 0x6c, 0x65, 0x63, 0x74, 0x69, 0x6f,
	0x6e, 0x4f, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x0d, 0x63, 0x6f, 0x6c, 0x6c,
	0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x4f, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d,
	0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x22, 0x3d, 0x0a,
	0x15, 0x44, 0x72, 0x6f, 0x70, 0x41, 0x6c, 0x6c, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x65, 0x73, 0x52,
	0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x24, 0x0a, 0x0d, 0x63, 0x6f, 0x6c, 0x6c, 0x65, 0x63,
	0x74, 0x69, 0x6f, 0x6e, 0x4f, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x0d, 0x63,
	0x6f, 0x6c, 0x6c, 0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x4f, 0x69, 0x64, 0x22, 0x3a, 0x0a, 0x12,
	0x4c, 0x69, 0x73, 0x74, 0x49, 0x6e, 0x64, 0x65, 0x78, 0x65, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65,
	0x73, 0x74, 0x12, 0x24, 0x0a, 0x0d, 0x63, 0x6f, 0x6c, 0x6c, 0x65, 0x63, 0x74, 0x69, 0x6f, 0x6e,
	0x4f, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x0d, 0x63, 0x6f, 0x6c, 0x6c, 0x65,
	0x63, 0x74, 0x69, 0x6f, 0x6e, 0x4f, 0x69, 0x64, 0x42, 0x0f, 0x5a, 0x0d, 0x2e, 0x2f, 0x6d, 0x6f,
	0x6e, 0x67, 0x6f, 0x5f, 0x73, 0x74, 0x75, 0x62, 0x73, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x33,
}

var (
	file_index_requests_proto_rawDescOnce sync.Once
	file_index_requests_proto_rawDescData = file_index_requests_proto_rawDesc
)

func file_index_requests_proto_rawDescGZIP() []byte {
	file_index_requests_proto_rawDescOnce.Do(func() {
		file_index_requests_proto_rawDescData = protoimpl.X.CompressGZIP(file_index_requests_proto_rawDescData)
	})
	return file_index_requests_proto_rawDescData
}

var file_index_requests_proto_msgTypes = make([]protoimpl.MessageInfo, 6)
var file_index_requests_proto_goTypes = []interface{}{
	(*Collation)(nil),              // 0: Collation
	(*IndexOptions)(nil),           // 1: IndexOptions
	(*CreateIndexRequest)(nil),     // 2: CreateIndexRequest
	(*DropIndexRequest)(nil),       // 3: DropIndexRequest
	(*DropAllIndexesRequest)(nil),  // 4: DropAllIndexesRequest
	(*ListIndexesRequest)(nil),     // 5: ListIndexesRequest
	(*wrapperspb.BoolValue)(nil),   // 6: google.protobuf.BoolValue
	(*wrapperspb.Int32Value)(nil),  // 7: google.protobuf.Int32Value
	(*wrapperspb.StringValue)(nil), // 8: google.protobuf.StringValue
	(*wrapperspb.DoubleValue)(nil), // 9: google.protobuf.DoubleValue
}
var file_index_requests_proto_depIdxs = []int32{
	6,  // 0: IndexOptions.background:type_name -> google.protobuf.BoolValue
	7,  // 1: IndexOptions.expireAfterSeconds:type_name -> google.protobuf.Int32Value
	8,  // 2: IndexOptions.name:type_name -> google.protobuf.StringValue
	6,  // 3: IndexOptions.sparse:type_name -> google.protobuf.BoolValue
	6,  // 4: IndexOptions.unique:type_name -> google.protobuf.BoolValue
	7,  // 5: IndexOptions.version:type_name -> google.protobuf.Int32Value
	8,  // 6: IndexOptions.defaultLanguage:type_name -> google.protobuf.StringValue
	8,  // 7: IndexOptions.languageOverride:type_name -> google.protobuf.StringValue
	7,  // 8: IndexOptions.textVersion:type_name -> google.protobuf.Int32Value
	7,  // 9: IndexOptions.sphereVersion:type_name -> google.protobuf.Int32Value
	7,  // 10: IndexOptions.bits:type_name -> google.protobuf.Int32Value
	9,  // 11: IndexOptions.max:type_name -> google.protobuf.DoubleValue
	9,  // 12: IndexOptions.min:type_name -> google.protobuf.DoubleValue
	7,  // 13: IndexOptions.bucketSize:type_name -> google.protobuf.Int32Value
	6,  // 14: IndexOptions.hidden:type_name -> google.protobuf.BoolValue
	15, // [15:15] is the sub-list for method output_type
	15, // [15:15] is the sub-list for method input_type
	15, // [15:15] is the sub-list for extension type_name
	15, // [15:15] is the sub-list for extension extendee
	0,  // [0:15] is the sub-list for field type_name
}

func init() { file_index_requests_proto_init() }
func file_index_requests_proto_init() {
	if File_index_requests_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_index_requests_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*Collation); i {
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
		file_index_requests_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*IndexOptions); i {
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
		file_index_requests_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*CreateIndexRequest); i {
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
		file_index_requests_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*DropIndexRequest); i {
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
		file_index_requests_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*DropAllIndexesRequest); i {
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
		file_index_requests_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ListIndexesRequest); i {
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
			RawDescriptor: file_index_requests_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   6,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_index_requests_proto_goTypes,
		DependencyIndexes: file_index_requests_proto_depIdxs,
		MessageInfos:      file_index_requests_proto_msgTypes,
	}.Build()
	File_index_requests_proto = out.File
	file_index_requests_proto_rawDesc = nil
	file_index_requests_proto_goTypes = nil
	file_index_requests_proto_depIdxs = nil
}
