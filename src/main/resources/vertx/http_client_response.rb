require 'vertx/buffer'
require 'vertx/read_stream'
require 'vertx/multi_map'
require 'vertx/net_socket'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpClientResponse
module Vertx
  #  Represents a client-side HTTP response.<p>
  #  An instance is provided to the user via a {::Vertx::Handler}
  #  instance that was specified when one of the HTTP method operations, or the
  #  generic 
  #  method was called on an instance of {::Vertx::HttpClient}.<p>
  #  It implements {::Vertx::ReadStream} so it can be used with
  #  {::Vertx::Pump} to pump data with flow control.<p>
  #  Instances of this class are not thread-safe.<p>
  class HttpClientResponse
    include ::Vertx::ReadStream
    # @private
    # @param j_del [::Vertx::HttpClientResponse] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::HttpClientResponse] the underlying java delegate
    def j_del
      @j_del
    end
    # return [self]
    def resume
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resume))).invoke(@j_del)
      self
    end
    # @param [Proc] handler
    # return [self]
    def exception_handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:exceptionHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(event) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling exception_handler(handler)"
    end
    # @param [Proc] handler
    # return [self]
    def handler(&handler)
      if handler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:handler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| handler.call(::Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument handler=#{handler} when calling handler(handler)"
    end
    # return [self]
    def pause
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:pause))).invoke(@j_del)
      self
    end
    # @param [Proc] endHandler
    # return [self]
    def end_handler(&endHandler)
      if endHandler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:endHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,endHandler)
        return self
      end
      raise ArgumentError, "Invalid argument endHandler=#{endHandler} when calling end_handler(endHandler)"
    end
    #  The HTTP status code of the response
    # @return [Fixnum]
    def status_code
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:statusCode))).invoke(@j_del)
    end
    #  The HTTP status message of the response
    # @return [String]
    def status_message
      (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:statusMessage))).invoke(@j_del)
    end
    #  @return The HTTP headers
    # @return [::Vertx::MultiMap]
    def headers
      if @cached_headers != nil
        return @cached_headers
      end
      @cached_headers = ::Vertx::MultiMap.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:headers))).invoke(@j_del))
    end
    #  @return The HTTP trailers
    # @return [::Vertx::MultiMap]
    def trailers
      if @cached_trailers != nil
        return @cached_trailers
      end
      @cached_trailers = ::Vertx::MultiMap.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:trailers))).invoke(@j_del))
    end
    #  @return The Set-Cookie headers (including trailers)
    # @return [Array<String>]
    def cookies
      if @cached_cookies != nil
        return @cached_cookies
      end
      @cached_cookies = (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:cookies))).invoke(@j_del).to_a.map { |elt| elt }
    end
    #  Convenience method for receiving the entire request body in one piece. This saves the user having to manually
    #  set a data and end handler and append the chunks of the body until the whole body received.
    #  Don't use this if your request body is large - you could potentially run out of RAM.
    # @param [Proc] bodyHandler
    # return [self]
    def body_handler(&bodyHandler)
      if bodyHandler.class == Proc
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:bodyHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| bodyHandler.call(::Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid argument bodyHandler=#{bodyHandler} when calling body_handler(bodyHandler)"
    end
    #  Get a net socket for the underlying connection of this request. USE THIS WITH CAUTION!
    #  Writing to the socket directly if you don't know what you're doing can easily break the HTTP protocol
    # 
    #  One valid use-case for calling this is to receive the {::Vertx::NetSocket} after a HTTP CONNECT was issued to the
    #  remote peer and it responded with a status code of 200.
    # @return [::Vertx::NetSocket]
    def net_socket
      if @cached_net_socket != nil
        return @cached_net_socket
      end
      @cached_net_socket = ::Vertx::NetSocket.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:netSocket))).invoke(@j_del))
    end
  end
end
