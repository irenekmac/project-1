User.destroy_all


# enum user_type: [:patient, :technician, :admin]
# enum state: [:nsw, :vic, :qld]

u2 = User.create! name: 'Theo Kav', dob: '1965/01/21', contact: '0432123911', email: 'theo@test.co', height: 163, weight: 60, address: '44 Miller St North Syd', card_payment: '0000111122223333', card_verified: true, password: 'chicken', user_type: 'admin', state: 'nsw'
u3 = User.create! name: 'Ian Wise', dob: '1965/07/03', contact: '0445232547', email: 'ian@test.co', height: 157, weight: 50, address: '22 Ress Rd Surry', card_payment: '0987654321239874', card_verified: true, password: 'chicken', user_type: 'technician', state: 'qld'
u5 = User.create! name: 'Linda Smith', dob: '1975/03/13', contact: '0445232547', email: 'linda@test.co', height: 157, weight: 57, address: '53 Silver Rd, Wentworth Pt', card_payment: '0987654321239874', card_verified: true, password: 'chicken', user_type: 'technician', state: 'nsw'
u1 = User.create! name: 'John Doe', dob: '1970/03/28', contact: '0404040404', email: 'john@test.co', height: 173, weight: 53, address: '123 Gibbes St Rockdale', card_payment: '1234123412341234', card_verified: true, password: 'chicken', user_type: 'patient', state: 'qld'
u4 = User.create! name: 'Sarah Chambers', dob: '1955/06/16', contact: '0445232547', email: 'sarah@test.co', height: 157, weight: 66, address: '22 Ress Rd Surry', card_payment: '0987654321239874', card_verified: true, password: 'chicken', user_type: 'patient', state: 'nsw'
u6 = User.create! name: 'Mary Kinley', dob: '1950/04/04', contact: '0445232547', email: 'mary@test.co', height: 152, weight: 52, address: '23 Cooper st Paddo', card_payment: '0987654321239874', card_verified: true, password: 'chicken', user_type: 'patient', state: 'nsw'

puts "Created #{User.count} users."


Order.destroy_all

# enum status: [:quoted, :pending_delivery, :delivered, :picked_up, :invoiced, :invoice_paid]

o1 = Order.create! item_size: 'Large', patient_id: u1.id, technician_id: u3.id, status: 'quoted', health_problems: 'none', time_of_posturing: 6, health_fund: 'AHM', surgery_date: '2020/03/13', delivery_date: '2020/03/12'
o2 = Order.create! item_size: 'Regular', patient_id: u4.id, technician_id: u5.id, status: 'pending_delivery', health_problems: 'none', time_of_posturing: 7, health_fund: 'HCF', surgery_date: '2020/05/20', delivery_date: '2020/05/22'
o3 = Order.create! item_size: 'Regular', patient_id: u6.id, technician_id: u5.id, status: 'delivered', health_problems: 'none', time_of_posturing: 8, health_fund: 'Bupa', surgery_date: '2020/02/20', delivery_date: '2020/02/19'

puts "Created #{Order.count} orders."
