module Gem

  BasicSpecification = Gem::BasicSpecification
  CommandLineError = Gem::CommandLineError
  ConfigFile = Gem::ConfigFile
  ConfigMap = {:ruby_version=>"2.1.0"}
  DEFAULT_HOST = "https://rubygems.org"
  Dependency = Gem::Dependency
  DependencyError = Gem::DependencyError
  DependencyList = Gem::DependencyList
  DependencyRemovalException = Gem::DependencyRemovalException
  DependencyResolutionError = Gem::DependencyResolutionError
  DependencyResolver = Gem::Resolver
  Deprecate = Gem::Deprecate
  DocumentError = Gem::DocumentError
  EndOfYAMLException = Gem::EndOfYAMLException
  ErrorReason = Gem::ErrorReason
  Exception = Gem::Exception
  FilePermissionError = Gem::FilePermissionError
  FormatException = Gem::FormatException
  GEM_DEP_FILES = ["gem.deps.rb", "Gemfile", "Isolate"]
  GEM_PRELUDE_SUCKAGE = nil
  GemNotFoundException = Gem::GemNotFoundException
  GemNotInHomeException = Gem::GemNotInHomeException
  ImpossibleDependenciesError = Gem::ImpossibleDependenciesError
  InstallError = Gem::InstallError
  Installer = Gem::Installer
  InvalidSpecificationException = Gem::InvalidSpecificationException
  LoadError = Gem::LoadError
  MARSHAL_SPEC_DIR = "quick/Marshal.4.8/"
  OperationNotSupportedError = Gem::OperationNotSupportedError
  PathSupport = Gem::PathSupport
  Platform = Gem::Platform
  PlatformMismatch = Gem::PlatformMismatch
  REPOSITORY_DEFAULT_GEM_SUBDIRECTORIES = ["gems", "specifications/default"]
  REPOSITORY_SUBDIRECTORIES = ["build_info", "cache", "doc", "extensions", "gems", "specifications"]
  RUBYGEMS_DIR = "/usr/lib/ruby/2.1.0"
  RbConfigPriorities = ["MAJOR", "MINOR", "TEENY", "EXEEXT", "RUBY_SO_NAME", "arch", "bindir", "datadir", "libdir", "ruby_install_name", "ruby_version", "rubylibprefix", "sitedir", "sitelibdir", "vendordir", "vendorlibdir", "rubylibdir"]
  RemoteError = Gem::RemoteError
  RemoteInstallationCancelled = Gem::RemoteInstallationCancelled
  RemoteInstallationSkipped = Gem::RemoteInstallationSkipped
  RemoteSourceException = Gem::RemoteSourceException
  RequestSet = Gem::RequestSet
  Requirement = Gem::Requirement
  Resolver = Gem::Resolver
  RubyGemsPackageVersion = "2.2.2"
  RubyGemsVersion = "2.2.2"
  RubyVersionMismatch = Gem::RubyVersionMismatch
  Source = Gem::Source
  SourceFetchProblem = Gem::SourceFetchProblem
  SourceList = Gem::SourceList
  SpecFetcher = Gem::SpecFetcher
  SpecificGemNotFoundException = Gem::SpecificGemNotFoundException
  Specification = Gem::Specification
  StringSink = Gem::StringSink
  StringSource = Gem::StringSource
  StubSpecification = Gem::StubSpecification
  SystemExitException = Gem::SystemExitException
  UnsatisfiableDepedencyError = Gem::UnsatisfiableDependencyError
  UnsatisfiableDependencyError = Gem::UnsatisfiableDependencyError
  VERSION = "2.2.2"
  VerificationError = Gem::VerificationError
  Version = Gem::Version
  WIN_PATTERNS = [/bccwin/i, /cygwin/i, /djgpp/i, /mingw/i, /mswin/i, /wince/i]

  def self.bin_path(arg0, arg1, arg2, *rest)
  end

  def self.binary_mode
  end

  def self.bindir(arg0, arg1, *rest)
  end

  def self.clear_default_specs
  end

  def self.clear_paths
  end

  def self.config_file
  end

  def self.configuration
  end

  def self.configuration=(arg0)
  end

  def self.datadir(arg0)
  end

  def self.default_bindir
  end

  def self.default_cert_path
  end

  def self.default_dir
  end

  def self.default_exec_format
  end

  def self.default_ext_dir_for(arg0)
  end

  def self.default_gems_use_full_paths?
  end

  def self.default_key_path
  end

  def self.default_path
  end

  def self.default_rubygems_dirs
  end

  def self.default_sources
  end

  def self.default_spec_cache_dir
  end

  def self.deflate(arg0)
  end

  def self.detect_gemdeps
  end

  def self.dir
  end

  def self.done_installing
  end

  def self.done_installing_hooks
  end

  def self.ensure_default_gem_subdirectories(arg0, arg1, *rest)
  end

  def self.ensure_gem_subdirectories(arg0, arg1, *rest)
  end

  def self.ensure_subdirectories(arg0, arg1, arg2)
  end

  def self.extension_api_version
  end

  def self.find_files(arg0, arg1, arg2, *rest)
  end

  def self.find_files_from_load_path(arg0)
  end

  def self.find_latest_files(arg0, arg1, arg2, *rest)
  end

  def self.find_unresolved_default_spec(arg0)
  end

  def self.finish_resolve(arg0, arg1, *rest)
  end

  def self.gunzip(arg0)
  end

  def self.gzip(arg0)
  end

  def self.host
  end

  def self.host=(arg0)
  end

  def self.inflate(arg0)
  end

  def self.install(arg0, arg1, arg2, *rest)
  end

  def self.install_extension_in_lib
  end

  def self.latest_rubygems_version
  end

  def self.latest_spec_for(arg0)
  end

  def self.latest_version_for(arg0)
  end

  def self.load_env_plugins
  end

  def self.load_path_insert_index
  end

  def self.load_plugin_files(arg0)
  end

  def self.load_plugins
  end

  def self.load_yaml
  end

  def self.loaded_specs
  end

  def self.location_of_caller
  end

  def self.marshal_version
  end

  def self.needs
  end

  def self.path
  end

  def self.path_separator
  end

  def self.paths
  end

  def self.paths=(arg0)
  end

  def self.platforms
  end

  def self.platforms=(arg0)
  end

  def self.post_build
  end

  def self.post_build_hooks
  end

  def self.post_install
  end

  def self.post_install_hooks
  end

  def self.post_reset
  end

  def self.post_reset_hooks
  end

  def self.post_uninstall
  end

  def self.post_uninstall_hooks
  end

  def self.pre_install
  end

  def self.pre_install_hooks
  end

  def self.pre_reset
  end

  def self.pre_reset_hooks
  end

  def self.pre_uninstall
  end

  def self.pre_uninstall_hooks
  end

  def self.prefix
  end

  def self.read_binary(arg0)
  end

  def self.refresh
  end

  def self.register_default_spec(arg0)
  end

  def self.remove_unresolved_default_spec(arg0)
  end

  def self.ruby
  end

  def self.ruby_api_version
  end

  def self.ruby_engine
  end

  def self.ruby_version
  end

  def self.rubygems_version
  end

  def self.sources
  end

  def self.sources=(arg0)
  end

  def self.spec_cache_dir
  end

  def self.suffix_pattern
  end

  def self.suffixes
  end

  def self.time(arg0, arg1, arg2, *rest)
  end

  def self.try_activate(arg0)
  end

  def self.ui
  end

  def self.upstream_default_bindir
  end

  def self.upstream_default_dir
  end

  def self.upstream_default_path
  end

  def self.use_gemdeps
  end

  def self.use_paths(arg0, arg1, arg2, *rest)
  end

  def self.user_dir
  end

  def self.user_home
  end

  def self.win_platform?
  end



  protected


  private

end
