class MyLocation

	def self.import_database
	    require 'spreadsheet'
	    spread = Spreadsheet.open "#{Rails.root}/public/location.xls"
	    sheet1 = spread.worksheet 0
	    sheet1.each_with_index do |row,i|
	    	sleep(2)
          My.create(name: "My Location #{i}", gpslat: row[0], gpslog: row[1])
	    end
	end
end

#MyLocation.import_database