class Comment < ApplicationRecord

  belongs_to :order, optional: true

end
