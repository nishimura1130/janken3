def janken
  puts "[1]:グー\n[2]:チョキ\n[3]:パー"
  player_hand = gets.to_i
  if player_hand < 1 || 3 < player_hand then
    puts "0〜2の数字を入力してください。"
    return true
  end
  player_hand -= 1
  program_hand = rand(3)

  janken = ["グー", "チョキ", "パー"]
  jbit = [9, 18, 4]

  puts "あなたの:#{janken[player_hand]}, 私の手:#{janken[program_hand]}"

  if (jbit[player_hand] & (jbit[program_hand] << 2)) > 0 then
    puts "あなたの勝ちです"
    return false
  elsif (jbit[player_hand] & (jbit[program_hand] << 1)) > 0 then
    puts "あなたの負けです"
    return false
  else
    puts "あいこで..."
    return true
  end
end

next_game = true

puts "最初はグー、じゃんけん..."

while next_game
  next_game = janken
end