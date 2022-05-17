import 'package:grpc/grpc.dart';
import 'package:grpc_host/grpc_host.dart';

@Deprecated('''This class is being discontinued.
The purpose is to refocus this package on the single task
of hosting gRPC services instead of including classes to 
help implement the actual services, especcially classes
that are related to data persistency.
''')
abstract class ServiceCollection {
  final Container container;

  ServiceCollection(this.container);

  List<Service> get services;
}
