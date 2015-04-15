require 'vertx/web_socket_base'
require 'vertx/buffer'
require 'vertx/web_socket_frame'
require 'vertx/socket_address'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.WebSocket
module Vertx
  #  Represents a client-side WebSocket.
  class WebSocket
    include ::Vertx::WebSocketBase
    # @private
    # @param j_del [::Vertx::WebSocket] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::WebSocket] the underlying java delegate
    def j_del
      @j_del
    end
    #  This will return <code>true</code> if there are more bytes in the write queue than the value set using {::Vertx::WebSocket#set_write_queue_max_size}
    # @return [true,false] true if write queue is full
    def write_queue_full
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:writeQueueFull))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling write_queue_full()"
    end
    #  When a <code>Websocket</code> is created it automatically registers an event handler with the event bus - the ID of that
    #  handler is given by this method.
    #  <p>
    #  Given this ID, a different event loop can send a binary frame to that event handler using the event bus and
    #  that buffer will be received by this instance in its own event loop and written to the underlying connection. This
    #  allows you to write data to other WebSockets which are owned by different event loops.
    # @return [String] the binary handler id
    def binary_handler_id
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:binaryHandlerID))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling binary_handler_id()"
    end
    #  When a <code>Websocket</code> is created it automatically registers an event handler with the eventbus, the ID of that
    #  handler is given by <code>textHandlerID</code>.
    #  <p>
    #  Given this ID, a different event loop can send a text frame to that event handler using the event bus and
    #  that buffer will be received by this instance in its own event loop and written to the underlying connection. This
    #  allows you to write data to other WebSockets which are owned by different event loops.
    # @return [String]
    def text_handler_id
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:textHandlerID))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling text_handler_id()"
    end
    #  Close the WebSocket.
    # @return [void]
    def close
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
    #  @return the remote address for this socket
    # @return [::Vertx::SocketAddress]
    def remote_address
      if !block_given?
        if @cached_remote_address != nil
          return @cached_remote_address
        end
        return @cached_remote_address = ::Vertx::SocketAddress.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:remoteAddress))).invoke(@j_del))
      end
      raise ArgumentError, "Invalid arguments when calling remote_address()"
    end
    #  @return the local address for this socket
    # @return [::Vertx::SocketAddress]
    def local_address
      if !block_given?
        if @cached_local_address != nil
          return @cached_local_address
        end
        return @cached_local_address = ::Vertx::SocketAddress.new((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:localAddress))).invoke(@j_del))
      end
      raise ArgumentError, "Invalid arguments when calling local_address()"
    end
    # @yield 
    # @return [self]
    def exception_handler
      if block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:exceptionHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| yield(event) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling exception_handler()"
    end
    # @yield 
    # @return [self]
    def handler
      if block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:handler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| yield(::Vertx::Buffer.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling handler()"
    end
    # @return [self]
    def pause
      if !block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:pause))).invoke(@j_del)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling pause()"
    end
    # @return [self]
    def resume
      if !block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:resume))).invoke(@j_del)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling resume()"
    end
    # @yield 
    # @return [self]
    def end_handler
      if block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:endHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling end_handler()"
    end
    # @param [::Vertx::Buffer] data
    # @return [self]
    def write(data=nil)
      if data.class.method_defined?(:j_del) && !block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:write,Java::IoVertxCoreBuffer::Buffer.java_class))).invoke(@j_del,data.j_del)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling write(data)"
    end
    # @param [Fixnum] maxSize
    # @return [self]
    def set_write_queue_max_size(maxSize=nil)
      if maxSize.class == Fixnum && !block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:setWriteQueueMaxSize,Java::int.java_class))).invoke(@j_del,maxSize)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_write_queue_max_size(maxSize)"
    end
    # @yield 
    # @return [self]
    def drain_handler
      if block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:drainHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling drain_handler()"
    end
    # @param [::Vertx::WebSocketFrame] frame
    # @return [self]
    def write_frame(frame=nil)
      if frame.class.method_defined?(:j_del) && !block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:writeFrame,Java::IoVertxCoreHttp::WebSocketFrame.java_class))).invoke(@j_del,frame.j_del)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling write_frame(frame)"
    end
    # @param [::Vertx::Buffer] data
    # @return [self]
    def write_message(data=nil)
      if data.class.method_defined?(:j_del) && !block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:writeMessage,Java::IoVertxCoreBuffer::Buffer.java_class))).invoke(@j_del,data.j_del)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling write_message(data)"
    end
    # @yield 
    # @return [self]
    def close_handler
      if block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:closeHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling close_handler()"
    end
    # @yield 
    # @return [self]
    def frame_handler
      if block_given?
        (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:frameHandler,Java::IoVertxCore::Handler.java_class))).invoke(@j_del,(Proc.new { |event| yield(::Vertx::WebSocketFrame.new(event)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling frame_handler()"
    end
  end
end
