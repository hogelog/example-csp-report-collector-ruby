require "json"

class App
  def call(env)
    method = env["REQUEST_METHOD"]
    path = env["PATH_INFO"]

    if method == "POST" && path == "/reports"
      body = env["rack.input"]
      return handle_report(body)
    end

    [404, {}, [""]]
  end

  private

  def handle_report(body)
    payload = JSON.parse(body.read)
    message = {
      time: Time.now.to_s,
      report: payload["csp-report"],
    }
    $stdout.puts JSON.generate(message)
    [
      201,
      {"content-type" => "application/csp-report"},
      [""],
    ]
  end
end

run App.new
