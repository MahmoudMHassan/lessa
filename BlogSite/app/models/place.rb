class Place < ActiveRecord::Base
    require 'composite_primary_keys'
  set_primary_keys :cid, :pid, :meid
end
