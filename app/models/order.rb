class Order < ApplicationRecord

  has_many :users

  # enum item_size: [:regular, :large]

  enum status: [:quoted, :pending_delivery, :delivered, :picked_up, :invoiced, :invoice_paid]

end
