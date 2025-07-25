#!/bin/bash

# Symbol        Basic Regex (BRE)                             Extended Regex (ERE)
# ---------------------------------------------------------------------------------------------
# . (dot)       Matches any character                         Matches any character
# *             Matches 0 or more of the preceding character  Same as BRE
# ^             Start of line anchor                          Same as BRE
# $             End of line anchor                            Same as BRE
# \+            Escaped: matches 1 or more                    + is special: matches 1 or more
# \?            Escaped: matches 0 or 1                       ? is special: matches 0 or 1
# |             Escaped: logical OR                           `
# \( and \)     Escaped: for grouping                         ( and ) are special: for grouping
# {}            Not supported or escaped                      {   } is special: for repetition
# []            Character class                               Same as BRE
# \             Escape character                              Escape character


echo Basic regex means that you will need to escape 


cat /usr/share/dict/words
grep zoom /usr/share/dict/words 
grep zooma /usr/share/dict/words 
grep zo{2}ma /usr/share/dict/words 
grep zo\{2\}ma /usr/share/dict/words 
grep -E zo{2}ma /usr/share/dict/words 

