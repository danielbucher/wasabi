class Lead < ActiveRecord::Base
  belongs_to :position
  belongs_to :tool
end
