class Order < ApplicationRecord

  belongs_to :patient, class_name: 'User', optional: true
  belongs_to :technician, class_name: 'User', optional: true


  # enum item_size: [:regular, :large]

  enum status: [:quoted, :pending_delivery, :delivered, :picked_up, :invoiced, :invoice_paid]

end
