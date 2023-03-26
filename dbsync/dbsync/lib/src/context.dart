abstract class Context {
  const Context();
  factory Context.background() => BackgroundContext();
}

class BackgroundContext extends Context {}

