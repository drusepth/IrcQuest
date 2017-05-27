namespace :location do
  task run: :environment do
    puts "Something at the start"

    pid = spawn("rake location:run2")
    Process.detach(pid)

    puts "New rake task triggered, going into infinite loop"
    while true
      sleep 5
      puts "in loop AAA"
    end
  end

  task run2: :environment do
    puts "Something new in a new task"

    while true
      sleep 5
      puts "in loop BBB"
    end

  end
end