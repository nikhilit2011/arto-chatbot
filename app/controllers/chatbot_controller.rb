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
      render json: { 
        reply: "मैं इस सेवा के बारे में अभी जानकारी नहीं रखता। कृपया मेन्यू से कोई विकल्प चुनें।" 
      }
    end
  end

  private

  def detect_topic(message)
    case message
    when /driving_licence|driving licence|new dl|नया लाइसेंस/
      "driving_licence"
    when /dl_renewal|dl renewal|renewal|लाइसेंस रिन्यू/
      "dl_renewal"
    when /new_vehicle_registration|new registration|new vehicle|नया पंजीकरण/
      "new_vehicle_registration"
    when /vehicle_transfer|transfer|ownership transfer|ट्रांसफर/
      "vehicle_transfer"
    when /vehicle_renewal|rc renewal|renewal.*vehicle|वाहन रिन्यू/
      "vehicle_renewal"
    when /vehicle_noc|noc|no objection/
      "vehicle_noc"
    when /phone_update|mobile|phone number|number update|मोबाइल नंबर/
      "phone_update"
    else
      nil
    end
  end

  def format_steps(guide)
    steps = JSON.parse(guide.steps)
    "<div class='font-medium text-blue-800 mb-3'>#{guide.topic.humanize}</div>" +
    "<ol class='list-decimal pl-6 space-y-3 text-gray-800'>#{steps.map { |s| "<li>#{s}</li>" }.join}</ol>"
  end
end