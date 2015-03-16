RSpec.describe File do
  let(:filename) { "#{Dir.home}/test_file_#{rand(4000000000)}.txt" }
  let(:beginning){ "Beginning text\n" }
  let(:appended) { "Appended text\n" }
  let(:final)    { "#{beginning}#{appended}" }

  it "appends to the specified file" do
    expect{File.write(filename, beginning)}.to change{File.exists?(filename)}.from(false).to(true)
    expect{File.append(filename, appended)}.to change{File.read(filename)}.from(beginning).to(final)
  end
end
