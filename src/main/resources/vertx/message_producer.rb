require 'vertx/write_stream'
require 'vertx/message'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.eventbus.MessageProducer
module Vertx
  #  Represents a stream of message that can be written to.
  #  <p>
  class MessageProducer
    include ::Vertx::WriteStream
    # @private
    # @param j_del [::Vertx::MessageProducer] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::MessageProducer] the underlying java delegate
    def j_del
      @j_del
    end
    #  Same as {::Vertx::MessageProducer#end} but writes some data to the stream before ending.
    # @param [Object] t 
    # @return [void]
    def end(t=nil)
      if !block_given? && t == nil
        return @j_del.java_method(:end, []).call()
      elsif (t.class == String  || t.class == Hash || t.class == Array || t.class == NilClass || t.class == TrueClass || t.class == FalseClass || t.class == Fixnum || t.class == Float) && !block_given?
        return @j_del.java_method(:end, [Java::java.lang.Object.java_class]).call(::Vertx::Util::Utils.to_object(t))
      end
      raise ArgumentError, "Invalid arguments when calling end(t)"
    end
    #  This will return <code>true</code> if there are more bytes in the write queue than the value set using {::Vertx::MessageProducer#set_write_queue_max_size}
    # @return [true,false] true if write queue is full
    def write_queue_full?
      if !block_given?
        return @j_del.java_method(:writeQueueFull, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling write_queue_full?()"
    end
    # @param [Object] message 
    # @yield 
    # @return [::Vertx::MessageProducer]
    def send(message=nil)
      if (message.class == String  || message.class == Hash || message.class == Array || message.class == NilClass || message.class == TrueClass || message.class == FalseClass || message.class == Fixnum || message.class == Float) && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:send, [Java::java.lang.Object.java_class]).call(::Vertx::Util::Utils.to_object(message)),::Vertx::MessageProducer)
      elsif (message.class == String  || message.class == Hash || message.class == Array || message.class == NilClass || message.class == TrueClass || message.class == FalseClass || message.class == Fixnum || message.class == Float) && block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:send, [Java::java.lang.Object.java_class,Java::IoVertxCore::Handler.java_class]).call(::Vertx::Util::Utils.to_object(message),(Proc.new { |ar| yield(ar.failed ? ar.cause : nil, ar.succeeded ? ::Vertx::Util::Utils.safe_create(ar.result,::Vertx::Message) : nil) })),::Vertx::MessageProducer)
      end
      raise ArgumentError, "Invalid arguments when calling send(message)"
    end
    # @yield 
    # @return [self]
    def exception_handler
      if block_given?
        @j_del.java_method(:exceptionHandler, [Java::IoVertxCore::Handler.java_class]).call((Proc.new { |event| yield(::Vertx::Util::Utils.from_throwable(event)) }))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling exception_handler()"
    end
    # @param [Object] data 
    # @return [self]
    def write(data=nil)
      if (data.class == String  || data.class == Hash || data.class == Array || data.class == NilClass || data.class == TrueClass || data.class == FalseClass || data.class == Fixnum || data.class == Float) && !block_given?
        @j_del.java_method(:write, [Java::java.lang.Object.java_class]).call(::Vertx::Util::Utils.to_object(data))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling write(data)"
    end
    # @param [Fixnum] maxSize 
    # @return [self]
    def set_write_queue_max_size(maxSize=nil)
      if maxSize.class == Fixnum && !block_given?
        @j_del.java_method(:setWriteQueueMaxSize, [Java::int.java_class]).call(maxSize)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_write_queue_max_size(maxSize)"
    end
    # @yield 
    # @return [self]
    def drain_handler
      if block_given?
        @j_del.java_method(:drainHandler, [Java::IoVertxCore::Handler.java_class]).call(Proc.new { yield })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling drain_handler()"
    end
    #  Update the delivery options of this producer.
    # @param [Hash] options the new options
    # @return [self]
    def delivery_options(options=nil)
      if options.class == Hash && !block_given?
        @j_del.java_method(:deliveryOptions, [Java::IoVertxCoreEventbus::DeliveryOptions.java_class]).call(Java::IoVertxCoreEventbus::DeliveryOptions.new(::Vertx::Util::Utils.to_json_object(options)))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling delivery_options(options)"
    end
    #  @return The address to which the producer produces messages.
    # @return [String]
    def address
      if !block_given?
        return @j_del.java_method(:address, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling address()"
    end
    #  Closes the producer, this method should be called when the message producer is not used anymore.
    # @return [void]
    def close
      if !block_given?
        return @j_del.java_method(:close, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
  end
end
