def janken
    puts "[0]グー,[1]チョキ,[2]パー"
    player_hand = gets.to_i
    program_hand = rand(3)
    if player_hand > 2
        puts "0から2の数字を入力してください"
        return 0
    end
    jankens=["グー", "チョキ", "パー"]
    
    puts "あなたの出した手:#{jankens[player_hand]}, 相手の出した手:#{jankens[program_hand]}"
    if player_hand == program_hand
        puts "あいこ"
        return 0
    elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
        puts "じゃんけんに勝ちました"
        return 1
    elsif (player_hand == 0 && program_hand == 2) || (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1)
        puts "じゃんけんに負けました"
        return 2
    end
end
def acchimuite_hoi
    
        
        next_game = 0
        while next_game == 0
            next_game = janken
        end
        
        puts "0(上) 1(下) 2(左) 3(右)"
        player_direction = gets.to_i
        program_direction = rand(4)
        
       
        directions = ["上", "下", "左", "右"]
        puts "あなた: #{directions[player_direction]} 相手: #{directions[program_direction]}"
        
        if player_direction == program_direction
            if next_game == 1
                puts "あなたの勝ちです"
                return false
            elsif next_game == 2
                puts "あなたの負けです"
                return false
            end
        else
            puts "引き分けです。"
            return true
        end
end
acchimuite_hoi_next_game = true
while acchimuite_hoi_next_game == true
    acchimuite_hoi_next_game = acchimuite_hoi
end