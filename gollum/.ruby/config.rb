## file: config.rb
## Note: do not require gollum-lib

Gollum::Filter::PlantUML.configure do |config|
   #  config.url = "http://www.plantuml.com/plantuml/svg"
    config.url = "http://10.134.73.193:8080/plantuml/png"
end

# GitHub::Markup.markups.reject! {|markup| markup.regexp.to_s == '(?-mix:adoc|asc(iidoc)?)' }
# 
# GitHub::Markup.markup(:asciidoctor, /adoc|asc(iidoc)?/) do |content|
#   Asciidoctor::Compliance.unique_id_start_index = 1
#   Asciidoctor.convert(content, :safe => :safe, :attributes => %w(showtitle=@ idprefix idseparator=- env=github env-github source-highlighter=html-pipeline))
# end
