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
    load Rails.root.join('db/seeds.rb')
    render json: { message: "✅ Data seeded successfully! You can now use the buttons." }
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
    "<strong>#{guide.topic.humanize}</strong><br><ol class='list-decimal pl-6 mt-3 space-y-2'>#{steps.map { |s| "<li>#{s}</li>" }.join}</ol>"
  end
end