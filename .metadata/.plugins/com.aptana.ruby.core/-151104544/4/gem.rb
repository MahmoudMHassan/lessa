module Gem

  CommandLineError = Gem::CommandLineError
  ConfigFile = Gem::ConfigFile
  ConfigMap = {:sitedir=>"/Library/Ruby/Site", :ruby_version=>"2.0.0"}
  DEFAULT_HOST = "https://rubygems.org"
  Dependency = Gem::Dependency
  DependencyError = Gem::DependencyError
  DependencyList = Gem::DependencyList
  DependencyRemovalException = Gem::DependencyRemovalException
  DependencyResolver = Gem::DependencyResolver
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
  InstallError = Gem::InstallError
  InvalidSpecificationException = Gem::InvalidSpecificationException
  LoadError = Gem::LoadError
  MARSHAL_SPEC_DIR = "quick/Marshal.4.8/"
  OperationNotSupportedError = Gem::OperationNotSupportedError
  PathSupport = Gem::PathSupport
  Platform = Gem::Platform
  PlatformMismatch = Gem::PlatformMismatch
  REPOSITORY_SUBDIRECTORIES = ["build_info", "cache", "doc", "gems", "specifications"]
  RUBYGEMS_DIR = "/System/Library/Frameworks/Ruby.framework/Versions/2.0/usr/lib/ruby/2.0.0"
  RbConfigPriorities = ["EXEEXT", "RUBY_SO_NAME", "arch", "bindir", "datadir", "libdir", "ruby_install_name", "ruby_version", "rubylibprefix", "sitedir", "sitelibdir", "vendordir", "vendorlibdir", "rubylibdir"]
  RemoteError = Gem::RemoteError
  RemoteInstallationCancelled = Gem::RemoteInstallationCancelled
  RemoteInstallationSkipped = Gem::RemoteInstallationSkipped
  RemoteSourceException = Gem::RemoteSourceException
  RequestSet = Gem::RequestSet
  Requirement = Gem::Requirement
  RubyGemsPackageVersion = "2.0.14"
  RubyGemsVersion = "2.0.14"
  Source = Gem::Source
  SourceFetchProblem = Gem::SourceFetchProblem
  SourceList = Gem::SourceList
  SpecFetcher = Gem::SpecFetcher
  SpecificGemNotFoundException = Gem::SpecificGemNotFoundException
  Specification = Gem::Specification
  SystemExitException = Gem::SystemExitException
  VERSION = "2.0.14"
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

  def self.default_key_path
  end

  def self.default_path
  end

  def self.default_rubygems_dirs
  end

  def self.default_sources
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

  def self.ensure_gem_subdirectories(arg0, arg1, *rest)
  end

  def self.find_files(arg0, arg1, arg2, *rest)
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
