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
#background
#'Fall17V2_TT', #32
#'Fall17V2_ST',
#'Fall17V2_SaT',
#'Fall17V2_ZZ',
#'Fall17V2_WZ',
#'Fall17V2_WW',
#'Fall17V2_WJetsHT100To200',
#'Fall17V2_WJetsHT200To400',
#'Fall17V2_WJetsHT400To600',
#'Fall17V2_WJetsHT600To800',
#'Fall17V2_WJetsHT800To1200',
#'Fall17V2_WJetsHT1200To2500',
#'Fall17V2_WJetsHT2500ToInf',
#'Fall17V2_WJets_1',
#'Fall17V2_WJets_2',
#'Fall17V2_DY1',
#'Fall17V2_DY2',

#Signal eejj #31
#'eejj_17_L4_M500',
#'eejj_17_L4_M1000',
#'eejj_17_L4_M2000',
#'eejj_17_L4_M3000',
#'eejj_17_L4_M4000',
#'eejj_17_L5_M500',
#'eejj_17_L5_M1000',
#'eejj_17_L5_M2000',
#'eejj_17_L5_M3000',
#'eejj_17_L5_M4000',
#'eejj_17_L5_M5000',
#'eejj_17_L6_M500',
#'eejj_17_L6_M1000',
#'eejj_17_L6_M2000',
#'eejj_17_L6_M3000',
#'eejj_17_L6_M4000',
#'eejj_17_L6_M5000',
#'eejj_17_L6_M6000',
#'eejj_17_L7_M500',
#'eejj_17_L7_M1000',
#'eejj_17_L7_M2000',
#'eejj_17_L7_M3000',
#'eejj_17_L7_M4000',
#'eejj_17_L7_M5000',
#'eejj_17_L7_M6000',
#'eejj_17_L7_M7000',
#'eejj_17_L9_M500',
#'eejj_17_L9_M1000',
#'eejj_17_L9_M2000',
#'eejj_17_L9_M4000',
#'eejj_17_L9_M6000',
#'eejj_17_L9_M9000',
#'eejj_17_L11_M1000',
#'eejj_17_L11_M2000',
#'eejj_17_L11_M4000',
#'eejj_17_L11_M7000',
#'eejj_17_L13_M500',
#'eejj_17_L13_M1000',
#'eejj_17_L13_M2000',
#'eejj_17_L13_M5000',
#'eejj_17_L13_M8000',
#'eejj_17_L15_M500',
#'eejj_17_L15_M2000',
#'eejj_17_L15_M6000',
#'eejj_17_L17_M500',
#'eejj_17_L17_M1000',
#'eejj_17_L17_M2000',
#'eejj_17_L17_M7000',
#'eejj_17_L20_M500',   
'eejj_17_L20_M2000',

#Signal mumujj #26
#'mumujj_17_L4_M500',
#'mumujj_17_L4_M1000',
#'mumujj_17_L4_M2000',
#'mumujj_17_L4_M3000',
#'mumujj_17_L4_M4000',
#'mumujj_17_L5_M500',
#'mumujj_17_L5_M1000',
#'mumujj_17_L5_M2000',
#'mumujj_17_L5_M3000',
#'mumujj_17_L5_M4000',
#'mumujj_17_L5_M5000',
#'mumujj_17_L6_M500',
#'mumujj_17_L6_M1000',
#'mumujj_17_L6_M2000',
#'mumujj_17_L6_M3000',
#'mumujj_17_L6_M4000',
#'mumujj_17_L6_M5000',
#'mumujj_17_L6_M6000',
#'mumujj_17_L7_M500',
#'mumujj_17_L7_M1000',
#'mumujj_17_L7_M2000',
#'mumujj_17_L7_M3000',
#'mumujj_17_L7_M4000',
#'mumujj_17_L7_M5000',
#'mumujj_17_L7_M6000',
#'mumujj_17_L7_M7000',
#'mumujj_17_L9_M500',
#'mumujj_17_L9_M1000',
#'mumujj_17_L9_M2000',
#'mumujj_17_L9_M4000',
#'mumujj_17_L9_M6000',
#'mumujj_17_L9_M9000',
#'mumujj_17_L11_M500',
#'mumujj_17_L11_M1000',
#'mumujj_17_L11_M2000',
#'mumujj_17_L11_M4000',
#'mumujj_17_L11_M7000',
#'mumujj_17_L13_M500',
#'mumujj_17_L13_M1000',
#'mumujj_17_L13_M2000',
#'mumujj_17_L13_M5000',
#'mumujj_17_L13_M8000',
#'mumujj_17_L15_M500',
#'mumujj_17_L15_M1000',
#'mumujj_17_L15_M2000',
#'mumujj_17_L15_M6000',
#'mumujj_17_L17_M1000',
#'mumujj_17_L17_M2000',
#'mumujj_17_L17_M7000',
#'mumujj_17_L20_M500',
#'mumujj_17_L20_M2000',
#'mumujj_17_L20_M1000',
#'mumujj_17_L20_M8000',
              ]
 datasetinputs = [
#background
#'/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/ST_tW_top_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/ZZ_TuneCP5_13TeV-pythia8/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/WZ_TuneCP5_13TeV-pythia8/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/WW_TuneCP5_13TeV-pythia8/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/WJetsToLNu_HT-100To200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v2/MINIAODSIM',
#'/WJetsToLNu_HT-200To400_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/WJetsToLNu_HT-400To600_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/WJetsToLNu_HT-600To800_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/WJetsToLNu_HT-800To1200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/WJetsToLNu_HT-1200To2500_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/WJetsToLNu_HT-2500ToInf_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v3/MINIAODSIM',
#'/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14_ext1-v2/MINIAODSIM',
#'/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v2/MINIAODSIM',
#'/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIFall17MiniAODv2-PU2017RECOSIMstep_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIFall17MiniAODv2-PU2017RECOSIMstep_12Apr2018_94X_mc2017_realistic_v14_ext1-v1/MINIAODSIM',

#Signal eejj #31
#'/HavyCompositeMajoranaNeutrino_L4000_M500_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L4000_M1000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L4000_M2000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L4000_M3000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L4000_M4000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L5000_M500_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L5000_M1000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L5000_M2000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L5000_M3000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L5000_M4000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L5000_M5000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L6000_M500_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L6000_M1000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L6000_M2000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L6000_M3000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L6000_M4000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L6000_M5000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L6000_M6000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L7000_M500_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M1000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L7000_M2000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L7000_M3000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L7000_M4000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L7000_M5000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M6000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M7000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L9000_M500_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L9000_M1000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M2000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L9000_M4000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L9000_M6000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L9000_M9000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L11000_M1000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L11000_M2000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M4000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M7000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L13000_M500_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L13000_M1000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M2000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M5000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L13000_M8000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L15000_M500_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L15000_M2000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L15000_M6000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L17000_M500_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L17000_M1000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L17000_M2000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L17000_M7000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L20000_M500_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
'/HavyCompositeMajoranaNeutrino_L20000_M2000_eejj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM'

#Signal mumujj #26
#'/HavyCompositeMajoranaNeutrino_L4000_M500_mumujj_CalcHep_New/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v2/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L4000_M1000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L4000_M2000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L4000_M3000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L4000_M4000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L5000_M500_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L5000_M1000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L5000_M2000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L5000_M3000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L5000_M4000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L5000_M5000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L6000_M500_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L6000_M1000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L6000_M2000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L6000_M3000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v3/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L6000_M4000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L6000_M5000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M6000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L7000_M500_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L7000_M1000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L7000_M2000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L7000_M3000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L7000_M4000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L7000_M5000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L7000_M6000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L7000_M7000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L9000_M500_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L9000_M1000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L9000_M2000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L9000_M4000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v2/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L9000_M6000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L9000_M9000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L11000_M500_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L11000_M1000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L11000_M2000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M4000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L11000_M7000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L13000_M500_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L13000_M1000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L13000_M2000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L13000_M5000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L13000_M8000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L15000_M500_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L15000_M1000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L15000_M2000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L15000_M6000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L17000_M2000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L17000_M1000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L17000_M7000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L20000_M500_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L20000_M1000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L20000_M2000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
#'/HavyCompositeMajoranaNeutrino_L20000_M8000_mumujj_CalcHep/RunIIFall17MiniAODv2-PU2017_12Apr2018_94X_mc2017_realistic_v14-v1/MINIAODSIM',
                ]

for d in range(0,len(datasetnames)):
#for d in [17,24]:
    print 'multicrab.py: Running datasetname: ', datasetnames[d]

    config.section_('General')
    config.General.requestName = datasetnames[d]
    config.General.workArea    = datasetnames[d]
    config.General.transferLogs = True

    config.section_('JobType')
    config.JobType.pluginName  = 'Analysis'
    # List of parameters to pass to CMSSW parameter-set configuration file:
    config.JobType.psetName    = '/afs/cern.ch/user/v/vmariani/CMSSW_9_4_9_cand2/src/BSMFramework/BSM3G_TNT_Maker/python/miniAOD_MC2017.py'
    config.JobType.sendExternalFolder = True
    config.JobType.maxMemoryMB = 2000 # Default == 2Gb : maximum guaranteed to run on all sites
    #config.JobType.allowUndistributedCMSSW = True
    ofParam = 'ofName=' + datasetnames[d]
    config.JobType.pyCfgParams = [ofParam]
    config.section_('Data')
    config.Data.allowNonValidInputDataset = True
    config.Data.inputDataset   = datasetinputs[d]
    config.Data.inputDBS       = 'global'
    config.Data.splitting      = 'FileBased'
    config.Data.totalUnits     = 40000 #With 'FileBased' splitting tells how many files to analyse
    config.Data.unitsPerJob    = 1
    config.Data.outputDatasetTag = datasetnames[d]

    #config.Data.publication = True

    config.section_('Site')
    config.Site.storageSite    = 'T2_IT_Bari'#'T2_CH_CERN' # Site to which output is permenantly copied by crab3
    print 'multicrab.py: Submitting Jobs'
    submit(config)
