class ExampleController < ApplicationController
  def show
    response.set_header "content-security-policy", "script-src 'self'; report-uri /reports"

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
