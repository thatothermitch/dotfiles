CONTENTS_ROOT = File.join(File.dirname(__FILE__), "contents")

desc "Installs symlinks for the dotfiles"
task :install do
  
  Dir.foreach(CONTENTS_ROOT) do |dotfile|
    next if [".", ".."].include? dotfile
    
    source_path = File.expand_path File.join(CONTENTS_ROOT, dotfile)
    dest_path = File.expand_path File.join("~", dotfile)
    
    if File.symlink?(dest_path) && File.readlink(dest_path) == source_path
      puts "~/#{dotfile} already managed."
      next
    end


    create_link = true
    if File.exists? dest_path
      response = nil
      while !(response =~ /[yn]/) do
        STDOUT.write "Unmanaged ~/#{dotfile} exists, overwrite? (y/n) "
        response = STDIN.gets
      end
      create_link = response.strip == "y"
    end
    
    next unless create_link
   
    puts "Installing: #{dest_path} => #{source_path}"

    File.delete dest_path if File.exists?(dest_path)
    File.symlink source_path, dest_path 
  end

end
