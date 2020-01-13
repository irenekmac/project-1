class Order < ApplicationRecord

  enum status: [:quoted, :pending_delivery, :delivered, :picked_up, :invoiced, :invoice_paid]

end
