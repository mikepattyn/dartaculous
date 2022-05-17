import 'package:grpc/grpc.dart';
import 'package:grpc_host/grpc_host.dart';
import 'package:squarealfa_entity_adapter/squarealfa_entity_adapter.dart';

@Deprecated('''This class is being discontinued.
The purpose is to refocus this package on the single task
of hosting gRPC services instead of including classes to 
help implement the actual services, especcially classes
that are related to data persistency.
''')
class AuthenticatedServices {
  final ServiceCall call;
  final Principal principal;

  AuthenticatedServices(this.call) : principal = call.principal {
    principal.throwIfUnauthenticated();
  }

  void throwOnError(ErrorList errors) {
    if (errors.hasErrors) throw errors;
  }

  void throwUnauthorized() {
    throw GrpcError.unauthenticated('Unauthorized');
  }

  void throwNotFound() {
    throw GrpcError.notFound();
  }
}
