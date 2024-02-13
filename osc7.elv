fn print-seq {
  print "\033]7;file://"$pwd"\033\\"
}

fn init-hook {
  set @after-chdir = $@after-chdir {|_| print-seq > /dev/tty }
}
