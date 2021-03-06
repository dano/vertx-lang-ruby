require 'vertx/util/utils.rb'
# Generated from io.vertx.core.Future
module Vertx
  #  Represents the result of an action that may, or may not, have occurred yet.
  #  <p>
  class Future
    # @private
    # @param j_del [::Vertx::Future] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::Future] the underlying java delegate
    def j_del
      @j_del
    end
    #  Create a future that hasn't completed yet
    # @return [::Vertx::Future] the future
    def self.future
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::Future.java_method(:future, []).call(),::Vertx::Future)
      end
      raise ArgumentError, "Invalid arguments when calling future()"
    end
    #  Created a succeeded future with the specified result.
    # @param [Object] result the result
    # @return [::Vertx::Future] the future
    def self.succeeded_future(result=nil)
      if !block_given? && result == nil
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::Future.java_method(:succeededFuture, []).call(),::Vertx::Future)
      elsif (result.class == String  || result.class == Hash || result.class == Array || result.class == NilClass || result.class == TrueClass || result.class == FalseClass || result.class == Fixnum || result.class == Float) && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::Future.java_method(:succeededFuture, [Java::java.lang.Object.java_class]).call(::Vertx::Util::Utils.to_object(result)),::Vertx::Future)
      end
      raise ArgumentError, "Invalid arguments when calling succeeded_future(result)"
    end
    #  Create a failed future with the specified failure message.
    # @param [String] failureMessage the failure message
    # @return [::Vertx::Future] the future
    def self.failed_future(failureMessage=nil)
      if failureMessage.class == String && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCore::Future.java_method(:failedFuture, [Java::java.lang.String.java_class]).call(failureMessage),::Vertx::Future)
      end
      raise ArgumentError, "Invalid arguments when calling failed_future(failureMessage)"
    end
    #  Has the future completed?
    #  <p>
    #  It's completed if it's either succeeded or failed.
    # @return [true,false] true if completed, false if not
    def complete?
      if !block_given?
        return @j_del.java_method(:isComplete, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling complete?()"
    end
    #  Set a handler for the result.
    #  <p>
    #  If the future has already been completed it will be called immediately. Otherwise it will be called when the
    #  future is completed.
    # @yield the Handler that will be called with the result
    # @return [self]
    def set_handler
      if block_given?
        @j_del.java_method(:setHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.from_object(ar.result) : nil) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_handler()"
    end
    #  Set the result. Any handler will be called, if there is one, and the future will be marked as completed.
    # @param [Object] result the result
    # @return [void]
    def complete(result=nil)
      if !block_given? && result == nil
        return @j_del.java_method(:complete, []).call()
      elsif (result.class == String  || result.class == Hash || result.class == Array || result.class == NilClass || result.class == TrueClass || result.class == FalseClass || result.class == Fixnum || result.class == Float) && !block_given?
        return @j_del.java_method(:complete, [Java::java.lang.Object.java_class]).call(::Vertx::Util::Utils.to_object(result))
      end
      raise ArgumentError, "Invalid arguments when calling complete(result)"
    end
    #  Set the failure. Any handler will be called, if there is one, and the future will be marked as completed.
    # @overload fail(throwable)
    #   @param [Exception] throwable the failure cause
    # @overload fail(failureMessage)
    #   @param [String] failureMessage the failure message
    # @return [void]
    def fail(param_1=nil)
      if param_1.is_a?(Exception) && !block_given?
        return @j_del.java_method(:fail, [Java::JavaLang::Throwable.java_class]).call(::Vertx::Util::Utils.to_throwable(param_1))
      elsif param_1.class == String && !block_given?
        return @j_del.java_method(:fail, [Java::java.lang.String.java_class]).call(param_1)
      end
      raise ArgumentError, "Invalid arguments when calling fail(param_1)"
    end
    #  The result of the operation. This will be null if the operation failed.
    # @return [Object] the result or null if the operation failed.
    def result
      if !block_given?
        return ::Vertx::Util::Utils.from_object(@j_del.java_method(:result, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling result()"
    end
    #  A Throwable describing failure. This will be null if the operation succeeded.
    # @return [Exception] the cause or null if the operation succeeded.
    def cause
      if !block_given?
        return ::Vertx::Util::Utils.from_throwable(@j_del.java_method(:cause, []).call())
      end
      raise ArgumentError, "Invalid arguments when calling cause()"
    end
    #  Did it succeed?
    # @return [true,false] true if it succeded or false otherwise
    def succeeded?
      if !block_given?
        return @j_del.java_method(:succeeded, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling succeeded?()"
    end
    #  Did it fail?
    # @return [true,false] true if it failed or false otherwise
    def failed?
      if !block_given?
        return @j_del.java_method(:failed, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling failed?()"
    end
    #  Compose this future with another future.
    # 
    #  When this future succeeds, the handler will be called with the value.
    # 
    #  When this future fails, the failure will be propagated to the <code>next</code> future.
    # @param [Proc] handler the handler
    # @param [::Vertx::Future] _next the next future
    # @return [void]
    def compose(handler=nil,_next=nil)
      if handler.class == Proc && _next.class.method_defined?(:j_del) && !block_given?
        return @j_del.java_method(:compose, [Java::IoVertxCore::Handler.java_class,Java::IoVertxCore::Future.java_class]).call((Proc.new { |event| handler.call(::Vertx::Util::Utils.from_object(event)) }),_next.j_del)
      end
      raise ArgumentError, "Invalid arguments when calling compose(handler,_next)"
    end
    #  @return an handler completing this future
    # @return [Proc]
    def completer
      if !block_given?
        if @cached_completer != nil
          return @cached_completer
        end
        return @cached_completer = ::Vertx::Util::Utils.to_async_result_handler_proc(@j_del.java_method(:completer, []).call()) { |val| ::Vertx::Util::Utils.to_object(val) }
      end
      raise ArgumentError, "Invalid arguments when calling completer()"
    end
  end
end
