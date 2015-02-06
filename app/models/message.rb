class Message < ActiveRecord::Base
  belongs_to :device
  default_scope { order(created_at: :asc) }

  def text_html
    t = ERB::Util.html_escape text
    ApplicationController.helpers.simple_format t
  end

end
