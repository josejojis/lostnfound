module ApplicationHelper
    def whatsapp_share_url(text, url)
        "whatsapp://send?text=#{CGI.escape(text)} #{url}"
      end
end
