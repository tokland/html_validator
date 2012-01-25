require 'nokogiri'

module HtmlValidator
  VERSION = "0.0.1"
  XSD = Nokogiri::XML::Schema(open(File.join(File.dirname(__FILE__), 'xhtml1-strict.xsd')))
  
  def self.valid?(contents)
    XSD.valid?(get_doc(contents))
  end
  
  def self.validate(contents)
    XSD.validate(get_doc(contents))
  end

private

  def self.get_doc(contents)
    Nokogiri::XML(contents)
  end  
end
