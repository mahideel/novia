# PID of current job: 17472
mSet<-InitDataObjects("conc", "msetora", FALSE)
cmpd.vec<-c("Acetoacetic acid","Beta-Alanine","Creatine","Dimethylglycine","Fumaric acid","Glycine","Homocysteine","L-Cysteine","L-Isolucine","L-Phenylalanine","L-Serine","L-Threonine","L-Tyrosine","L-Valine","Phenylpyruvic acid","Propionic acid","Pyruvic acid","Sarcosine")
mSet<-Setup.MapData(mSet, cmpd.vec);
mSet<-CrossReferencing(mSet, "name");
mSet<-CreateMappingResultTable(mSet)
mSet<-SetMetabolomeFilter(mSet, F);
mSet<-SetCurrentMsetLib(mSet, "kegg_pathway", 2);
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_0_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_0_", "png", 72, width=NA)
mSet<-CalculateHyperScore(mSet)
mSet<-PlotORA(mSet, "ora_1_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "ora", "ora_dot_1_", "png", 72, width=NA)
