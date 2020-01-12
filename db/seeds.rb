User.destroy_all

u1 = User.create! name: 'John Doe', dob: '1970/03/28', contact: '0404040404', email: 'john@ga.co', height: 153, weight: 50, surgeon: 'Dr.Lees',  surgery_date: '2020/02/13', delivery_date: '2020/02/12', health_fund: 'HCF', time_of_posturing: 5, address: '123 Gibbes St Rockdale', health_problems: 'none', card_payment: '1234123412341234', card_verified: true, password: 'chicken', user_type: 1, state: 2
u2 = User.create! name: 'Theo Kav', dob: '1965/01/21', contact: '0432123911', email: 'theo@ga.co', height: 163, weight: 60, surgeon: 'none',  surgery_date: '2020/02/13', delivery_date: '2020/02/12', health_fund: 'Bupa', time_of_posturing: 3, address: '44 Miller St North Syd', health_problems: 'none', card_payment: '0000111122223333', card_verified: true, password: 'chicken', user_type: 1, state: 1
u3 = User.create! name: 'Ian Wise', dob: '1965/07/03', contact: '0445232547', email: 'ian@ga.co', height: 157, weight: 50, surgeon: 'none',  surgery_date: '2020/03/20', delivery_date: '2020/03/18', health_fund: 'AHM', time_of_posturing: 7, address: '22 Ress Rd Surry', health_problems: 'none', card_payment: '0987654321239874', card_verified: true, password: 'chicken', user_type: 2, state: 2

puts 'Created #{User.count} users.'
