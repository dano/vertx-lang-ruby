include_class 'io.vertx.core.http.WebSocketBase'
include_class 'io.vertx.core.buffer.Buffer'
include_class 'io.vertx.core.MultiMap'
include_class 'io.vertx.core.http.WebSocketFrame'
include_class 'io.vertx.core.net.SocketAddress'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.ServerWebSocket
module Vertx
  class ServerWebSocket
    def initialize(j_del)
      @j_del = j_del
    end
    def j_del
      @j_del
    end
    def write_queue_full()
      return @j_del.writeQueueFull()
    end
    def binary_handler_id()
      return @j_del.binaryHandlerID()
    end
    def text_handler_id()
      return @j_del.textHandlerID()
    end
    def close()
      return @j_del.close()
    end
    def remote_address()
      return nil
    end
    def local_address()
      return nil
    end
    def exception_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.exceptionHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.handler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def pause()
      @j_del.pause()
      return self
    end
    def resume()
      @j_del.resume()
      return self
    end
    def end_handler(end_handler)
      if end_handler != nil && end_handler.class == Proc
        @j_del.endHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def write(data)
      if data != nil && data.class.method_defined?(:j_del)
        @j_del.write(data.j_del)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def set_write_queue_max_size(max_size)
      if max_size != nil && max_size.class == Fixnum
        @j_del.setWriteQueueMaxSize(max_size)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def drain_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.drainHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def write_frame(frame)
      if frame != nil && frame.class.method_defined?(:j_del)
        @j_del.writeFrame(frame.j_del)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def write_message(data)
      if data != nil && data.class.method_defined?(:j_del)
        @j_del.writeMessage(data.j_del)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def close_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.closeHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def frame_handler(handler)
      if handler != nil && handler.class == Proc
        @j_del.frameHandler(nil)
        return self
      end
      raise ArgumentError, 'dispatch error'
    end
    def uri()
      return @j_del.uri()
    end
    def path()
      return @j_del.path()
    end
    def query()
      return @j_del.query()
    end
    def headers()
      return nil
    end
    def reject()
      @j_del.reject()
      return self
    end
  end
end