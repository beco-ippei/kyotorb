class NameIndex
  def self.sort(names)
    names.inject({}) do |h, name|
      if k = index(name)
        h[k] ||= []
        h[k] << name
      end
      h
    end.sort
  end

  private

  def self.keys
    %w[アオ カゴ サゾ タド ナノ ハポ マモ ヤヨ ラロ ワン].map do |set|
      (set[0]..set[1]).to_a
    end
  end

  def self.index(name)
    line = keys.find {|k| k.include? name[0] }
    line ? line.first : nil
  end
end
