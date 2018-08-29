# 1M

## Need to update -- should be a container repo with clones
## testing hup

######################################################################

current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources = Makefile .ignore README.md sub.mk LICENSE.md
-include sub.mk
-include $(ms)/repos.def

Sources += test.txt

##################################################################

Sources += localrepos.mk

## Repo sources
## (others at repos.def, or called from other directories)

## Repos from https://github.com/Bio1M/ 
gMain = Lectures Archive
Bio1M += $(gMain)
Sources += $(gMain)
mdirs +=  $(gMain)

## Private repos
## Right now, I don't have organizations for private repos
## so they need unambiguous names
## so they can go into repos.def

private = 1m_2017
Sources += $(private)
mdirs += $(private)

######################################################################

-include $(ms)/git.mk
-include $(ms)/modules.mk
-include $(ms)/visual.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
