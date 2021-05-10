// Autogenerated by Thrift Compiler (facebook)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
// @generated

package service

import (
	"bytes"
	"context"
	"sync"
	"fmt"
	thrift "github.com/facebook/fbthrift/thrift/lib/go/thrift"
	module0 "module"
	includes1 "includes"

)

// (needed to ensure safety because of naive import list construction.)
var _ = thrift.ZERO
var _ = fmt.Printf
var _ = sync.Mutex{}
var _ = bytes.Equal
var _ = context.Background

var _ = module0.GoUnusedProtection__
var _ = includes1.GoUnusedProtection__
type MyService interface {  //This is a service-level docblock

  // This is a function-level docblock
  // 
  // Parameters:
  //  - S
  //  - I
  Query(s *module0.MyStruct, i *includes1.Included) (err error)
  // Parameters:
  //  - S
  //  - I: arg doc
  HasArgDocs(s *module0.MyStruct, i *includes1.Included) (err error)
}

type MyServiceClientInterface interface {
  thrift.ClientInterface
  // This is a function-level docblock
  // 
  // Parameters:
  //  - S
  //  - I
  Query(s *module0.MyStruct, i *includes1.Included) (err error)
  // Parameters:
  //  - S
  //  - I: arg doc
  HasArgDocs(s *module0.MyStruct, i *includes1.Included) (err error)
}

//This is a service-level docblock
type MyServiceClient struct {
  MyServiceClientInterface
  CC thrift.ClientConn
}

func(client *MyServiceClient) Open() error {
  return client.CC.Open()
}

func(client *MyServiceClient) Close() error {
  return client.CC.Close()
}

func(client *MyServiceClient) IsOpen() bool {
  return client.CC.IsOpen()
}

func NewMyServiceClientFactory(t thrift.Transport, f thrift.ProtocolFactory) *MyServiceClient {
  return &MyServiceClient{ CC: thrift.NewClientConn(t, f) }
}

func NewMyServiceClient(t thrift.Transport, iprot thrift.Protocol, oprot thrift.Protocol) *MyServiceClient {
  return &MyServiceClient{ CC: thrift.NewClientConnWithProtocols(t, iprot, oprot) }
}

func NewMyServiceClientProtocol(prot thrift.Protocol) *MyServiceClient {
  return NewMyServiceClient(prot.Transport(), prot, prot)
}

// This is a function-level docblock
// 
// Parameters:
//  - S
//  - I
func (p *MyServiceClient) Query(s *module0.MyStruct, i *includes1.Included) (err error) {
  args := MyServiceQueryArgs{
    S : s,
    I : i,
  }
  err = p.CC.SendMsg("query", &args, thrift.CALL)
  if err != nil { return }
  return p.recvQuery()
}


func (p *MyServiceClient) recvQuery() (err error) {
  var result MyServiceQueryResult
  return p.CC.RecvMsg("query", &result)
}

// Parameters:
//  - S
//  - I: arg doc
func (p *MyServiceClient) HasArgDocs(s *module0.MyStruct, i *includes1.Included) (err error) {
  args := MyServiceHasArgDocsArgs{
    S : s,
    I : i,
  }
  err = p.CC.SendMsg("has_arg_docs", &args, thrift.CALL)
  if err != nil { return }
  return p.recvHasArgDocs()
}


func (p *MyServiceClient) recvHasArgDocs() (err error) {
  var result MyServiceHasArgDocsResult
  return p.CC.RecvMsg("has_arg_docs", &result)
}


//This is a service-level docblock
type MyServiceThreadsafeClient struct {
  MyServiceClientInterface
  CC thrift.ClientConn
  Mu sync.Mutex
}

func(client *MyServiceThreadsafeClient) Open() error {
  client.Mu.Lock()
  defer client.Mu.Unlock()
  return client.CC.Open()
}

func(client *MyServiceThreadsafeClient) Close() error {
  client.Mu.Lock()
  defer client.Mu.Unlock()
  return client.CC.Close()
}

func(client *MyServiceThreadsafeClient) IsOpen() bool {
  client.Mu.Lock()
  defer client.Mu.Unlock()
  return client.CC.IsOpen()
}

func NewMyServiceThreadsafeClientFactory(t thrift.Transport, f thrift.ProtocolFactory) *MyServiceThreadsafeClient {
  return &MyServiceThreadsafeClient{ CC: thrift.NewClientConn(t, f) }
}

func NewMyServiceThreadsafeClient(t thrift.Transport, iprot thrift.Protocol, oprot thrift.Protocol) *MyServiceThreadsafeClient {
  return &MyServiceThreadsafeClient{ CC: thrift.NewClientConnWithProtocols(t, iprot, oprot) }
}

func NewMyServiceThreadsafeClientProtocol(prot thrift.Protocol) *MyServiceThreadsafeClient {
  return NewMyServiceThreadsafeClient(prot.Transport(), prot, prot)
}

// This is a function-level docblock
// 
// Parameters:
//  - S
//  - I
func (p *MyServiceThreadsafeClient) Query(s *module0.MyStruct, i *includes1.Included) (err error) {
  p.Mu.Lock()
  defer p.Mu.Unlock()
  args := MyServiceQueryArgs{
    S : s,
    I : i,
  }
  err = p.CC.SendMsg("query", &args, thrift.CALL)
  if err != nil { return }
  return p.recvQuery()
}


func (p *MyServiceThreadsafeClient) recvQuery() (err error) {
  var result MyServiceQueryResult
  return p.CC.RecvMsg("query", &result)
}

// Parameters:
//  - S
//  - I: arg doc
func (p *MyServiceThreadsafeClient) HasArgDocs(s *module0.MyStruct, i *includes1.Included) (err error) {
  p.Mu.Lock()
  defer p.Mu.Unlock()
  args := MyServiceHasArgDocsArgs{
    S : s,
    I : i,
  }
  err = p.CC.SendMsg("has_arg_docs", &args, thrift.CALL)
  if err != nil { return }
  return p.recvHasArgDocs()
}


func (p *MyServiceThreadsafeClient) recvHasArgDocs() (err error) {
  var result MyServiceHasArgDocsResult
  return p.CC.RecvMsg("has_arg_docs", &result)
}


//This is a service-level docblock
type MyServiceChannelClient struct {
  RequestChannel thrift.RequestChannel
}

func (c *MyServiceChannelClient) Close() error {
  return c.RequestChannel.Close()
}

func (c *MyServiceChannelClient) IsOpen() bool {
  return c.RequestChannel.IsOpen()
}

func (c *MyServiceChannelClient) Open() error {
  return c.RequestChannel.Open()
}

func NewMyServiceChannelClient(channel thrift.RequestChannel) *MyServiceChannelClient {
  return &MyServiceChannelClient{RequestChannel: channel}
}

// This is a function-level docblock
// 
// Parameters:
//  - S
//  - I
func (p *MyServiceChannelClient) Query(ctx context.Context, s *module0.MyStruct, i *includes1.Included) (err error) {
  args := MyServiceQueryArgs{
    S : s,
    I : i,
  }
  var result MyServiceQueryResult
  err = p.RequestChannel.Call(ctx, "query", &args, &result)
  if err != nil { return }

  return nil
}

// Parameters:
//  - S
//  - I: arg doc
func (p *MyServiceChannelClient) HasArgDocs(ctx context.Context, s *module0.MyStruct, i *includes1.Included) (err error) {
  args := MyServiceHasArgDocsArgs{
    S : s,
    I : i,
  }
  var result MyServiceHasArgDocsResult
  err = p.RequestChannel.Call(ctx, "has_arg_docs", &args, &result)
  if err != nil { return }

  return nil
}


type MyServiceProcessor struct {
  processorMap map[string]thrift.ProcessorFunction
  functionServiceMap map[string]string
  handler MyService
}

func (p *MyServiceProcessor) AddToProcessorMap(key string, processor thrift.ProcessorFunction) {
  p.processorMap[key] = processor
}

func (p *MyServiceProcessor) AddToFunctionServiceMap(key, service string) {
  p.functionServiceMap[key] = service
}

func (p *MyServiceProcessor) GetProcessorFunction(key string) (processor thrift.ProcessorFunction, err error) {
  if processor, ok := p.processorMap[key]; ok {
    return processor, nil
  }
  return nil, nil // generic error message will be sent
}

func (p *MyServiceProcessor) ProcessorMap() map[string]thrift.ProcessorFunction {
  return p.processorMap
}

func (p *MyServiceProcessor) FunctionServiceMap() map[string]string {
  return p.functionServiceMap
}

func NewMyServiceProcessor(handler MyService) *MyServiceProcessor {
  self2 := &MyServiceProcessor{handler:handler, processorMap:make(map[string]thrift.ProcessorFunction), functionServiceMap:make(map[string]string)}
  self2.processorMap["query"] = &myServiceProcessorQuery{handler:handler}
  self2.processorMap["has_arg_docs"] = &myServiceProcessorHasArgDocs{handler:handler}
  self2.functionServiceMap["query"] = "MyService"
  self2.functionServiceMap["has_arg_docs"] = "MyService"
  return self2
}

type myServiceProcessorQuery struct {
  handler MyService
}

func (p *MyServiceQueryResult) Exception() thrift.WritableException {
  if p == nil { return nil }
  return nil
}

func (p *myServiceProcessorQuery) Read(iprot thrift.Protocol) (thrift.Struct, thrift.Exception) {
  args := MyServiceQueryArgs{}
  if err := args.Read(iprot); err != nil {
    return nil, err
  }
  iprot.ReadMessageEnd()
  return &args, nil
}

func (p *myServiceProcessorQuery) Write(seqId int32, result thrift.WritableStruct, oprot thrift.Protocol) (err thrift.Exception) {
  var err2 error
  messageType := thrift.REPLY
  switch result.(type) {
  case thrift.ApplicationException:
    messageType = thrift.EXCEPTION
  }
  if err2 = oprot.WriteMessageBegin("query", messageType, seqId); err2 != nil {
    err = err2
  }
  if err2 = result.Write(oprot); err == nil && err2 != nil {
    err = err2
  }
  if err2 = oprot.WriteMessageEnd(); err == nil && err2 != nil {
    err = err2
  }
  if err2 = oprot.Flush(); err == nil && err2 != nil {
    err = err2
  }
  return err
}

func (p *myServiceProcessorQuery) Run(argStruct thrift.Struct) (thrift.WritableStruct, thrift.ApplicationException) {
  args := argStruct.(*MyServiceQueryArgs)
  var result MyServiceQueryResult
  if err := p.handler.Query(args.S, args.I); err != nil {
    switch err.(type) {
    default:
      x := thrift.NewApplicationException(thrift.INTERNAL_ERROR, "Internal error processing query: " + err.Error())
      return x, x
    }
  }
  return &result, nil
}

type myServiceProcessorHasArgDocs struct {
  handler MyService
}

func (p *MyServiceHasArgDocsResult) Exception() thrift.WritableException {
  if p == nil { return nil }
  return nil
}

func (p *myServiceProcessorHasArgDocs) Read(iprot thrift.Protocol) (thrift.Struct, thrift.Exception) {
  args := MyServiceHasArgDocsArgs{}
  if err := args.Read(iprot); err != nil {
    return nil, err
  }
  iprot.ReadMessageEnd()
  return &args, nil
}

func (p *myServiceProcessorHasArgDocs) Write(seqId int32, result thrift.WritableStruct, oprot thrift.Protocol) (err thrift.Exception) {
  var err2 error
  messageType := thrift.REPLY
  switch result.(type) {
  case thrift.ApplicationException:
    messageType = thrift.EXCEPTION
  }
  if err2 = oprot.WriteMessageBegin("has_arg_docs", messageType, seqId); err2 != nil {
    err = err2
  }
  if err2 = result.Write(oprot); err == nil && err2 != nil {
    err = err2
  }
  if err2 = oprot.WriteMessageEnd(); err == nil && err2 != nil {
    err = err2
  }
  if err2 = oprot.Flush(); err == nil && err2 != nil {
    err = err2
  }
  return err
}

func (p *myServiceProcessorHasArgDocs) Run(argStruct thrift.Struct) (thrift.WritableStruct, thrift.ApplicationException) {
  args := argStruct.(*MyServiceHasArgDocsArgs)
  var result MyServiceHasArgDocsResult
  if err := p.handler.HasArgDocs(args.S, args.I); err != nil {
    switch err.(type) {
    default:
      x := thrift.NewApplicationException(thrift.INTERNAL_ERROR, "Internal error processing has_arg_docs: " + err.Error())
      return x, x
    }
  }
  return &result, nil
}


// HELPER FUNCTIONS AND STRUCTURES

// Attributes:
//  - S
//  - I
type MyServiceQueryArgs struct {
  thrift.IRequest
  S *module0.MyStruct `thrift:"s,1" db:"s" json:"s"`
  I *includes1.Included `thrift:"i,2" db:"i" json:"i"`
}

func NewMyServiceQueryArgs() *MyServiceQueryArgs {
  return &MyServiceQueryArgs{
    S: module0.NewMyStruct(),
    I: includes1.NewIncluded(),
  }
}

var MyServiceQueryArgs_S_DEFAULT *module0.MyStruct
func (p *MyServiceQueryArgs) GetS() *module0.MyStruct {
  if !p.IsSetS() {
    return MyServiceQueryArgs_S_DEFAULT
  }
return p.S
}
var MyServiceQueryArgs_I_DEFAULT *includes1.Included
func (p *MyServiceQueryArgs) GetI() *includes1.Included {
  if !p.IsSetI() {
    return MyServiceQueryArgs_I_DEFAULT
  }
return p.I
}
func (p *MyServiceQueryArgs) IsSetS() bool {
  return p != nil && p.S != nil
}

func (p *MyServiceQueryArgs) IsSetI() bool {
  return p != nil && p.I != nil
}

type MyServiceQueryArgsBuilder struct {
  obj *MyServiceQueryArgs
}

func NewMyServiceQueryArgsBuilder() *MyServiceQueryArgsBuilder{
  return &MyServiceQueryArgsBuilder{
    obj: NewMyServiceQueryArgs(),
  }
}

func (p MyServiceQueryArgsBuilder) Emit() *MyServiceQueryArgs{
  return &MyServiceQueryArgs{
    S: p.obj.S,
    I: p.obj.I,
  }
}

func (m *MyServiceQueryArgsBuilder) S(s *module0.MyStruct) *MyServiceQueryArgsBuilder {
  m.obj.S = s
  return m
}

func (m *MyServiceQueryArgsBuilder) I(i *includes1.Included) *MyServiceQueryArgsBuilder {
  m.obj.I = i
  return m
}

func (m *MyServiceQueryArgs) SetS(s *module0.MyStruct) *MyServiceQueryArgs {
  m.S = s
  return m
}

func (m *MyServiceQueryArgs) SetI(i *includes1.Included) *MyServiceQueryArgs {
  m.I = i
  return m
}

func (p *MyServiceQueryArgs) Read(iprot thrift.Protocol) error {
  if _, err := iprot.ReadStructBegin(); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T read error: ", p), err)
  }


  for {
    _, fieldTypeId, fieldId, err := iprot.ReadFieldBegin()
    if err != nil {
      return thrift.PrependError(fmt.Sprintf("%T field %d read error: ", p, fieldId), err)
    }
    if fieldTypeId == thrift.STOP { break; }
    switch fieldId {
    case 1:
      if err := p.ReadField1(iprot); err != nil {
        return err
      }
    case 2:
      if err := p.ReadField2(iprot); err != nil {
        return err
      }
    default:
      if err := iprot.Skip(fieldTypeId); err != nil {
        return err
      }
    }
    if err := iprot.ReadFieldEnd(); err != nil {
      return err
    }
  }
  if err := iprot.ReadStructEnd(); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T read struct end error: ", p), err)
  }
  return nil
}

func (p *MyServiceQueryArgs)  ReadField1(iprot thrift.Protocol) error {
  p.S = module0.NewMyStruct()
  if err := p.S.Read(iprot); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T error reading struct: ", p.S), err)
  }
  return nil
}

func (p *MyServiceQueryArgs)  ReadField2(iprot thrift.Protocol) error {
  p.I = includes1.NewIncluded()
  if err := p.I.Read(iprot); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T error reading struct: ", p.I), err)
  }
  return nil
}

func (p *MyServiceQueryArgs) Write(oprot thrift.Protocol) error {
  if err := oprot.WriteStructBegin("query_args"); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write struct begin error: ", p), err) }
  if err := p.writeField1(oprot); err != nil { return err }
  if err := p.writeField2(oprot); err != nil { return err }
  if err := oprot.WriteFieldStop(); err != nil {
    return thrift.PrependError("write field stop error: ", err) }
  if err := oprot.WriteStructEnd(); err != nil {
    return thrift.PrependError("write struct stop error: ", err) }
  return nil
}

func (p *MyServiceQueryArgs) writeField1(oprot thrift.Protocol) (err error) {
  if err := oprot.WriteFieldBegin("s", thrift.STRUCT, 1); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write field begin error 1:s: ", p), err) }
  if err := p.S.Write(oprot); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T error writing struct: ", p.S), err)
  }
  if err := oprot.WriteFieldEnd(); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write field end error 1:s: ", p), err) }
  return err
}

func (p *MyServiceQueryArgs) writeField2(oprot thrift.Protocol) (err error) {
  if err := oprot.WriteFieldBegin("i", thrift.STRUCT, 2); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write field begin error 2:i: ", p), err) }
  if err := p.I.Write(oprot); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T error writing struct: ", p.I), err)
  }
  if err := oprot.WriteFieldEnd(); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write field end error 2:i: ", p), err) }
  return err
}

func (p *MyServiceQueryArgs) String() string {
  if p == nil {
    return "<nil>"
  }

  var sVal string
  if p.S == nil {
    sVal = "<nil>"
  } else {
    sVal = fmt.Sprintf("%v", p.S)
  }
  var iVal string
  if p.I == nil {
    iVal = "<nil>"
  } else {
    iVal = fmt.Sprintf("%v", p.I)
  }
  return fmt.Sprintf("MyServiceQueryArgs({S:%s I:%s})", sVal, iVal)
}

type MyServiceQueryResult struct {
  thrift.IResponse
}

func NewMyServiceQueryResult() *MyServiceQueryResult {
  return &MyServiceQueryResult{}
}

type MyServiceQueryResultBuilder struct {
  obj *MyServiceQueryResult
}

func NewMyServiceQueryResultBuilder() *MyServiceQueryResultBuilder{
  return &MyServiceQueryResultBuilder{
    obj: NewMyServiceQueryResult(),
  }
}

func (p MyServiceQueryResultBuilder) Emit() *MyServiceQueryResult{
  return &MyServiceQueryResult{
  }
}

func (p *MyServiceQueryResult) Read(iprot thrift.Protocol) error {
  if _, err := iprot.ReadStructBegin(); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T read error: ", p), err)
  }


  for {
    _, fieldTypeId, fieldId, err := iprot.ReadFieldBegin()
    if err != nil {
      return thrift.PrependError(fmt.Sprintf("%T field %d read error: ", p, fieldId), err)
    }
    if fieldTypeId == thrift.STOP { break; }
    if err := iprot.Skip(fieldTypeId); err != nil {
      return err
    }
    if err := iprot.ReadFieldEnd(); err != nil {
      return err
    }
  }
  if err := iprot.ReadStructEnd(); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T read struct end error: ", p), err)
  }
  return nil
}

func (p *MyServiceQueryResult) Write(oprot thrift.Protocol) error {
  if err := oprot.WriteStructBegin("query_result"); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write struct begin error: ", p), err) }
  if err := oprot.WriteFieldStop(); err != nil {
    return thrift.PrependError("write field stop error: ", err) }
  if err := oprot.WriteStructEnd(); err != nil {
    return thrift.PrependError("write struct stop error: ", err) }
  return nil
}

func (p *MyServiceQueryResult) String() string {
  if p == nil {
    return "<nil>"
  }

  return fmt.Sprintf("MyServiceQueryResult({})")
}

// Attributes:
//  - S
//  - I: arg doc
type MyServiceHasArgDocsArgs struct {
  thrift.IRequest
  S *module0.MyStruct `thrift:"s,1" db:"s" json:"s"`
  I *includes1.Included `thrift:"i,2" db:"i" json:"i"`
}

func NewMyServiceHasArgDocsArgs() *MyServiceHasArgDocsArgs {
  return &MyServiceHasArgDocsArgs{
    S: module0.NewMyStruct(),
    I: includes1.NewIncluded(),
  }
}

var MyServiceHasArgDocsArgs_S_DEFAULT *module0.MyStruct
func (p *MyServiceHasArgDocsArgs) GetS() *module0.MyStruct {
  if !p.IsSetS() {
    return MyServiceHasArgDocsArgs_S_DEFAULT
  }
return p.S
}
var MyServiceHasArgDocsArgs_I_DEFAULT *includes1.Included
func (p *MyServiceHasArgDocsArgs) GetI() *includes1.Included {
  if !p.IsSetI() {
    return MyServiceHasArgDocsArgs_I_DEFAULT
  }
return p.I
}
func (p *MyServiceHasArgDocsArgs) IsSetS() bool {
  return p != nil && p.S != nil
}

func (p *MyServiceHasArgDocsArgs) IsSetI() bool {
  return p != nil && p.I != nil
}

type MyServiceHasArgDocsArgsBuilder struct {
  obj *MyServiceHasArgDocsArgs
}

func NewMyServiceHasArgDocsArgsBuilder() *MyServiceHasArgDocsArgsBuilder{
  return &MyServiceHasArgDocsArgsBuilder{
    obj: NewMyServiceHasArgDocsArgs(),
  }
}

func (p MyServiceHasArgDocsArgsBuilder) Emit() *MyServiceHasArgDocsArgs{
  return &MyServiceHasArgDocsArgs{
    S: p.obj.S,
    I: p.obj.I,
  }
}

func (m *MyServiceHasArgDocsArgsBuilder) S(s *module0.MyStruct) *MyServiceHasArgDocsArgsBuilder {
  m.obj.S = s
  return m
}

func (m *MyServiceHasArgDocsArgsBuilder) I(i *includes1.Included) *MyServiceHasArgDocsArgsBuilder {
  m.obj.I = i
  return m
}

func (m *MyServiceHasArgDocsArgs) SetS(s *module0.MyStruct) *MyServiceHasArgDocsArgs {
  m.S = s
  return m
}

func (m *MyServiceHasArgDocsArgs) SetI(i *includes1.Included) *MyServiceHasArgDocsArgs {
  m.I = i
  return m
}

func (p *MyServiceHasArgDocsArgs) Read(iprot thrift.Protocol) error {
  if _, err := iprot.ReadStructBegin(); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T read error: ", p), err)
  }


  for {
    _, fieldTypeId, fieldId, err := iprot.ReadFieldBegin()
    if err != nil {
      return thrift.PrependError(fmt.Sprintf("%T field %d read error: ", p, fieldId), err)
    }
    if fieldTypeId == thrift.STOP { break; }
    switch fieldId {
    case 1:
      if err := p.ReadField1(iprot); err != nil {
        return err
      }
    case 2:
      if err := p.ReadField2(iprot); err != nil {
        return err
      }
    default:
      if err := iprot.Skip(fieldTypeId); err != nil {
        return err
      }
    }
    if err := iprot.ReadFieldEnd(); err != nil {
      return err
    }
  }
  if err := iprot.ReadStructEnd(); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T read struct end error: ", p), err)
  }
  return nil
}

func (p *MyServiceHasArgDocsArgs)  ReadField1(iprot thrift.Protocol) error {
  p.S = module0.NewMyStruct()
  if err := p.S.Read(iprot); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T error reading struct: ", p.S), err)
  }
  return nil
}

func (p *MyServiceHasArgDocsArgs)  ReadField2(iprot thrift.Protocol) error {
  p.I = includes1.NewIncluded()
  if err := p.I.Read(iprot); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T error reading struct: ", p.I), err)
  }
  return nil
}

func (p *MyServiceHasArgDocsArgs) Write(oprot thrift.Protocol) error {
  if err := oprot.WriteStructBegin("has_arg_docs_args"); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write struct begin error: ", p), err) }
  if err := p.writeField1(oprot); err != nil { return err }
  if err := p.writeField2(oprot); err != nil { return err }
  if err := oprot.WriteFieldStop(); err != nil {
    return thrift.PrependError("write field stop error: ", err) }
  if err := oprot.WriteStructEnd(); err != nil {
    return thrift.PrependError("write struct stop error: ", err) }
  return nil
}

func (p *MyServiceHasArgDocsArgs) writeField1(oprot thrift.Protocol) (err error) {
  if err := oprot.WriteFieldBegin("s", thrift.STRUCT, 1); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write field begin error 1:s: ", p), err) }
  if err := p.S.Write(oprot); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T error writing struct: ", p.S), err)
  }
  if err := oprot.WriteFieldEnd(); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write field end error 1:s: ", p), err) }
  return err
}

func (p *MyServiceHasArgDocsArgs) writeField2(oprot thrift.Protocol) (err error) {
  if err := oprot.WriteFieldBegin("i", thrift.STRUCT, 2); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write field begin error 2:i: ", p), err) }
  if err := p.I.Write(oprot); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T error writing struct: ", p.I), err)
  }
  if err := oprot.WriteFieldEnd(); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write field end error 2:i: ", p), err) }
  return err
}

func (p *MyServiceHasArgDocsArgs) String() string {
  if p == nil {
    return "<nil>"
  }

  var sVal string
  if p.S == nil {
    sVal = "<nil>"
  } else {
    sVal = fmt.Sprintf("%v", p.S)
  }
  var iVal string
  if p.I == nil {
    iVal = "<nil>"
  } else {
    iVal = fmt.Sprintf("%v", p.I)
  }
  return fmt.Sprintf("MyServiceHasArgDocsArgs({S:%s I:%s})", sVal, iVal)
}

type MyServiceHasArgDocsResult struct {
  thrift.IResponse
}

func NewMyServiceHasArgDocsResult() *MyServiceHasArgDocsResult {
  return &MyServiceHasArgDocsResult{}
}

type MyServiceHasArgDocsResultBuilder struct {
  obj *MyServiceHasArgDocsResult
}

func NewMyServiceHasArgDocsResultBuilder() *MyServiceHasArgDocsResultBuilder{
  return &MyServiceHasArgDocsResultBuilder{
    obj: NewMyServiceHasArgDocsResult(),
  }
}

func (p MyServiceHasArgDocsResultBuilder) Emit() *MyServiceHasArgDocsResult{
  return &MyServiceHasArgDocsResult{
  }
}

func (p *MyServiceHasArgDocsResult) Read(iprot thrift.Protocol) error {
  if _, err := iprot.ReadStructBegin(); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T read error: ", p), err)
  }


  for {
    _, fieldTypeId, fieldId, err := iprot.ReadFieldBegin()
    if err != nil {
      return thrift.PrependError(fmt.Sprintf("%T field %d read error: ", p, fieldId), err)
    }
    if fieldTypeId == thrift.STOP { break; }
    if err := iprot.Skip(fieldTypeId); err != nil {
      return err
    }
    if err := iprot.ReadFieldEnd(); err != nil {
      return err
    }
  }
  if err := iprot.ReadStructEnd(); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T read struct end error: ", p), err)
  }
  return nil
}

func (p *MyServiceHasArgDocsResult) Write(oprot thrift.Protocol) error {
  if err := oprot.WriteStructBegin("has_arg_docs_result"); err != nil {
    return thrift.PrependError(fmt.Sprintf("%T write struct begin error: ", p), err) }
  if err := oprot.WriteFieldStop(); err != nil {
    return thrift.PrependError("write field stop error: ", err) }
  if err := oprot.WriteStructEnd(); err != nil {
    return thrift.PrependError("write struct stop error: ", err) }
  return nil
}

func (p *MyServiceHasArgDocsResult) String() string {
  if p == nil {
    return "<nil>"
  }

  return fmt.Sprintf("MyServiceHasArgDocsResult({})")
}


