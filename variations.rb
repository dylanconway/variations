class Variations
  FIRST_NAMES = File
    .read("first_names.txt")
    .lines
    .map { |line| line.split.first }
    .map { |name| name.downcase.capitalize }

  def generate_name_variations(input_name)
    input_name
      .to_s
      .downcase
      .chars
      .permutation
      .map { |character_permutation| character_permutation.join.capitalize }
      .uniq
      .select(&method(:valid_name?))
      .sort
      .join(", ")
  end

  def valid_name?(potential_name)
    FIRST_NAMES.include?(potential_name)
  end
end

if __FILE__ == $0
  p Variations.new.generate_name_variations(ARGV[0])
end
