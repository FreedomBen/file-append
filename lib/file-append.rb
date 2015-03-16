class File
  def File.append(name, string, open_args = nil)
    File.open(name, 'a', open_args) do |f|
      f.write(string)
    end
  end
end
