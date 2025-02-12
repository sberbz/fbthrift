/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#include <src/gen-py3/module/services_wrapper.h>
#include <src/gen-py3/module/services_api.h>
#include <thrift/lib/cpp2/async/AsyncProcessor.h>

namespace cpp2 {

ServiceWrapper::ServiceWrapper(PyObject *obj, folly::Executor* exc)
  : if_object(obj), executor(exc)
  {
    import_module__services();
  }


void ServiceWrapper::async_tm_func(
  std::unique_ptr<apache::thrift::HandlerCallback<int32_t>> callback
    , std::unique_ptr<std::string> arg1
    , std::unique_ptr<std::string> arg2
    , std::unique_ptr<::cpp2::Foo> arg3
) {
  auto ctx = callback->getRequestContext();
  folly::via(
    this->executor,
    [this, ctx,
     callback = std::move(callback),
arg1 = std::move(arg1),
arg2 = std::move(arg2),
arg3 = std::move(arg3)    ]() mutable {
        auto [promise, future] = folly::makePromiseContract<int32_t>();
        call_cy_Service_func(
            this->if_object,
            ctx,
            std::move(promise),
            std::move(arg1),
            std::move(arg2),
            std::move(arg3)        );
        std::move(future).via(this->executor).thenTry([callback = std::move(callback)](folly::Try<int32_t>&& t) {
          (void)t;
          callback->complete(std::move(t));
        });
    });
}
std::shared_ptr<apache::thrift::ServerInterface> ServiceInterface(PyObject *if_object, folly::Executor *exc) {
  return std::make_shared<ServiceWrapper>(if_object, exc);
}
folly::SemiFuture<folly::Unit> ServiceWrapper::semifuture_onStartServing() {
  auto [promise, future] = folly::makePromiseContract<folly::Unit>();
  call_cy_Service_onStartServing(
      this->if_object,
      std::move(promise)
  );
  return std::move(future);
}
folly::SemiFuture<folly::Unit> ServiceWrapper::semifuture_onStopRequested() {
  auto [promise, future] = folly::makePromiseContract<folly::Unit>();
  call_cy_Service_onStopRequested(
      this->if_object,
      std::move(promise)
  );
  return std::move(future);
}
} // namespace cpp2
