
# This program returns webpage URLS found inside of a string using
# Ruby's regex features.


def extract_urls(text)
    pattern = /(http|https|ftp):\/\/(www)?/
    url_list = text.scan(pattern)
    puts url_list
end

sample_text = "Visit our site at http://www.example.org for more information."

extract_urls(sample_text)