Guide.destroy_all

# DRIVING LICENCE SERVICES
Guide.create!(
  topic: "driving_licence",
  steps: [
    "1. https://sarathi.parivahan.gov.in पर जाएँ।",
    "2. State: Uttarakhand चुनें।",
    "3. Driving Licence → New Driving Licence।",
    "4. Apply for Learner's Licence चुनें।",
    "5. Mobile OTP verification।",
    "6. Personal + Address details भरें।",
    "7. Documents: Aadhaar, PAN, Photo, Address Proof, Medical Certificate।",
    "8. Fee pay करें।",
    "9. LL Test पास करें।",
    "10. 30 दिन बाद Permanent DL apply करें + Driving Test दें।"
  ].to_json
)

Guide.create!(
  topic: "dl_renewal",
  steps: [
    "1. https://sarathi.parivahan.gov.in → Uttarakhand।",
    "2. Services on Driving Licence → Renewal of Driving Licence।",
    "3. DL Number + DOB डालें।",
    "4. New Photo + Address Proof अपलोड करें।",
    "5. Medical Certificate (if required)।",
    "6. Fee pay करें।",
    "7. ARTO Appointment लेकर verification करवाएँ।"
  ].to_json
)

# VEHICLE SERVICES
Guide.create!(
  topic: "new_vehicle_registration",
  steps: [
    "1. https://vahan.parivahan.gov.in → Uttarakhand।",
    "2. Online Services → New Registration।",
    "3. Dealer Application/Chassis Number से सर्च करें।",
    "4. Owner & Vehicle details भरें।",
    "5. Documents: Form 20, Form 21, Form 22, Invoice, Insurance, PUC, Address Proof, PAN, Photo।",
    "6. Fee pay करें।",
    "7. ARTO में Physical Inspection।",
    "8. Smart Card RC प्राप्त करें।"
  ].to_json
)

Guide.create!(
  topic: "vehicle_transfer",
  steps: [
    "1. https://vahan.parivahan.gov.in → Transfer of Ownership।",
    "2. RC Number डालें।",
    "3. New Owner details भरें।",
    "4. Documents: Form 29, Form 30, Original RC, Insurance, PUC, NOC (if financed)।",
    "5. Fee pay करें।",
    "6. Buyer & Seller दोनों ARTO में verification के लिए जाएँ।"
  ].to_json
)

Guide.create!(
  topic: "vehicle_renewal",
  steps: [
    "1. https://vahan.parivahan.gov.in → Online Services → Renewal of Registration।",
    "2. RC Number डालें।",
    "3. Current Insurance, PUC और Fitness Certificate अपलोड करें।",
    "4. Renewal Fee online pay करें।",
    "5. ARTO Haridwar में Vehicle Physical Inspection के लिए Appointment बुक करें।",
    "6. Inspection के बाद Renewed RC प्राप्त करें।"
  ].to_json
)

Guide.create!(
  topic: "vehicle_noc",
  steps: [
    "1. https://vahan.parivahan.gov.in → Issue of NOC।",
    "2. RC Number डालें।",
    "3. Reason चुनें (जैसे Other State Transfer)।",
    "4. Documents: Insurance, PUC, Tax Clearance।",
    "5. NOC Fee pay करें।",
    "6. NOC डाउनलोड करें।"
  ].to_json
)

Guide.create!(
  topic: "phone_update",
  steps: [
    "1. DL के लिए Sarathi Portal या RC के लिए Vahan Portal पर जाएँ।",
    "2. Update Mobile Number / Contact Details चुनें।",
    "3. DL या RC Number डालें।",
    "4. New Mobile Number भरकर OTP verify करें।",
    "5. Update Submit करें।"
  ].to_json
)

puts "✅ All guides corrected and updated successfully!"