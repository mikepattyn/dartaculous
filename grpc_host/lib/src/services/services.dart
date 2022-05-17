@Deprecated('''This library is being discontinued.
The purpose is to refocus this package on the single task
of hosting gRPC services instead of including classes to 
help implement the actual services, especcially classes
that are related to data persistency.
''')
library services;

export 'entity_services.dart';
export 'entity_services_parameters.dart';
export 'service_collection.dart';
export 'crud_service_methods.dart';
export 'paged_search_result.dart';
export 'authenticated_services.dart';
export 'entity_services_base.dart';
export 'search_methods.dart';
export 'crud_methods.dart';
