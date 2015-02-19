class Coc < ActiveRecord::Base
 require 'composite_primary_keys'
 set_primary_keys :ocid , :mcid, :meid
 belongs_to :comment ,dependent: :delete_all
 belongs_to :member ,dependent: :delete_all
end
