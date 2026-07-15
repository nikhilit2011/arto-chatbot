Guide.destroy_all

# DRIVING LICENCE SERVICES
Guide.create!(
  topic: "driving_licence",
  steps: [
    "https://sarathi.parivahan.gov.in पर जाएँ।",
    "State चुनें: Uttarakhand",
    "Driving Licence → New Driving Licence पर क्लिक करें।",
    "Apply for Learner's Licence चुनें।",
    "Mobile Number से OTP verification करें।",
    "Personal Details, Address आदि भरें।",
    "Documents अपलोड करें: Aadhaar, PAN, Photo, Address Proof, Medical Certificate।",
    "Fee pay करें।",
    "LL Test Slot बुक करें और पास करें।",
    "30 दिन बाद Permanent DL apply करें और Driving Test दें।"
  ].to_json
)

Guide.create!(
  topic: "dl_renewal",
  steps: [
    "https://sarathi.parivahan.gov.in → Uttarakhand।",
    "Services on Driving Licence → Renewal of Driving Licence चुनें।",
    "DL Number + DOB डालें।",
    "New Photo + Address Proof अपलोड करें।",
    "Medical Certificate (if required) अपलोड करें।",
    "Fee pay करें।",
    "ARTO Appointment लेकर verification करवाएँ।"
  ].to_json
)

# VEHICLE SERVICES
Guide.create!(
  topic: "new_vehicle_registration",
  steps: [
    "https://vahan.parivahan.gov.in → Uttarakhand।",
    "Online Services → New Registration चुनें।",
    "Dealer Application/Chassis Number से सर्च करें।",
    "Owner & Vehicle details भरें।",
    "Documents: Form 20, Form 21, Form 22, Invoice, Insurance, PUC, Address Proof, PAN, Photo।",
    "Fee pay करें।",
    "ARTO में Physical Inspection के लिए Appointment बुक करें।",
    "Smart Card RC प्राप्त करें।"
  ].to_json
)

Guide.create!(
  topic: "vehicle_transfer",
  steps: [
    "https://vahan.parivahan.gov.in → Transfer of Ownership चुनें।",
    "RC Number डालें।",
    "New Owner details भरें।",
    "Documents: Form 29, Form 30, Original RC, Insurance, PUC, NOC (if financed)।",
    "Fee pay करें।",
    "Buyer & Seller दोनों ARTO में verification के लिए जाएँ।"
  ].to_json
)

Guide.create!(
  topic: "vehicle_renewal",
  steps: [
    "https://vahan.parivahan.gov.in → Online Services → Renewal of Registration चुनें।",
    "RC Number डालें।",
    "Current Insurance, PUC और Fitness Certificate अपलोड करें।",
    "Renewal Fee online pay करें।",
    "ARTO Haridwar में Vehicle Physical Inspection के लिए Appointment बुक करें।",
    "Inspection के बाद Renewed RC प्राप्त करें।"
  ].to_json
)

Guide.create!(
  topic: "vehicle_noc",
  steps: [
    "https://vahan.parivahan.gov.in → Issue of NOC चुनें।",
    "RC Number डालें।",
    "Reason चुनें (जैसे Other State Transfer)।",
    "Documents: Insurance, PUC, Tax Clearance अपलोड करें।",
    "NOC Fee pay करें।",
    "NOC डाउनलोड करें।"
  ].to_json
)

Guide.create!(
  topic: "phone_update",
  steps: [
    "DL के लिए Sarathi Portal या RC के लिए Vahan Portal पर जाएँ।",
    "Update Mobile Number / Contact Details चुनें।",
    "DL या RC Number डालें।",
    "New Mobile Number भरकर OTP verify करें।",
    "Update Submit करें।"
  ].to_json
)

puts "✅ All guides updated successfully with clean steps!"