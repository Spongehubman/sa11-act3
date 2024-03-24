
# This program returns webpage URLS found inside of a string using
# Ruby's regex features.


def extract_urls(text)
    pattern = /((http|https|ftp):\/\/(www\.)?[A-Za-z0-9]+\.(org|com)?(\/[A-Za-z\?\+\=]+)?)/
    url_list = text.scan(pattern)
    url_list.each do |x|
        puts x[0]
    end
end

sample_text = "Visit our site at http://www.example.org for more information.
Check out our search page at https://example.com/search?q=ruby+regex. Don't
forget to ftp our resources at ftp://example.com/resources."

extract_urls(sample_text)