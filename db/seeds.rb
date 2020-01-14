User.destroy_all


# enum user_type: [:patient, :technician, :admin]
# enum state: [:nsw, :vic, :qld]

u1 = User.create! name: 'John Doe', dob: '1970/03/28', contact: '0404040404', email: 'john@test.co', height: 153, weight: 50, surgeon: 'Dr.Lees',  surgery_date: '2020/02/13', delivery_date: '2020/02/12', health_fund: 'HCF', time_of_posturing: 5, address: '123 Gibbes St Rockdale', health_problems: 'none', card_payment: '1234123412341234', card_verified: true, password: 'chicken', user_type: 'patient', state: 1
u2 = User.create! name: 'Theo Kav', dob: '1965/01/21', contact: '0432123911', email: 'theo@test.co', height: 163, weight: 60, surgeon: 'none',  surgery_date: '2020/02/13', delivery_date: '2020/02/12', health_fund: 'Bupa', time_of_posturing: 3, address: '44 Miller St North Syd', health_problems: 'none', card_payment: '0000111122223333', card_verified: true, password: 'chicken', user_type: 'admin', state: 0
u3 = User.create! name: 'Ian Wise', dob: '1965/07/03', contact: '0445232547', email: 'ian@test.co', height: 157, weight: 50, surgeon: 'none',  surgery_date: '2020/03/20', delivery_date: '2020/03/18', health_fund: 'AHM', time_of_posturing: 7, address: '22 Ress Rd Surry', health_problems: 'none', card_payment: '0987654321239874', card_verified: true, password: 'chicken', user_type: 'technician', state: 2
u4 = User.create! name: 'Sarah Chambers', dob: '1955/06/16', contact: '0445232547', email: 'sarah@test.co', height: 157, weight: 50, surgeon: 'none',  surgery_date: '2020/03/20', delivery_date: '2020/03/18', health_fund: 'AHM', time_of_posturing: 7, address: '22 Ress Rd Surry', health_problems: 'none', card_payment: '0987654321239874', card_verified: true, password: 'chicken', user_type: 'patient', state: 2

puts "Created #{User.count} users."


Order.destroy_all

# enum status: [:quoted, :pending_delivery, :delivered, :picked_up, :invoiced, :invoice_paid]

o1 = Order.create! item_size: 'Large', patient_id: u1.id, status: 'quoted'
o2 = Order.create! item_size: 'Regular', patient_id: u4.id, technician_id:u3.id, status: 'pending_delivery'
o3 = Order.create! item_size: 'Regular', patient_id: nil, technician_id: nil, status: 'delivered'

puts "Created #{Order.count} orders."
