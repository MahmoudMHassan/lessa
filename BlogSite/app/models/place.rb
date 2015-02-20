class Place < ActiveRecord::Base
 require 'composite_primary_keys'
 set_primary_keys :meid, :pid, :cid
 belongs_to :post ,dependent: :delete
 belongs_to :member ,dependent: :delete
 belongs_to :comment ,dependent: :delete
end
