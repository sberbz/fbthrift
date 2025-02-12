/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <thrift/lib/cpp2/async/AsyncProcessorHelper.h>

#include <fmt/core.h>

#include <thrift/lib/cpp/TApplicationException.h>

namespace apache::thrift {

/* static */ void AsyncProcessorHelper::sendUnknownMethodError(
    ResponseChannelRequest::UniquePtr request, std::string_view methodName) {
  auto message = fmt::format("Method name {} not found", methodName);
  request->sendErrorWrapped(
      folly::make_exception_wrapper<TApplicationException>(
          TApplicationException::UNKNOWN_METHOD, std::move(message)),
      kMethodUnknownErrorCode);
}

/* static */ void AsyncProcessorHelper::executeRequest(
    ServerRequest&& serverRequest) {
  auto ap = detail::ServerRequestHelper::asyncProcessor(serverRequest);
  AsyncProcessorFactory::MethodMetadata const& metadata =
      *serverRequest.methodMetadata();
  folly::RequestContextScopeGuard rctx(serverRequest.follyRequestContext());
  // In future changes this is where we will call the
  // TProcessorEventHandler methods and do other generic processing. For
  // not just calling executeRequest is sufficient for testing.
  ap->executeRequest(std::move(serverRequest), metadata);
}

} // namespace apache::thrift
