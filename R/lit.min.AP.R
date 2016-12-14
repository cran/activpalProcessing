lit.min.AP <-
function(mets,posture,epoch=1)
{
	lit.mins.temp <- sum((posture==2)&(mets>=1.5)&(mets<3))/(60/epoch)
	lit.mins.stand <- sum(posture==1)/(60/epoch)
	lit.mins <- lit.mins.temp+lit.mins.stand
	if (lit.mins==0)
		lit.mins <- NA
	return(lit.mins)
}
