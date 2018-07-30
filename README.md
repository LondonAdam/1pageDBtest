# 1pageDBtest
a one page  asp.net test for SQL servers, together with a setup SQL file 
If you're working on SQL servers in a shop where you don't have access to dev app servers , a simple single file webapp to test connectivity can be useful. This version only works on SQL servers that have mixed-mode authentication, and you need an asp.net compatible web server.
*** Deployment ***
Exact steps may vary depending on your environment
i) Run 1pageDBtestSQLsetup.txt on your SQL server  - you may want to modify so the test table is created in an existing database.
ii) Say you have an IIS server called web1 in default configuration.  Copy 1pageDBtest.aspx to C:\inetpub\wwwroot 
iii) Edit 1pageDBtest.aspx to reflect the name of the SQL server, e.g. if it's called DB01, you shoudl edit so you have a line saying:     Data Source=DB01;
iii) To run the app, browse to http://yourWebserverName/1pageDBtest.aspx   - if all is good, you will get a page with a short table telling you the number of bank holiday in 2018. 
