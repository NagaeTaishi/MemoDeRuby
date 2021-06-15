require "csv"
puts "1(新規でメモを作成) 2(既存のメモを編集する) 3(処理を終了する)"

class Make_memo
    def makeMemo
        name = gets.chomp  
        CSV.open("#{name}.csv", "w") do |test|
        puts "メモしたい内容を記載してください。" 
        content = gets.chomp
        test << [content]
        puts "csvファイルを保存しました。"
    end
    end
end

class Edit_memo
    def editMemo
        name = gets.chomp
        CSV.open("#{name}.csv", "a") do |test|
        puts "編集内容を入力してください。"
        content = gets.chomp
        test << [content]
        puts"csvファイルを上書き保存しました。"
    end
    end
end

    while true 
        memo_type = gets.chomp
        if memo_type == "1"
            puts "拡張子を除いたファイル名を入力してください"
            make_memo = Make_memo.new() 
            make_memo.makeMemo
            puts "1(新規でメモを作成) 2(既存のメモを編集する) 3(処理を終了する)"
            
        elsif memo_type == "2"
            puts "編集するファイル名を拡張子を除いて入力してください。"
            edit_memo = Edit_memo.new()
            edit_memo.editMemo
            puts "1(新規でメモを作成) 2(既存のメモを編集する) 3(処理を終了する)"
            
        elsif memo_type == "3"
            puts "処理を終了します。"
            break
        else 
            puts "1,2,3のいずれかを選択してください。"
        end
    end


            
    