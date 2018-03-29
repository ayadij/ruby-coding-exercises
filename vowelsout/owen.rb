def replace(str)
  str.gsub(/[aeiouAEIOU]/,'*')
end

p str = "A quick brown fox jumped over the lazy dog."
p replace(str)


describe 'replace' do
  it 'Iterates through and replaces all vowels with an *' do
    str = "A quick brown fox jumped over the lazy dog"
    expect(replace(str)).to eq("* q**ck br*wn f*x j*mp*d *v*r th* l*zy d*g")
  end
end

