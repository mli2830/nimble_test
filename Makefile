
### Hooks for the editor to set the default target
current: makestuff


target pngtarget pdftarget vtarget acrtarget: nimble_hang.Rout

##################################################################


# make files

Sources = Makefile .gitignore README.md stuff.mk LICENSE.md
 include stuff.mk
 include $(ms)/perl.def

##################################################################

## Content

jags.Rout:	params.R code.bug jags.sim.R
		$(run-R)

nimble_hang.Rout:	jags.RData nimcode.R nimble_hang.R
			$(run-R)

nimble_inprod.Rout:	jags.Rout params2.R nimcode2.R nimcode22.R nimble_inprod.R
			$(run-R)

nimble_pointer.Rout:	nimble_pointer.R
			$(run-R)


######################################################################

### Makestuff

## Change this name to download a new version of the makestuff directory
# Makefile: start.makestuff


-include $(ms)/git.mk
-include $(ms)/visual.mk

 -include $(ms)/wrapR.mk
 -include $(ms)/oldlatex.mk

