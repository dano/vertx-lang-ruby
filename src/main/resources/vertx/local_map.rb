require 'vertx/util/utils.rb'
# Generated from io.vertx.core.shareddata.LocalMap<K,V>
module Vertx
  #  Local maps can be used to share data safely in a single Vert.x instance.
  #  <p>
  #  The map only allows immutable keys and values in the map, OR certain mutable objects such as {::Vertx::Buffer}
  #  instances which will be copied when they are added to the map.
  #  <p>
  #  This ensures there is no shared access to mutable state from different threads (e.g. different event loops) in the
  #  Vert.x instance, and means you don't have to protect access to that state using synchronization or locks.
  class LocalMap
    # @private
    # @param j_del [::Vertx::LocalMap] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::LocalMap] the underlying java delegate
    def j_del
      @j_del
    end
    #  Get a value from the map
    # @param [Object] key the key
    # @return [Object] the value, or null if none
    def get(key=nil)
      if key.class == String  ||key.class == Hash || key.class == Array && !block_given?
        return ::Vertx::Util::Utils.from_object((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:get,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(key)))
      end
      raise ArgumentError, "Invalid arguments when calling get(key)"
    end
    #  Put an entry in the map
    # @param [Object] key the key
    # @param [Object] value the value
    # @return [Object] return the old value, or null if none
    def put(key=nil,value=nil)
      if key.class == String  ||key.class == Hash || key.class == Array && value.class == String  ||value.class == Hash || value.class == Array && !block_given?
        return ::Vertx::Util::Utils.from_object((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:put,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(key),::Vertx::Util::Utils.to_object(value)))
      end
      raise ArgumentError, "Invalid arguments when calling put(key,value)"
    end
    #  Remove an entry from the map
    # @param [Object] key the key
    # @return [Object] the old value
    def remove(key=nil)
      if key.class == String  ||key.class == Hash || key.class == Array && !block_given?
        return ::Vertx::Util::Utils.from_object((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:remove,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(key)))
      end
      raise ArgumentError, "Invalid arguments when calling remove(key)"
    end
    #  Clear all entries in the map
    # @return [void]
    def clear
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:clear))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling clear()"
    end
    #  Get the size of the map
    # @return [Fixnum] the number of entries in the map
    def size
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:size))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling size()"
    end
    #  @return true if there are zero entries in the map
    # @return [true,false]
    def is_empty
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:isEmpty))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling is_empty()"
    end
    #  Put the entry only if there is no existing entry for that key
    # @param [Object] key the key
    # @param [Object] value the value
    # @return [Object] the old value or null, if none
    def put_if_absent(key=nil,value=nil)
      if key.class == String  ||key.class == Hash || key.class == Array && value.class == String  ||value.class == Hash || value.class == Array && !block_given?
        return ::Vertx::Util::Utils.from_object((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:putIfAbsent,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(key),::Vertx::Util::Utils.to_object(value)))
      end
      raise ArgumentError, "Invalid arguments when calling put_if_absent(key,value)"
    end
    #  Remove the entry only if there is an entry with the specified key and value
    # @param [Object] key the key
    # @param [Object] value the value
    # @return [true,false] true if removed
    def remove_if_present(key=nil,value=nil)
      if key.class == String  ||key.class == Hash || key.class == Array && value.class == String  ||value.class == Hash || value.class == Array && !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:removeIfPresent,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(key),::Vertx::Util::Utils.to_object(value))
      end
      raise ArgumentError, "Invalid arguments when calling remove_if_present(key,value)"
    end
    #  Replace the entry only if there is an existing entry with the specified key and value
    # @param [Object] key the key
    # @param [Object] oldValue the old value
    # @param [Object] newValue the new value
    # @return [true,false] true if removed
    def replace_if_present(key=nil,oldValue=nil,newValue=nil)
      if key.class == String  ||key.class == Hash || key.class == Array && oldValue.class == String  ||oldValue.class == Hash || oldValue.class == Array && newValue.class == String  ||newValue.class == Hash || newValue.class == Array && !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:replaceIfPresent,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(key),::Vertx::Util::Utils.to_object(oldValue),::Vertx::Util::Utils.to_object(newValue))
      end
      raise ArgumentError, "Invalid arguments when calling replace_if_present(key,oldValue,newValue)"
    end
    #  Replace the entry only if there is an existing entry with the key
    # @param [Object] key the key
    # @param [Object] value the new value
    # @return [Object] the old value
    def replace(key=nil,value=nil)
      if key.class == String  ||key.class == Hash || key.class == Array && value.class == String  ||value.class == Hash || value.class == Array && !block_given?
        return ::Vertx::Util::Utils.from_object((Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:replace,Java::java.lang.Object.java_class,Java::java.lang.Object.java_class))).invoke(@j_del,::Vertx::Util::Utils.to_object(key),::Vertx::Util::Utils.to_object(value)))
      end
      raise ArgumentError, "Invalid arguments when calling replace(key,value)"
    end
    #  Close and release the map
    # @return [void]
    def close
      if !block_given?
        return (Java::IoVertxLangJruby::Helper.fixJavaMethod(@j_del.java_class.declared_method(:close))).invoke(@j_del)
      end
      raise ArgumentError, "Invalid arguments when calling close()"
    end
  end
end
