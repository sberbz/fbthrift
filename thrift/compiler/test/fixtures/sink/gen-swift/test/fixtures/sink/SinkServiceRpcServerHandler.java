/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

package test.fixtures.sink;

import java.util.*;
import org.apache.thrift.protocol.*;

public class SinkServiceRpcServerHandler 
  implements com.facebook.thrift.server.RpcServerHandler {

  private final java.util.Map<String, com.facebook.thrift.server.RpcServerHandler> _methodMap;

  private final SinkService.Reactive _delegate;


  private final java.util.List<com.facebook.swift.service.ThriftEventHandler> _eventHandlers;

  public SinkServiceRpcServerHandler(SinkService _delegate,
                                    java.util.List<com.facebook.swift.service.ThriftEventHandler> _eventHandlers,
                                    reactor.core.scheduler.Scheduler _scheduler) {
    this(new SinkServiceBlockingReactiveWrapper(_delegate, _scheduler), _eventHandlers);
  }

  public SinkServiceRpcServerHandler(SinkService.Async _delegate,
                                    java.util.List<com.facebook.swift.service.ThriftEventHandler> _eventHandlers) {
    this(new SinkServiceAsyncReactiveWrapper(_delegate), _eventHandlers);
  }

  public SinkServiceRpcServerHandler(SinkService.Reactive _delegate,
                                    java.util.List<com.facebook.swift.service.ThriftEventHandler> _eventHandlers) {
    
    this._methodMap = new java.util.HashMap<>();
    this._delegate = _delegate;
    this._eventHandlers = _eventHandlers;

  }


  @Override
  public reactor.core.publisher.Mono<com.facebook.thrift.payload.ServerResponsePayload> singleRequestSingleResponse(com.facebook.thrift.payload.ServerRequestPayload _payload) {
    final String _name = _payload.getRequestRpcMetadata().getName();

    reactor.core.publisher.Mono<com.facebook.thrift.payload.ServerResponsePayload> _result;
    try {
      switch (_name) {
        default: {
          _result = reactor.core.publisher.Mono.error(new org.apache.thrift.TApplicationException(org.apache.thrift.TApplicationException.UNKNOWN_METHOD, "no method found with name " + _name));
        }
      }
    } catch (Throwable _t) {
      _result = reactor.core.publisher.Mono.error(_t);
    }

    return _result;
  }

  public java.util.Map<String, com.facebook.thrift.server.RpcServerHandler> getMethodMap() {
      return _methodMap;
  }

}
