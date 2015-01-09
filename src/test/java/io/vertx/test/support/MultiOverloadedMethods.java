package io.vertx.test.support;

import io.vertx.codegen.annotations.VertxGen;

/**
 * @author <a href="mailto:julien@julienviet.com">Julien Viet</a>
 */
@VertxGen
public interface MultiOverloadedMethods {

  void method();
  void method(String foo);
  void method(int bar, boolean juu);

}