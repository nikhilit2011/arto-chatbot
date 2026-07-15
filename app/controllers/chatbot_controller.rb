class ChatbotController < ApplicationController
  def index
  end

  def respond
    user_message = params[:message].to_s.downcase.strip
    topic = detect_topic(user_message)
    guide = Guide.find_by(topic: topic) if topic

    if guide
      render json: { reply: format_steps(guide) }
    else
      render json: { reply: "मैं इस सेवा के बारे में अभी जानकारी नहीं रखता। कृपया मेन्यू से कोई विकल्प चुनें।" }
    end
  end

  def seed
    begin
      Guide.delete_all
      load Rails.root.join('db/seeds.rb')
      render json: { message: "✅ Data refreshed successfully!<br>Please refresh the page." }
    rescue => e
      render json: { message: "❌ Error: #{e.message}" }
    end
  end

  private

  def detect_topic(message)
    case message
    when /driving_licence|driving licence|new dl/
      "driving_licence"
    when /dl_renewal|dl renewal|renewal|लाइसेंस रिन्यू/
      "dl_renewal"
    when /new_vehicle_registration|new registration|new vehicle/
      "new_vehicle_registration"
    when /vehicle_transfer|transfer|ownership/
      "vehicle_transfer"
    when /vehicle_renewal|rc renewal|renewal.*vehicle/
      "vehicle_renewal"
    when /vehicle_noc|noc/
      "vehicle_noc"
    when /phone_update|mobile|phone number/
      "phone_update"
    else
      nil
    end
  end

  def format_steps(guide)
    steps = JSON.parse(guide.steps)
    
    # Custom nice titles
    title = case guide.topic
            when "driving_licence" then "Driving Licence (New)"
            when "dl_renewal" then "DL Renewal"
            when "new_vehicle_registration" then "New Vehicle Registration"
            when "vehicle_transfer" then "Vehicle Transfer"
            when "vehicle_renewal" then "Vehicle Renewal (RC Renewal)"
            when "vehicle_noc" then "Vehicle NOC"
            when "phone_update" then "Phone Number Update"
            else guide.topic.humanize
            end

    html = "<div class='font-semibold text-xl text-blue-800 mb-4'>#{title}</div>"
    html += "<ol class='list-decimal pl-6 space-y-3 text-gray-800'>"
    
    steps.each do |step|
      step_with_link = step.gsub(/(https?:\/\/[^\s]+)/) do |url|
        "<a href='#{url}' target='_blank' class='text-blue-600 underline hover:text-blue-800'>#{url}</a>"
      end
      html += "<li>#{step_with_link}</li>"
    end
    
    html += "</ol>"
    html
  end
end