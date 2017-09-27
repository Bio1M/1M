# 1M

######################################################################

current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources = Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk

##################################################################

## Content

## Repos from https://github.com/Bio1M/ (others at repos.def, or called from other directories)
gMain = Lectures Archive

Bio1M += $(gMain)

Sources += $(gMain)

mdirs +=  $(gMain)

######################################################################

-include $(ms)/git.mk
-include $(ms)/modules.mk
-include $(ms)/visual.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
