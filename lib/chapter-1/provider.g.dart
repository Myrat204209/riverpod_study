// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activityHash() => r'6c815736c0d2b40a92695adcd78516534d7ac2fc';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// This will create a provider named `activityProvider`
/// which will cache the result of this function.
///
/// Copied from [activity].
@ProviderFor(activity)
const activityProvider = ActivityFamily();

/// This will create a provider named `activityProvider`
/// which will cache the result of this function.
///
/// Copied from [activity].
class ActivityFamily extends Family<AsyncValue<Activity>> {
  /// This will create a provider named `activityProvider`
  /// which will cache the result of this function.
  ///
  /// Copied from [activity].
  const ActivityFamily();

  /// This will create a provider named `activityProvider`
  /// which will cache the result of this function.
  ///
  /// Copied from [activity].
  ActivityProvider call(String activityType) {
    return ActivityProvider(activityType);
  }

  @override
  ActivityProvider getProviderOverride(covariant ActivityProvider provider) {
    return call(provider.activityType);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'activityProvider';
}

/// This will create a provider named `activityProvider`
/// which will cache the result of this function.
///
/// Copied from [activity].
class ActivityProvider extends AutoDisposeFutureProvider<Activity> {
  /// This will create a provider named `activityProvider`
  /// which will cache the result of this function.
  ///
  /// Copied from [activity].
  ActivityProvider(String activityType)
    : this._internal(
        (ref) => activity(ref as ActivityRef, activityType),
        from: activityProvider,
        name: r'activityProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$activityHash,
        dependencies: ActivityFamily._dependencies,
        allTransitiveDependencies: ActivityFamily._allTransitiveDependencies,
        activityType: activityType,
      );

  ActivityProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.activityType,
  }) : super.internal();

  final String activityType;

  @override
  Override overrideWith(
    FutureOr<Activity> Function(ActivityRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ActivityProvider._internal(
        (ref) => create(ref as ActivityRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        activityType: activityType,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Activity> createElement() {
    return _ActivityProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActivityProvider && other.activityType == activityType;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, activityType.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ActivityRef on AutoDisposeFutureProviderRef<Activity> {
  /// The parameter `activityType` of this provider.
  String get activityType;
}

class _ActivityProviderElement
    extends AutoDisposeFutureProviderElement<Activity>
    with ActivityRef {
  _ActivityProviderElement(super.provider);

  @override
  String get activityType => (origin as ActivityProvider).activityType;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
