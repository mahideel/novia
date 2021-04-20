# PID of current job: 14803
mSet<-InitDataObjects("conc", "msetqea", FALSE)
mSet<-Read.TextData(mSet, "Replacing_with_your_file_path", "rowu", "disc");
mSet<-SanityCheckData(mSet)
mSet<-ContainMissing(mSet)
mSet<-ReplaceMin(mSet);
mSet<-CrossReferencing(mSet, "name");
mSet<-CreateMappingResultTable(mSet)
mSet<-PreparePrenormData(mSet)
mSet<-Normalization(mSet, "NULL", "NULL", "AutoNorm", ratio=FALSE, ratioNum=20)
mSet<-PlotNormSummary(mSet, "norm_0_", "png", 72, width=NA)
mSet<-PlotSampleNormSummary(mSet, "snorm_0_", "png", 72, width=NA)
mSet<-SetMetabolomeFilter(mSet, F);
mSet<-SetCurrentMsetLib(mSet, "kegg_pathway", 2);
mSet<-CalculateGlobalTestScore(mSet)
mSet<-PlotQEA.Overview(mSet, "qea_0_", "net", "png", 72, width=NA)
mSet<-PlotEnrichDotPlot(mSet, "qea", "qea_dot_0_", "png", 72, width=NA)
