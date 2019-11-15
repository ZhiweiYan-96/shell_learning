#----------------------------------------------------------------------------------
# The `echo` command is built into `sh` as well as `bash`. It's a simple and
# accessible way to output text to your terminal.
#
# Assuming you're using `bash`, the feature-rich `printf` giant is often the better
# choice, if portability is at all a concern, and/or when needing more oomph.
#
# Unlike most other commands, `echo` allows for unprotected strings, provided the
# characters aren't interpret-able by the shell, such as a glob (`*`).
#
# The following command should work as intended:
#
#   echo this example text would display correctly
#
# However, this typically would not:
#
#   echo this example * text would not display correctly
#
# It would be a good habit to quote all of your `echo` output, though.
#
# The `echo` command can make use of escape sequences*, but may require the `-e`
# flag to work. That said, on many installations of Linux, this is the default, -
# which can be set by using the `xpg_echo` shell option, set with the `shopt` bash
# builtin.
#
# * Escape sequences are, for example, `\n`, `\e[1;31m`, `\033c`, `\x3d`, etc.
#
#   - written by 'terminalforlife' (AKA: 'Learn Linux')
#----------------------------------------------------------------------------------

# The following three lines have the same result.
echo "It is a test"
echo 'It is a test'
echo It is a test


# escape a character
echo "\"It is a test \""
# The above could also be written as:
echo '"It is a test "'

#print variable
name=zhiwei
echo "$name"

# new line (concatenation)
echo -e "OK! \n"
echo "It is a test"

#don't insert new line before two echo command
echo -e "OK! \c"
echo "It is a test"
# The first line has the same effect as using the `-n` flag:
echo -n "OK! "

#show command result via command substitution
echo `date`
