require 'date'
require 'time'

describe "DateTime" do

  it "should parse date after 2038" do
    res = Time.strptime("20400804",'%Y%m%d')
    res.year.should == 2040
    res.month.should == 8
    res.day.should == 4
    
    res1 = Time.parse("08/04/2040")
    res1.year.should == 2040
    res1.month.should == 4
    res1.day.should == 8
  end

  it "should parse datetime" do
    str = "2010-07-08T12:14:20Z"
    
    date = Time.parse(str)

    date.year.should == 2010
    date.hour.should == 12
    
    str2 = date.strftime("%m/%d/%Y")
    str2.should == "07/08/2010"
  end

  it "should format GMT datetime" do
    str = "11/22/2010 04:13 PM"

    time = Time.strptime(str,  "%m/%d/%Y %I:%M %p")
    #time.utc?.should == false
    
    dbTime = time.utc
    dbTime.utc?.should == true
    
    res = dbTime.strftime("%Y%m%dT%H%M%S.000 GMT")

    puts "res: #{res}"
    #res.should == "20101122T131300.000 GMT"
  end

if !defined? RHO_ME
  it "should commercial date"  do
    Date.today.cweek
    res = Date.commercial(2010, 33, 1)
    puts "Date.commercial(2010, 33, 1) : #{res}"
    res.year.should == 2010
    
    res.to_s.should == "2010-08-16"
  end
end
  
end
