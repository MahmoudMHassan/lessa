module GC

  INTERNAL_CONSTANTS = {:RVALUE_SIZE=>40, :HEAP_OBJ_LIMIT=>408, :HEAP_BITMAP_SIZE=>56, :HEAP_BITMAP_PLANES=>3}
  OPTS = ["USE_RGENGC", "RGENGC_ESTIMATE_OLDMALLOC", "GC_ENABLE_LAZY_SWEEP"]
  Profiler = GC::Profiler

  def self.count
  end

  def self.disable
  end

  def self.enable
  end

  def self.latest_gc_info(arg0, arg1, *rest)
  end

  def self.start(arg0, arg1, *rest)
  end

  def self.stat(arg0, arg1, *rest)
  end

  def self.stress
  end

  def self.stress=(arg0)
  end

  def self.verify_internal_consistency
  end


  def garbage_collect(arg0, arg1, *rest)
  end


  protected


  private

end
