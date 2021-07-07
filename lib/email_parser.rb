# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
    attr_accessor :address, :list

    def initialize(address)
        @address = address
    end

    def parse
      @address.split(", ").map{
          |email| email.split(" ")
      }.flatten.uniq
    end

end