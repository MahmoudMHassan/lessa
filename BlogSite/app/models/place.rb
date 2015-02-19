class Place < ActiveRecord::Base
 require 'composite_primary_keys'
 set_primary_keys :meid, :pid, :cid
 belongs_to :post ,dependent: :delete_all
 belongs_to :member ,dependent: :delete_all
 belongs_to :comment ,dependent: :delete_all
end
