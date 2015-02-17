class CategoriesPost < ActiveRecord::Base
     require 'composite_primary_keys'
  set_primary_keys :post_id, :category_id
end
