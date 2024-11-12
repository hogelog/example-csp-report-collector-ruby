wrk.method = "POST"
wrk.headers["Accept"] = "*/*"
wrk.headers["Accept-Language"] = "ja,en-US;q=0.9,en;q=0.8"
wrk.headers["Connection"] = "keep-alive"
wrk.headers["Content-Type"] = "application/csp-report"
wrk.headers["Origin"] = "http://127.0.0.1:3000"
wrk.headers["Referer"] = "http://127.0.0.1:3000/"
wrk.headers["Sec-Fetch-Dest"] = "report"
wrk.headers["Sec-Fetch-Mode"] = "no-cors"
wrk.headers["Sec-Fetch-Site"] = "same-origin"
wrk.headers["User-Agent"] = "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36"
wrk.body = '{"csp-report":{"document-uri":"http://127.0.0.1:3000/","referrer":"","violated-directive":"script-src-elem","effective-directive":"script-src-elem","original-policy":"script-src \'self\'; report-uri /reports","disposition":"enforce","blocked-uri":"https://example.com/test-script.js","status-code":200,"script-sample":""}}'

wrk.path = "/reports"
