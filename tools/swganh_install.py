/*
---------------------------------------------------------------------------------------
This source file is part of SWG:ANH (Star Wars Galaxies - A New Hope - Server Emulator)

For more information, visit http://www.swganh.com

Copyright (c) 2006 - 2010 The SWG:ANH Team
---------------------------------------------------------------------------------------
This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
---------------------------------------------------------------------------------------
*/

##
## Import Required Modules
##

import ConfigParser
import os
import string
import sys
import time

##
## Define Clear Screen
##

if sys.platform == 'linux2':
        wipes = 'clear'
elif sys.platform == 'win32':
        wipes = 'cls'
else:
        wipes = 'clear'

##
## Parse Config file and load all variables
##

config = ConfigParser.ConfigParser()
config.read("swganh.conf")
section = "Paths"
section = "Database"
section = "Credentials"
section = "Scripts"

dbpath = config.get("Paths","MySQL Path")
dbuser = config.get("Credentials","MySQL Username")
dbpass = config.get ("Credentials","MySQL Password")

swganhpath = config.get("Paths","SWGANH Path")
swganhdb = config.get ("Database","SWGANH Database")
swganhconfigdb = config.get ("Database","SWGANH Config Database")

script1 = config.get("Scripts","script1")
script2 = config.get("Scripts","script2")
script3 = config.get("Scripts","script3")
script4 = config.get("Scripts","script4")
script5 = config.get("Scripts","script5")

if sys.platform == 'linux2':
	swganharchivepath = swganhpath + "/archive"
elif sys.platform == 'win32':
	swganharchivepath = swganhpath + "\\archive"

if sys.platform == 'linux2':
	swganhschemapath = swganhpath + "/schema/"
elif sys.platform == 'win32':
	swganhschemapath = swganhpath + "\\schema\\"

def backup():
	today =  time.strftime('%m%d%Y%H%M')
	swganhdb_filename = today + "_swganhbackup.sql"
	swganhconfig_filename = today + "_swganhconfigbackup.sql"
	os.system (wipes)
	print "----------------------------------------------------------------------"
	print "SWGANH Database Install Script                                (Backup)"
	print "----------------------------------------------------------------------"
	print "Script Revision v.0.01"
	print "----------------------------------------------------------------------"
	print ""
	print "The databases backup path is : " + swganharchivepath
	print ""
	print "The filenames are : " + swganhdb_filename
	print "                  : " + swganhconfig_filename
	print ""
	print "Backup Starting..."
	print ""
	print ""
	
	##
	## Do Database Backup & Remove
	##

	cmd = '"%s" -u %s --password=%s --routines %s' % (os.path.join(dbpath, "mysqldump"), dbuser, dbpass, swganhdb)
	outfile = os.path.join(swganharchivepath, "%s_swganhbackup.sql" % today)
	output = os.popen(cmd).read()
	file(outfile, "w").write(output)

	cmd = '"%s" -u %s --password=%s --routines %s' % (os.path.join(dbpath, "mysqldump"), dbuser, dbpass, swganhconfigdb)
	outfile = os.path.join(swganharchivepath, "%s_swganhconfigbackup.sql" % today)
	output = os.popen(cmd).read()
	file(outfile, "w").write(output)
    
	print ""
	print "Backups complete, removing databases..."
	print ""
    
	cmd = '"%s" -f -u %s --password=%s drop %s' % (os.path.join(dbpath, "mysqladmin"), dbuser, dbpass, swganhdb)
	outfile = os.path.join(swganharchivepath, "output.log")
	output = os.popen(cmd).read()
	file(outfile, "w").write(output)
    
	cmd = '"%s" -f -u %s --password=%s drop %s' % (os.path.join(dbpath, "mysqladmin"), dbuser, dbpass, swganhconfigdb)
	outfile = os.path.join(swganharchivepath, "output.log")
	output = os.popen(cmd).read()
	file(outfile, "w").write(output)
    
	print ""
	print ""
	time.sleep(5)
	ask("Command:")

def install():
	os.system (wipes)
	print "----------------------------------------------------------------------"
	print "SWGANH Database Install Script                               (Install)"
	print "----------------------------------------------------------------------"
	print "Script Revision v.0.01"
	print "----------------------------------------------------------------------"
	print ""
	print "Welcome to the SWGANH Database Installer"
	print ""
	print "This section will enable you to load a fresh copy of the swganh"
	print "database onto your system."
	print ""
	print ""
	script1path = swganhschemapath+script1
	script2path = swganhschemapath+script2
	script3path = swganhschemapath+script3
	script4path = swganhschemapath+script4
	script5path = swganhschemapath+script5
    
    ##
    ## Define the commands to be run
    ##
    
	cmd1 = '"%s" -u %s --password=%s < %s' % (os.path.join(dbpath, "mysql"), dbuser, dbpass,script1path)
	child = os.popen(cmd1)
	print script1path + " --> Done!"
	
	cmd2 = '"%s" -u %s --password=%s < %s' % (os.path.join(dbpath, "mysql"), dbuser, dbpass,script2path)
	child = os.popen(cmd2)
	print script2path + " --> Done!"
	
	cmd3 = '"%s" -u %s --password=%s < %s' % (os.path.join(dbpath, "mysql"), dbuser, dbpass,script3path)
	child = os.popen(cmd3)
	print script3path + " --> Done!"
	
	cmd4 = '"%s" -u %s --password=%s < %s' % (os.path.join(dbpath, "mysql"), dbuser, dbpass,script4path)
	child = os.popen(cmd4)
	print script4path + " --> Done!"
	
	cmd5 = '"%s" -u %s --password=%s < %s' % (os.path.join(dbpath, "mysql"), dbuser, dbpass,script5path)
	child = os.popen(cmd5)
	print script5path + " --> Done!"
	
	print ""
	print ""
	print ""
	time.sleep(5)
	ask("Command:")	
	
def exit():
    os.system (wipes)
    print "----------------------------------------------------------------------"
    print "SWGANH Database Install Script                                   (End)"
    print "----------------------------------------------------------------------"
    print "Script Revision v.0.01"
    print "----------------------------------------------------------------------"
    print ""
    print ""
    print ""
    print "Exiting..."
    sys.exit(0)
	
def main():
    os.system(wipes)
    print "----------------------------------------------------------------------"
    print "SWGANH Database Install Script                                  (Init)"
    print "----------------------------------------------------------------------"
    print "Script Revision v.0.01"
    print "----------------------------------------------------------------------"
    print ""
    print "----------------------------------------------------------------------"
    print "CAUTION -- Please  make sure that you've edited the script  -- CAUTION"
    print "----------                                                  ----------"
    print "CAUTION -- And that  the values are correct for your SETup. -- CAUTION"
    print "----------                                                  ----------"
    print "CAUTION -- If the values are not SET properly               -- CAUTION"
    print "----------                                                  ----------"
    print "CAUTION -- This script can cause unwanted results.          -- CAUTION"
    print "----------------------------------------------------------------------"
    print ""
    print ""

def menu():
    print "Menu:"
    print "-----"
    print "(B)ackup Databases"
    print "(I)nstall new Databases"
    print "(Q)uit the installer"
    print ""
    
def ask(prompt, complaint='B, I or Q please!'):
    while True:
        main()
        menu()
        ok = raw_input(prompt)
        if ok in ('B', 'b'): backup()
        if ok in ('I', 'i'): install()
        if ok in ('Q', 'q'): exit()
        print complaint

ask("Command:")