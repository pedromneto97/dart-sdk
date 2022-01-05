/// Describes how the overrides should behave.
enum OverrideBehaviour {
  /// When evaluating values, the SDK will not use feature flags & settings from the ConfigCat CDN, but it will use
  /// all feature flags & settings that are loaded from local-override sources.
  localOnly,

  /// When evaluating values, the SDK will use all feature flags & settings that are downloaded from the ConfigCat CDN,
  /// plus all feature flags & settings that are loaded from local-override sources. If a feature flag or a setting is
  /// defined both in the fetched and the local-override source then the local-override version will take precedence.
  localOverRemote,

  /// When evaluating values, the SDK will use all feature flags & settings that are downloaded from the ConfigCat CDN,
  /// plus all feature flags & settings that are loaded from local-override sources. If a feature flag or a setting is
  /// defined both in the fetched and the local-override source then the fetched version will take precedence.
  remoteOverLocal
}
