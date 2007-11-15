require 'icalendar'

class IcalController < ApplicationController

  before_filter :init

  def conference
    conf = Conference.select_single({:conference_id=>params[:id]})
    tz = Timezone.select_single({:timezone => conf.timezone})
    lang = Language.select_single({:language=>@current_language})
    rooms = Conference_room.select({:conference_id=>conf.conference_id})
    events = View_schedule_simple.select({:conference_id=>conf.conference_id})

    cal = Icalendar::Calendar.new
    cal.prodid "-//Pentabarf//Schedule//#{lang.language.upcase}"
    # FIXME icalendar library does not support timezones
#    cal.timezone do
#      tzid tz.abbreviation
#      tzname tz.timezone
#    end
    events.each do | event |
      cal.event do
        uid "#{event.event_id}@#{conf.acronym}@pentabarf.org"
        dtstart "TZID=#{tz.abbreviation}:" + event.start_date.strftime('%Y%m%dT%H%M%S')
        dtend "TZID=#{tz.abbreviation}:" + event.end_date.strftime('%Y%m%dT%H%M%S')
        duration sprintf( 'PT%dH%02dM', event.duration.hour, event.duration.min )
        summary event.title + ( event.subtitle ? " - #{event.subtitle}" : '')
        description event.abstract
        add_category "Lecture"
        status "CONFIRMED"
        url "#{conf.export_base_url}events/#{event.event_id}.#{lang.language}.html"
        location event.conference_room
      end
    end
    render(:text=>cal.to_ical)
  end

  protected

  def init
    @current_language = 'en'
  end

end

