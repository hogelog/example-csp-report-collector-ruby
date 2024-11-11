class ExampleController < ApplicationController
  include ActionController::ContentSecurityPolicy

  content_security_policy do |policy|
    policy.script_src :self
    policy.report_uri "/reports"
  end

  def show
    render html: <<~HTML.html_safe
      <html>
        <head>
          <title>CSP Test</title>
        </head>
        <body>
          <h1>Content Security Policy Test</h1>
          <script src="https://example.com/test-script.js"></script>
        </body>
      </html>
    HTML
  end
end
