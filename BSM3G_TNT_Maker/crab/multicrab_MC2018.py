if __name__ == '__main__':
 #####
 ##   Multicrab configuration
 #####
 import sys
 from CRABClient.UserUtilities import config, getUsernameFromSiteDB
 config = config()
 from CRABAPI.RawCommand import crabCommand
 from CRABClient.ClientExceptions import ClientException
 from httplib import HTTPException
 config.General.workArea = 'Crab_projects'

 def submit(config):
  try:
   crabCommand('submit', config = config)
  except HTTPException as hte:
   print "Failed submitting task: %s" % (hte.headers)
  except ClientException as cle:
   print "Failed submitting task: %s" % (cle)
 #####
 ##   Crab configuration
 #####
 datasetnames  = [
# signal
'Legacy18V1_TTHnobb', #0
'Legacy18V1_TTH_ctcvcp',
# TH
'Legacy18V1_THQ_ctcvcp',
'Legacy18V1_THW_ctcvcp',
# prompt background
# TTW
'Legacy18V1_TTWJets',
'Legacy18V1_TTWW_v1',
'Legacy18V1_TTWW_ext1',
# TTZ
'Legacy18V1_TTZ_M1to10',
'Legacy18V1_TTZ_M10',
#### ST #####
'Legacy18V1_ST_sCh_lepDecay',
'Legacy18V1_ST_tCh_top', #10
'Legacy18V1_ST_tCh_antitop',
'Legacy18V1_ST_tW_top',
'Legacy18V1_ST_tW_antitop',
'Legacy18V1_tWll',
# TT
'Legacy18V1_TTTo2L',
'Legacy18V1_TTToSemiLep',
'Legacy18V1_TTToHad',
#Conv
'Legacy18V1_TTGJets', 
'Legacy18V1_TGJetsLep',
'Legacy18V1_WGToLNuG_Tune', #20
'Legacy18V1_ZGToLLG_01J',
'Legacy18V1_W1JetsToLNu',
'Legacy18V1_W2JetsToLNu',
'Legacy18V1_W3JetsToLNu',
'Legacy18V1_W4JetsToLNu',
'Legacy18V1_DYJets_M10to50',
'Legacy18V1_DYJets_M50_v1',
'Legacy18V1_DYJets_M50_ext',
'Legacy18V1_WZG',
#EWK
'Legacy18V1_WWTo2LNu', #30
'Legacy18V1_WZTo3LNu',
'Legacy18V1_ZZTo4L_v1',
'Legacy18V1_ZZTo4L_ext', 
'Legacy18V1_WJets',
#Rares
'Legacy18V1_WW_DS',
'Legacy18V1_WWW',
'Legacy18V1_WWZ',
'Legacy18V1_WZZ',
'Legacy18V1_ZZZ',
'Legacy18V1_TTTT', #40
'Legacy18V1_tZq',
'Legacy18V1_WpWpJJ',
'Legacy18V1_GGHToTauTau',
'Legacy18V1_VBFHToTauTau',
# VH
'Legacy18V1_VHToNonbb',
'Legacy18V1_ZHTobb_v2',
'Legacy18V1_ZHTobb_ext',
'Legacy18V1_ZHToTauTau',
#####   MVA samples #######
'Legacy18V1_ttW_Tune',
'Legacy18V1_ttZ_Tune', #50
'Legacy18V1_TTJets_mad',
'Legacy18V1_TTJets_amc',
'Legacy18V1_TTJets_TbarToSingleLep',
'Legacy18V1_TTJets_TToSingleLep',
'Legacy18V1_TTJets_DiLep',
####### bstar and tW ######
'Legacy18V1_ST_tW_top_noFullDecay',
'Legacy18V1_ST_tW_antitop_noFullDecay',
'Legacy18V1_WZ',
'Legacy18V1_WW',
'Legacy18V1_ZZ', #60
'Legacy18V1_QCD_HT50to100',
'Legacy18V1_QCD_HT100to200',
'Legacy18V1_QCD_HT200to300',
'Legacy18V1_QCD_HT300to500',
'Legacy18V1_QCD_HT500to700',
'Legacy18V1_QCD_HT700to1000',
'Legacy18V1_QCD_HT1000to1500',
'Legacy18V1_QCD_HT1500to2000',
'Legacy18V1_QCD_HT2000toInf',
# bstar
'Legacy18V1_Bstar_M-700_RH', #70
'Legacy18V1_Bstar_M-700_LH',
'Legacy18V1_Bstar_M-800_RH',
'Legacy18V1_Bstar_M-800_LH',
'Legacy18V1_Bstar_M-900_RH',
'Legacy18V1_Bstar_M-900_LH',
'Legacy18V1_Bstar_M-1000_RH',
'Legacy18V1_Bstar_M-1000_LH',
'Legacy18V1_Bstar_M-1100_RH',
'Legacy18V1_Bstar_M-1100_LH',
'Legacy18V1_Bstar_M-1200_RH', #80
'Legacy18V1_Bstar_M-1200_LH',
'Legacy18V1_Bstar_M-1400_RH',
'Legacy18V1_Bstar_M-1400_LH',
'Legacy18V1_Bstar_M-1600_RH',
'Legacy18V1_Bstar_M-1600_LH',
'Legacy18V1_Bstar_M-1800_RH',
'Legacy18V1_Bstar_M-1800_LH',
'Legacy18V1_Bstar_M-2000_RH',
'Legacy18V1_Bstar_M-2000_LH',
'Legacy18V1_Bstar_M-2200_RH',#90
'Legacy18V1_Bstar_M-2200_LH',
'Legacy18V1_Bstar_M-2400_RH',
'Legacy18V1_Bstar_M-2400_LH',
'Legacy18V1_Bstar_M-2600_RH',
'Legacy18V1_Bstar_M-2600_LH',
'Legacy18V1_Bstar_M-2800_RH',
'Legacy18V1_Bstar_M-2800_LH',
'Legacy18V1_Bstar_M-3000_RH',
'Legacy18V1_Bstar_M-3000_LH',

                 ]
 datasetinputs = [
# signal
'/ttHToNonbb_M125_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM', #0
'/TTH_4f_ctcvcp_TuneCP5_13TeV_madgraph_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
# TH
'/THQ_ctcvcp_4f_Hincl_13TeV_madgraph_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/THW_ctcvcp_5f_Hincl_13TeV_madgraph_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
# prompt background
# TTW
'/TTWJetsToLNu_TuneCP5_13TeV-amcatnloFXFX-madspin-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'/TTWW_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'/TTWW_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext2-v1/MINIAODSIM',
# TTZ
'/TTZToLL_M-1to10_TuneCP5_13TeV-amcatnlo-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/TTZToLLNuNu_M-10_TuneCP5_13TeV-amcatnlo-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
#ST
'/ST_s-channel_4f_leptonDecays_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v4/MINIAODSIM',
'/ST_t-channel_top_4f_InclusiveDecays_TuneCP5_13TeV-powheg-madspin-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM', #10
'/ST_t-channel_antitop_4f_InclusiveDecays_TuneCP5_13TeV-powheg-madspin-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/ST_tW_top_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v1/MINIAODSIM',
'/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v1/MINIAODSIM',
'/ST_tWll_5f_LO_TuneCP5_PSweights_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v1/MINIAODSIM',
# TT
'/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/TTToSemiLeptonic_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/TTToHadronic_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#Conv
'/TTGJets_TuneCP5_13TeV-amcatnloFXFX-madspin-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/TGJets_leptonDecays_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'/WGToLNuG_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM', #20
'/ZGToLLG_01J_5f_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'/W1JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'/W2JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'/W3JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'/W4JetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'/DYJetsToLL_M-10to50_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'/DYJetsToLL_M-50_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/DYJetsToLL_M-50_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext2-v1/MINIAODSIM',
'/WZG_TuneCP5_13TeV-amcatnlo-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#EWK
'/WWTo2L2Nu_NNPDF31_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM', #30
'/WZTo3LNu_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'/ZZTo4L_TuneCP5_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'/ZZTo4L_TuneCP5_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext2-v2/MINIAODSIM',
'/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
#Rares
'/WWTo2L2Nu_DoubleScattering_13TeV-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/WWW_4F_TuneCP5_13TeV-amcatnlo-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'/WWZ_TuneCP5_13TeV-amcatnlo-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'/WZZ_TuneCP5_13TeV-amcatnlo-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'/ZZZ_TuneCP5_13TeV-amcatnlo-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'/TTTT_TuneCP5_13TeV-amcatnlo-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM', #40
'/tZq_ll_4f_ckm_NLO_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'/WpWpJJ_EWK-QCD_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/GluGluHToTauTau_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'/VBFHToTauTau_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v1/MINIAODSIM',
# VH
'/VHToNonbb_M125_13TeV_amcatnloFXFX_madspin_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'/ZH_HToBB_ZToLL_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'/ZH_HToBB_ZToLL_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v1/MINIAODSIM',
'/ZHToTauTau_M125_13TeV_powheg_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
###################### MVA Samples ##################
'/ttWJets_TuneCP5_13TeV_madgraphMLM_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'/ttZJets_TuneCP5_13TeV_madgraphMLM_pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM', #50
'/TTJets_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/TTJets_TuneCP5_13TeV-amcatnloFXFX-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'/TTJets_SingleLeptFromTbar_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/TTJets_SingleLeptFromT_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/TTJets_DiLept_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',

####### bstar and tW ######
'/ST_tW_top_5f_NoFullyHadronicDecays_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v2/MINIAODSIM',
'/ST_tW_antitop_5f_NoFullyHadronicDecays_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v3/MINIAODSIM',
'/WZ_TuneCP5_13TeV-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v3/MINIAODSIM',
'/WW_TuneCP5_13TeV-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
'/ZZ_TuneCP5_13TeV-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM', #60
'/QCD_HT50to100_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/QCD_HT100to200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/QCD_HT200to300_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/QCD_HT300to500_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/QCD_HT500to700_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/QCD_HT700to1000_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/QCD_HT1000to1500_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/QCD_HT1500to2000_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/QCD_HT2000toInf_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
# bstar
'/BstarToTW_M-700_RH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM', #70
'/BstarToTW_M-700_LH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-800_RH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-800_LH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-900_RH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-900_LH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-1000_RH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-1000_LH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-1100_RH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-1100_LH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-1200_RH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM', #80
'/BstarToTW_M-1200_LH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-1400_RH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-1400_LH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-1600_RH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-1600_LH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-1800_RH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-1800_LH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-2000_RH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-2000_LH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-2200_RH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',#90
'/BstarToTW_M-2200_LH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-2400_RH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-2400_LH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-2600_RH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-2600_LH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-2800_RH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-2800_LH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-3000_RH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/BstarToTW_M-3000_LH_TuneCP5_13TeV-madgraph-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
                ]

# samples also used in tW or bstar
# minimum lepton are set to 1 instead of 2 
tWLists = [
# shared samples
# ST
'Legacy18V1_ST_sCh_lepDecay', 'Legacy18V1_ST_tCh_top', 'Legacy18V1_ST_tCh_antitop', 'Legacy18V1_ST_tW_top', 'Legacy18V1_ST_tW_antitop', 
# TT
'Legacy18V1_TTTo2L', 'Legacy18V1_TTToSemiLep', 'Legacy18V1_TTToHad', 'Legacy18V1_TTJets_mad', 'Legacy18V1_TTJets_amc', 'Legacy18V1_TTJets_TbarToSingleLep', 'Legacy18V1_TTJets_TToSingleLep', 'Legacy18V1_TTJets_DiLep',
# WJets + DY
'Legacy18V1_WJets','Legacy18V1_W1JetsToLNu', 'Legacy18V1_W2JetsToLNu', 'Legacy18V1_W3JetsToLNu', 'Legacy18V1_W4JetsToLNu', 'Legacy18V1_DYJets_M10to50', 'Legacy18V1_DYJets_M50_v1', 'Legacy18V1_DYJets_M50_ext', 
# non ttH samples
'Legacy18V1_ST_tW_top_noFullDecay', 'Legacy18V1_ST_tW_antitop_noFullDecay', 'Legacy18V1_WZ', 'Legacy18V1_WW', 'Legacy18V1_ZZ', 'Legacy18V1_QCD_HT50to100', 'Legacy18V1_QCD_HT100to200', 'Legacy18V1_QCD_HT200to300', 'Legacy18V1_QCD_HT300to500', 'Legacy18V1_QCD_HT500to700', 'Legacy18V1_QCD_HT700to1000', 'Legacy18V1_QCD_HT1000to1500', 'Legacy18V1_QCD_HT1500to2000','Legacy18V1_QCD_HT2000toInf',
# bstar
'Legacy18V1_Bstar_M-700_RH', 'Legacy18V1_Bstar_M-700_LH', 'Legacy18V1_Bstar_M-800_RH', 'Legacy18V1_Bstar_M-800_LH', 'Legacy18V1_Bstar_M-900_RH', 'Legacy18V1_Bstar_M-900_LH', 'Legacy18V1_Bstar_M-1000_RH', 'Legacy18V1_Bstar_M-1000_LH', 'Legacy18V1_Bstar_M-1100_RH', 'Legacy18V1_Bstar_M-1100_LH',
'Legacy18V1_Bstar_M-1200_RH', 'Legacy18V1_Bstar_M-1200_LH', 'Legacy18V1_Bstar_M-1400_RH', 'Legacy18V1_Bstar_M-1400_LH', 'Legacy18V1_Bstar_M-1600_RH', 'Legacy18V1_Bstar_M-1600_LH', 'Legacy18V1_Bstar_M-1800_RH', 'Legacy18V1_Bstar_M-1800_LH', 'Legacy18V1_Bstar_M-2000_RH', 'Legacy18V1_Bstar_M-2000_LH',
'Legacy18V1_Bstar_M-2200_RH', 'Legacy18V1_Bstar_M-2200_LH', 'Legacy18V1_Bstar_M-2400_RH', 'Legacy18V1_Bstar_M-2400_LH', 'Legacy18V1_Bstar_M-2600_RH', 'Legacy18V1_Bstar_M-2600_LH', 'Legacy18V1_Bstar_M-2800_RH', 'Legacy18V1_Bstar_M-2800_LH', 'Legacy18V1_Bstar_M-3000_RH', 'Legacy18V1_Bstar_M-3000_LH',

]

#for d in range(len(datasetnames)):
for d in range(0,len(datasetnames)):
    print 'multicrab.py: Running datasetname: ', datasetnames[d]

    
    lepFilt = 2
    if datasetnames[d] in tWLists:
        lepFilt = 1
        print 'multicrab_MC2018.py: Run ', datasetnames[d], ' lepFilt 1 '
    
    if "ctcvcp" in datasetnames[d]:
        lepFilt = 0
        print 'multicrab_MC2018.py: Run ', datasetnames[d], ' lepFilt 0 for ctcvcp samples '
    
    
    nameLepFilt = 'optionlepfilt={}'.format(lepFilt) 
    
    config.section_('General')
    config.General.requestName = datasetnames[d]
    config.General.workArea    = datasetnames[d]
    config.General.transferLogs = True

    config.section_('JobType')
    config.JobType.pluginName  = 'Analysis'
    # List of parameters to pass to CMSSW parameter-set configuration file:
    config.JobType.psetName    = '/afs/cern.ch/work/b/binghuan/private/TTHLepRunII/CMSSW_10_2_14/src/BSMFramework/BSM3G_TNT_Maker/python/miniAOD_MC2018.py'
    config.JobType.inputFiles = ['/afs/cern.ch/work/b/binghuan/private/TTHLepRunII/CMSSW_10_2_14/src/BSMFramework/BSM3G_TNT_Maker/data/QG/QGL_AK4chs_94X.db']
    config.JobType.sendExternalFolder = True
    config.JobType.maxMemoryMB = 2000 # Default == 2Gb : maximum guaranteed to run on all sites
    #config.JobType.allowUndistributedCMSSW = True
    ofParam = 'ofName=' + datasetnames[d]
    config.JobType.pyCfgParams = [nameLepFilt,
                                    ofParam]
    config.section_('Data')
    config.Data.allowNonValidInputDataset = True
    config.Data.inputDataset   = datasetinputs[d]
    config.Data.inputDBS       = 'global'
    config.Data.splitting      = 'FileBased'
    config.Data.totalUnits     = 40000 #With 'FileBased' splitting tells how many files to analyse
    config.Data.unitsPerJob    = 1
    config.Data.outLFNDirBase = '/store/user/binghuan/'# First part of LFN for output files (must be /store/user/<username>/ or /store/group/<username>/  )
    config.Data.outputDatasetTag = datasetnames[d]

    print 'multicrab.py: outLFNDirBase = /store/user/binghuan/'
    #config.Data.publication = True

    config.section_('Site')
    config.Site.storageSite    = 'T2_CN_Beijing'#'T2_CH_CERN' # Site to which output is permenantly copied by crab3
    print 'multicrab.py: Submitting Jobs'
    submit(config)
