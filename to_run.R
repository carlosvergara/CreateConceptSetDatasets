rm(list=ls(all.names=TRUE))

#set the directory where the file is saved as the working directory
if (!require("rstudioapi")) install.packages("rstudioapi")
thisdir<-setwd(dirname(rstudioapi::getSourceEditorContext()$path))
thisdir<-setwd(dirname(rstudioapi::getSourceEditorContext()$path))


#load parameters
source(paste0(thisdir,"/parameters_program.R"))
source(paste0(thisdir,"/parameters_CDM.R"))
source(paste0(thisdir,"/concept_sets.R"))



CreateConceptSetDatasets(concept_set_names = concept_sets_of_our_study,
                         dataset = Example_CDM_tables,
                         codvar = Example_CDM_codvar,
                         datevar= Example_CDM_datevar,
                         EAVtables=Example_CDM_EAV_tables,
                         EAVattributes= Example_CDM_EAV_attributes,
                         dateformat= "YYYYmmdd",
                         vocabulary = Example_CDM_coding_system_cols,
                         rename_col = list(person_id=person_id,date=date),
                         concept_set_domains = concept_set_domains,
                         concept_set_codes =	concept_set_codes_our_study,
                         concept_set_codes_excl = concept_set_codes_our_study_excl,
                         discard_from_environment = F,
                         dirinput = dirinput,
                         diroutput = diroutput,
                         extension = c("csv"))
