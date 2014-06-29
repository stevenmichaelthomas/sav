module EventsHelper
  def gmaps_link(address)
    link_to address, "http://maps.google.com/?q=#{address}", target: '_blank'
  end
end
