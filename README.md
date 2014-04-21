syscond
=======

Installation instructions:
--------------------------
1. Run the following command inside the distribution directory:

$ ./syscond install

2. Choose the installation directory (which defaults to $HOME) by answering t
   he question. The syscond directory will be created there.

3. Add the following lines to your crontab (use the "crontab -e" command to
   edit your crontab):

* * * * * /path/to/syscond/syscond check minute
0 * * * * /path/to/syscond/syscond check hour
0 0 * * * /path/to/syscond/syscond check day
