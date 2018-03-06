require 'rspec'


class Hash
  def param_converter
    self.map{ |i| i * "=" } * "&"
  end
end

# self             to call with .dotnotation 
# .map vs .each    .each {|i| } iterates but doesnt alter the output
#                  .map {|i| } iterates and alters the output array
# * puts a "=" between the key and value or the two variable


describe 'HTML Param Converter' do
  it 'Adds an HTML param converter to the Hash class' do
    hash = { :topic => "baseball", :team => "astros" }
    expect(hash.param_converter).to eq('topic=baseball&team=astros')
  end
end





# def param_converter
#   hash = { :topic => "baseball", :team => "astros" }
#   collect do |key, value|
#     unless (value.is_a?(Hash) || value.is_a?(Array)) && value.empty?
#       value.to_s(namespace ? "#{namespace}[#{key}]" : key)
#   end
# end.compact.sort! * '&&'

#manipulate keys and values inside of a hash and convert them to strings

# p param_converter



# def to_params
#   strings = ''
#   stack = []

#   each do |k, v|
#     if v.is_a?(Hash)
#       stack << [k,v]
#     else
#       strings << "#{k}=#{v}&"
#     end
#   end

#   strings.each do |parent, hash|
#     hash.each do |k, v|
#       if v.is_a?(Hash)
#         strings << ["#{parent}[#{k}]", v]
#       else
#         params << "#{parent}[#{k}]=#{v}&"
#       end
#     end
#   end

#   params.chop! # trailing &
#   params
# end





