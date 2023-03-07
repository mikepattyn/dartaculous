// import 'package:grpc/grpc.dart';
//
// import 'synchronizer.dart';
//
// class GrpcSynchronizer extends Synchronizer {
//   GrpcSynchronizer({
//     required super.database,
//     // required super.localChangeRepository,
//     // required super.changeClient,
//     required super.typeHandlers,
//   });
//
//   @override
//   bool isConflictException(Object exception) {
//     if (exception is! GrpcError) {
//       return false;
//     }
//     return exception.code == StatusCode.aborted ||
//         exception.code == StatusCode.alreadyExists;
//   }
// }
