require 'net/http'
require 'uri'
require 'open-uri'
require 'yaml'

class Wsd
  VERSION = '0.0.1'
  STYLES = %w(default earth modern-blue mscgen omegapple qsd rose roundgreen napkin)
  BASE_URL = 'http://www.websequencediagrams.com'

  def initialize(text, style=STYLES[0])
    @style = style
    @text = text
  end

  def to_html
    output = "<div class='wsd' wsd_style='#{@style}'><pre>\n"
    output << @text
    output << "\n</pre></div>"
    output << "<script type='text/javascript' src='http://www.websequencediagrams.com/service.js'></script>"
    output
  end

  def write(file=nil)
    file = file || default_file
    File.open(file, "w+") { |f| f << open(diagram_url).read }
  end

  private

  def diagram
    YAML.load(Net::HTTP.post_form(form_post_url, :style => @style, :message => @text).body)
  end

  def form_post_url
    URI.parse("#{BASE_URL}/index.php")
  end

  def diagram_url
    "#{BASE_URL}/#{diagram['img']}"
  end

  def default_file
    diagram_url.match(/img=(.+)$/)
    file = "#{$1}.png"
  end

end
