class SyncState {
  final bool isSynchronizing;
  final bool cancelRequested;
  final bool hasConflicts;

  const SyncState({
    required this.isSynchronizing,
    required this.cancelRequested,
    required this.hasConflicts,
  });

  const SyncState.initial()
      : isSynchronizing = false,
        cancelRequested = false,
        hasConflicts = false;

  SyncState copyWith({
    bool? isSynchronizing,
    bool? cancelRequested,
    bool? hasConflicts,
  }) {
    return SyncState(
      isSynchronizing: isSynchronizing ?? this.isSynchronizing,
      cancelRequested: cancelRequested ?? this.cancelRequested,
      hasConflicts: hasConflicts ?? this.hasConflicts,
    );
  }

  SyncState start() {
    return copyWith(
        isSynchronizing: true, cancelRequested: false, hasConflicts: false);
  }

  SyncState stop() {
    return copyWith(isSynchronizing: false, cancelRequested: false);
  }

  SyncState cancel() {
    return copyWith(cancelRequested: true);
  }

  SyncState withConflict() {
    return copyWith(hasConflicts: true);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SyncState &&
          runtimeType == other.runtimeType &&
          isSynchronizing == other.isSynchronizing &&
          cancelRequested == other.cancelRequested &&
          hasConflicts == other.hasConflicts;

  @override
  int get hashCode =>
      isSynchronizing.hashCode ^
      cancelRequested.hashCode ^
      hasConflicts.hashCode;
}
