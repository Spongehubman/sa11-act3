
# 



def parse_invoices(data)

    pattern = /(\d{4}-\d{2}-\d{2})\s-\s([A-Za-z0-9]{6})\s-\s([A-Za-z\s]+)\s-\s(\$[0-9]+)/
    extracted_data = data.scan(pattern)
    
    extracted_data.each do |x|
        puts "Date: #{x[0]}, Invoice Number: #{x[1]}, Client: #{x[2]}, Amount: #{x[3]}"

    end
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)