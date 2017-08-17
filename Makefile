# 1M

######################################################################

current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources = Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk
-include $(ms)/repos.def
Bio1M += Lectures

##################################################################

## Content

dirs = Lectures
dfiles: $(dirs:%=%/Makefile)
Sources += $(dirs)

######################################################################

-include $(ms)/git.mk
-include $(ms)/modules.mk
-include $(ms)/visual.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
