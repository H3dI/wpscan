# encoding: UTF-8

class WpVersion < WpItem
  module Vulnerable

    def vulns_file
      unless @vulns_file
        @vulns_file = WP_VULNS_FILE
      end
      @vulns_file
    end

    def vulns_xpath
      "//wordpress[@version='#{@number}']/vulnerability"
    end

  end
end
