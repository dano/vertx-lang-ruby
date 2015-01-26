package io.vertx.lang.jruby;

import org.jruby.javasupport.JavaMethod;

import java.lang.reflect.Method;
import java.util.Map;
import java.util.function.Function;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
public class Helper {

  public static Map adaptingMap(Map map, Function toRuby, Function toJava) {
    if (map == null) {
      return null;
    }
    return new AdaptingMap(map, toRuby, toJava);
  }

  public static ConvertingJavaMethod fixJavaMethod(JavaMethod method) {
    return new ConvertingJavaMethod(method.getRuntime(), (Method) method.getValue());
  }
}
