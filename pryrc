begin
  require 'nokogiri'
  def xp(xml_text)
    xsl =<<-XSL
      <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">  
        <xsl:output method="xml" encoding="UTF-8" indent="yes"/>
        <xsl:strip-space elements="*"/>
        <xsl:template match="/">
          <xsl:copy-of select="."/>
        </xsl:template>
      </xsl:stylesheet>
    XSL

    doc  = Nokogiri::XML(xml_text)
    xslt = Nokogiri::XSLT(xsl)
    out  = xslt.transform(doc)

    puts out.to_xml
  end
rescue LoadError
  puts "no nokogiri :("
end

begin
  require 'awesome_print'
  AwesomePrint.pry!
rescue LoadError
  puts "no awesome_print :("
end

Pry::Commands.block_command('enable-pry', 'Enable `binding.pry` feature') do
  ENV['DISABLE_PRY'] = nil
end
