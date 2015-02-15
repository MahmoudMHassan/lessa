class Embed < ActiveRecord::Base
      require 'composite_primary_keys'
  set_primary_keys :pid, :iid
end
