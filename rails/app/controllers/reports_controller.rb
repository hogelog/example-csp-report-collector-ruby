class ReportsController < ApplicationController
  def create
    payload = JSON.parse(request.body.string)
    message = {
      time: Time.zone.now.to_s,
      report: payload["csp-report"],
    }
    $stdout.puts JSON.generate(message)
    head :created
  end
end
