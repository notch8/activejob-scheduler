# frozen_string_literal: true

require 'yaml'
require 'active_job'
require 'active_support/all'
require 'active_job/scheduler/version'

module ActiveJob
  # Scheduled periodic jobs with +ActiveJob+.
  module Scheduler
    extend ActiveSupport::Autoload

    autoload :Engine
    autoload :Event
    autoload :Job
    autoload :Schedule
    autoload :Interval

    # A schedule of all periodic job events.
    #
    # @return [ActiveJob::Scheduler::Schedule]
    def self.events
      @events ||= Schedule.new
    end
  end
end
