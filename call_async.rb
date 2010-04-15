#! /opt/local/bin/ruby

require 'rubygems'                                                                                                             
# require 'spec'
require 'Nokogiri'
require 'ruby-debug'
# require File.join(File.dirname(__FILE__), '../lib', 'neti_taxon_finder_client.rb')
# /Users/anna/work/web_app/perl_tf/webservices/ruby/
# web_app/perl_tf/webservices/ruby/spec/test_web/

# files_dir = "/Users/anna/work/web_app/perl_tf/webservices/ruby/spec/"
# # files_dir = "/Users/anna/work/web_app/perl_tf/webservices/ruby/spec/test_web/"
# # taxon_finder_client_spec2.rb
# 
# # for f in files:
# #     #st = "python "+"Nclient.py "+"18/"+f+" >"+"results--"+f
# #     # print f
# #     #p = subprocess.Popen("ruby "+"Nclient.py "+"18/"+f+" >"+"results--"+f,shell=True)
# #     # p = subprocess.Popen("ruby "+"filename.rb "+f, shell=True)
# #     p = subprocess.Popen("spec "+files_dir+f, shell=True)
# # 
# Dir.chdir(files_dir)
# files = Dir.glob("*.rb")

files_dir = '/Users/anna/work/test_neti_app/18/'
Dir.chdir(files_dir)
files = Dir.glob("*.txt")

# arr = ['/Library/Webserver/Documents/reconciled.txt', '/Library/Webserver/Documents/pictorialgeo.txt']
# 
# f = IO.popen("uname")
# p f.readlines
# puts "Parent is #{Process.pid}"
# IO.popen("date") { |f| puts f.gets }
# IO.popen("-") {|f| $stderr.puts "#{Process.pid} is here, f is #{f}"}
# p $?

files.each do |file_name|
 
  # puts "file_name = "+file_name
  f = IO.popen("/Users/anna/work/web_app/perl_tf/webservices/ruby/spec/call_client.rb "+file_name)
  p f.readlines
  # IO.popen("spec /Users/anna/work/web_app/perl_tf/webservices/ruby/spec/test_web/taxon_finder_client_spec3.rb")# do |io|
  # 
  # IO.popen("spec "+File.join(File.dirname(__FILE__), '../web_app/perl_tf/webservices/ruby/spec/test_web/', file_name)) do |io|
  #   puts "io = "+io.inspect.to_s
  #   io
  #   
  #   # while(line = io.gets)
  #   #   puts "io = "+io.to_s
  #   #   io
  #   #   # do whatever with line
  #   # end
  # end
end

# files_dir = "/Users/anna/work/test_neti_app/18/"
# # files = os.listdir("/Library/Webserver/Documents/")
# files = os.listdir(files_dir)
# # taxon_finder_client_spec2.rb
# 
# for f in files:
#     #st = "python "+"Nclient.py "+"18/"+f+" >"+"results--"+f
#     # print f
#     #p = subprocess.Popen("ruby "+"Nclient.py "+"18/"+f+" >"+"results--"+f,shell=True)
#     p = subprocess.Popen("spec "+"/Users/anna/work/web_app/perl_tf/webservices/ruby/spec/taxon_finder_web_service_spec-py1.rb "+f, shell=True)
#     # p = subprocess.Popen("spec "+files_dir+f, shell=True)
# 
#     # process = subprocess.Popen(['ls',], stdout=subprocess.PIPE)
#     # print process.communicate()[0]
# # 
# # 
# # describe "TaxonFinder client" do
# #   arr = []
# #   # file_name = $*[1]
# #   # puts "file_name = "+file_name.to_s
# #   # before :each do
# #     # @client = TaxonFinderClient.new
# #     # arr << NetiTaxonFinderClient.new
# #     # @client1 = NetiTaxonFinderClient.new
# #     # @client2 = NetiTaxonFinderClient.new
# #     # @client3 = NetiTaxonFinderClient.new
# #   # end
# #   # for i <= 4
# #   #   @client.find(c)
# #   it "should run several clients simultaneously" do
# #     basedir = '/Users/anna/work/test_neti_app/18/'
# #     Dir.chdir(basedir)
# #     files = Dir.glob("*.txt")
# #     
# #     IO.popen("some-process") do |io|
# #       while(line = io.gets)
# #         # do whatever with line
# #       end
# #     end
# #     
# #     # arr = ['/Library/Webserver/Documents/reconciled.txt', '/Library/Webserver/Documents/pictorialgeo.txt']
# #     files.each do |file_name|
# #       client = NetiTaxonFinderClient.new
# #       response = open(file_name)
# #       puts "=" * 40
# #       puts "file_name = "+file_name
# #       # debugger
# #       # response = open(content)
# #       content1 = Nokogiri::HTML(response).content
# #       client.find(content1).include?("Astraea americana")
# #       # client.find(content1).should == "Astraea americana"
# #       # assert last_response.body.include?("Volutharpa ampullacea")
# #     end
# #   end
# # end
# # 
