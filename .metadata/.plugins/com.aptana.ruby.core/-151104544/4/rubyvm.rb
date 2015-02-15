class RubyVM < Object

  DEFAULT_PARAMS = {:thread_vm_stack_size=>1048576, :thread_machine_stack_size=>1048576, :fiber_vm_stack_size=>131072, :fiber_machine_stack_size=>524288}
  Env = RubyVM::Env
  INSTRUCTION_NAMES = ["nop", "getlocal", "setlocal", "getspecial", "setspecial", "getinstancevariable", "setinstancevariable", "getclassvariable", "setclassvariable", "getconstant", "setconstant", "getglobal", "setglobal", "putnil", "putself", "putobject", "putspecialobject", "putiseq", "putstring", "concatstrings", "tostring", "toregexp", "newarray", "duparray", "expandarray", "concatarray", "splatarray", "newhash", "newrange", "pop", "dup", "dupn", "swap", "reput", "topn", "setn", "adjuststack", "defined", "checkmatch", "trace", "defineclass", "send", "opt_send_simple", "invokesuper", "invokeblock", "leave", "throw", "jump", "branchif", "branchunless", "getinlinecache", "onceinlinecache", "setinlinecache", "opt_case_dispatch", "opt_plus", "opt_minus", "opt_mult", "opt_div", "opt_mod", "opt_eq", "opt_neq", "opt_lt", "opt_le", "opt_gt", "opt_ge", "opt_ltlt", "opt_aref", "opt_aset", "opt_length", "opt_size", "opt_empty_p", "opt_succ", "opt_not", "opt_regexpmatch1", "opt_regexpmatch2", "opt_call_c_function", "bitblt", "answer", "getlocal_OP__WC__0", "getlocal_OP__WC__1", "setlocal_OP__WC__0", "setlocal_OP__WC__1", "putobject_OP_INT2FIX_O_0_C_", "putobject_OP_INT2FIX_O_1_C_"]
  InstructionSequence = RubyVM::InstructionSequence
  OPTS = ["direct threaded code", "operands unification]", "inline method cache"]



  protected


  private

end
