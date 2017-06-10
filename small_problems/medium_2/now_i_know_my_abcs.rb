BLOCkS = ['BO', 'XK', 'D,Q', 'CP', 'NA', 'GT', 'RE', 'FS', 'JW', 'HU', 'VI', 'LY', 'ZM']

def block_word?(word)
  BLOCkS.each do |block|
    return false if word.upcase.include?(block[0]) && word.upcase.include?(block[1])
    return false if word.upcase.count(block[0]) > 1 || word.upcase.count(block[1]) > 1
  end 
  true
end