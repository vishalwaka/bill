class LineItem < ActiveRecord::Base
  belongs_to :orders
end
