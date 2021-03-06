require 'vertx/buffer'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.http.HttpFrame
module Vertx
  #  An HTTP/2 frame.
  class HttpFrame
    # @private
    # @param j_del [::Vertx::HttpFrame] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::HttpFrame] the underlying java delegate
    def j_del
      @j_del
    end
    #  @return the 8-bit type of the frame
    # @return [Fixnum]
    def type
      if !block_given?
        if @cached_type != nil
          return @cached_type
        end
        return @cached_type = @j_del.java_method(:type, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling type()"
    end
    #  @return the 8-bit flags specific to the frame
    # @return [Fixnum]
    def flags
      if !block_given?
        if @cached_flags != nil
          return @cached_flags
        end
        return @cached_flags = @j_del.java_method(:flags, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling flags()"
    end
    #  @return the frame payload
    # @return [::Vertx::Buffer]
    def payload
      if !block_given?
        if @cached_payload != nil
          return @cached_payload
        end
        return @cached_payload = ::Vertx::Util::Utils.safe_create(@j_del.java_method(:payload, []).call(),::Vertx::Buffer)
      end
      raise ArgumentError, "Invalid arguments when calling payload()"
    end
  end
end
