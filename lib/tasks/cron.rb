task :cron => :environment do
	#if Time.now.hour == 0
		puts "Running Mail Importer..."
			@config = YAML.load_file("#{RAILS_ROOT}/config/mail.yml")
		  @config = @config[RAILS_ENV].to_options
			@fetcher = Fetcher.create({:receiver => MailProcessor}.merge(@config))
	    @fetcher.fetch
		puts "done."
	#end
	
	#if Time.now.hour == 0
	#	begin 
	#	  Lockfile.new('cron_mail_fetcher.lock', :retries => 0) do 
	#	    config = YAML.load_file("#{RAILS_ROOT}/config/mail.yml") 
	#	    config = config[RAILS_ENV].to_options 
	#	    puts "Running MailFetcher in #{RAILS_ENV} mode" 
	#	    options = { :receiver => MailReceiver } 
	#	    fetcher = Fetcher.create(options.merge(config)) 
	#	    fetcher.fetch 
	#	    puts "Finished running MailFetcher in #{RAILS_ENV} mode" 
	#	  end 
	#	rescue Lockfile::MaxTriesLockError => e 
	#	  puts "Another fetcher is already running. Exiting." 
	#	end
	#end
end