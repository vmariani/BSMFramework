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

#'Autumn18_TT', #32
#'Autumn18_ST',
#'Autumn18_SaT',
#'Autumn18_ZZ',
#'Autumn18_WZ',
#'Autumn18_WW',
#'Autumn18_WJetsHT70To100',
#'Autumn18_WJetsHT100To200',
#'Autumn18_WJetsHT200To400',
#'Autumn18_WJetsHT400To600',
#'Autumn18_WJetsHT600To800',
#'Autumn18_WJetsHT800To1200',
#'Autumn18_WJetsHT1200To2500',
#'Autumn18_WJetsHT2500ToInf',
#'Autumn18_WJets_',
#'Autumn18_DY',

#Signal mumu
#'mumujj_18_L4_M1000',
#'mumujj_18_L4_M2000',
#'mumujj_18_L4_M3000',
#'mumujj_18_L5_M500',
#'mumujj_18_L5_M1000',
#'mumujj_18_L5_M2000',
#'mumujj_18_L5_M4000',
#'mumujj_18_L5_M3000',
#'mumujj_18_L5_M5000',
#'mumujj_18_L6_M500',
#'mumujj_18_L6_M1000',
#'mumujj_18_L6_M2000',
#'mumujj_18_L6_M3000',
#'mumujj_18_L6_M4000',
#'mumujj_18_L6_M5000',
#'mumujj_18_L6_M6000',
#'mumujj_18_L7_M500',
#'mumujj_18_L7_M1000',
#'mumujj_18_L7_M2000',
#'mumujj_18_L7_M3000',
#'mumujj_18_L7_M4000',
#'mumujj_18_L7_M5000',
#'mumujj_18_L7_M6000',
#'mumujj_18_L7_M7000',
#'mumujj_18_L9_M500',
#'mumujj_18_L9_M1000',
#'mumujj_18_L9_M2000',
#'mumujj_18_L9_M4000',
#'mumujj_18_L9_M6000',
#'mumujj_18_L9_M9000',
#'mumujj_18_L11_M500',
#'mumujj_18_L11_M1000',
#'mumujj_18_L11_M2000',
#'mumujj_18_L11_M4000',
#'mumujj_18_L11_M7000',
#'mumujj_18_L13_M500',
#'mumujj_18_L13_M1000',
#'mumujj_18_L13_M2000',
#'mumujj_18_L13_M5000',
#'mumujj_18_L13_M8000',
#'mumujj_18_L15_M500',
#'mumujj_18_L15_M1000',
#'mumujj_18_L15_M2000',
#'mumujj_18_L15_M6000',
#'mumujj_18_L17_M500',
#'mumujj_18_L17_M1000',
#'mumujj_18_L17_M2000',
#'mumujj_18_L17_M7000',
#'mumujj_18_L20_M1000',
#'mumujj_18_L20_M2000',
#'mumujj_18_L20_M8000',

#Signal ee
#'eejj_18_L4_M500',
#'eejj_18_L4_M1000',
#'eejj_18_L4_M2000',
#'eejj_18_L4_M3000',
#'eejj_18_L4_M4000',
#'eejj_18_L5_M500',
#'eejj_18_L5_M1000',
#'eejj_18_L5_M2000',
#'eejj_18_L5_M3000',
#'eejj_18_L5_M4000',
#'eejj_18_L5_M5000',
#'eejj_18_L6_M500',
#'eejj_18_L6_M1000',
#'eejj_18_L6_M2000',
#'eejj_18_L6_M3000',
#'eejj_18_L6_M4000',
#'eejj_18_L6_M5000',
#'eejj_18_L6_M6000',
#'eejj_18_L7_M500',
#'eejj_18_L7_M1000',
#'eejj_18_L7_M2000',
#'eejj_18_L7_M3000',
#'eejj_18_L7_M4000',
#'eejj_18_L7_M5000',
#'eejj_18_L7_M6000',
#'eejj_18_L7_M7000',
#'eejj_18_L9_M500',
#'eejj_18_L9_M1000',
#'eejj_18_L9_M2000',
#'eejj_18_L9_M4000',
#'eejj_18_L9_M6000',
#'eejj_18_L11_M1000',
#'eejj_18_L11_M2000',
#'eejj_18_L11_M4000',
#'eejj_18_L11_M7000',
#'eejj_18_L13_M500',
#'eejj_18_L13_M1000',
#'eejj_18_L13_M2000',
#'eejj_18_L13_M5000',
'eejj_18_L13_M8000',
#'eejj_18_L15_M500',
#'eejj_18_L15_M2000',
#'eejj_18_L15_M6000',
#'eejj_18_L17_M500',
#'eejj_18_L17_M1000',
#'eejj_18_L17_M2000',
#'eejj_18_L17_M7000',
#'eejj_18_L20_M500',
#'eejj_18_L20_M2000',
                 ]
 datasetinputs = [
#'/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/ST_tW_top_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v1/MINIAODSIM',
#'/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15_ext1-v1/MINIAODSIM',
#'/ZZ_TuneCP5_13TeV-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
#'/WZ_TuneCP5_13TeV-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v3/MINIAODSIM',
#'/WW_TuneCP5_13TeV-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
#'/WJetsToLNu_HT-70To100_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/WJetsToLNu_HT-100To200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/WJetsToLNu_HT-200To400_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/WJetsToLNu_HT-400To600_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/WJetsToLNu_HT-600To800_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/WJetsToLNu_HT-800To1200_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/WJetsToLNu_HT-1200To2500_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/WJetsToLNu_HT-2500ToInf_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
#'/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',


#signal mumu
#'/HeavyCompositeMajoranaNeutrino_L4000_M1000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L4000_M2000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L4000_M3000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M500_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M1000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M2000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M3000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M4000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M5000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M500_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M1000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M2000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M3000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M4000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M5000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M6000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M500_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M1000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M2000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M3000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M4000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M5000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M6000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M7000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M500_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M1000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M2000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M4000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M6000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M9000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M500_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M1000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M2000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M4000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M7000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M500_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M1000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M2000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M5000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M8000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L15000_M500_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L15000_M1000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L15000_M2000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L15000_M6000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M500_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M1000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v2/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M2000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M7000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L20000_M1000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L20000_M2000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L20000_M8000_mumujj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',


#Signal ee
#'/HeavyCompositeMajoranaNeutrino_L4000_M500_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L4000_M1000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L4000_M2000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L4000_M3000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L4000_M4000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M500_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M1000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M2000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M3000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M4000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M5000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M500_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M1000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M2000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M3000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M4000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M5000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M6000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M500_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M1000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M2000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M3000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M4000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M5000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M6000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M7000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M500_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M1000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M2000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M4000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M6000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M1000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M2000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M4000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M7000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M500_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M1000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M2000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M5000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
'/HeavyCompositeMajoranaNeutrino_L13000_M8000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L15000_M500_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L15000_M2000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L15000_M6000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M500_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M1000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M2000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M7000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L20000_M500_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L20000_M2000_eejj_CalcHep/RunIIAutumn18MiniAOD-102X_upgrade2018_realistic_v15-v1/MINIAODSIM',
                ]

for d in range(0,len(datasetnames)):
#for d in [1]:
    print 'multicrab.py: Running datasetname: ', datasetnames[d]

    config.section_('General')
    config.General.requestName = datasetnames[d]
    config.General.workArea    = datasetnames[d]
    config.General.transferLogs = True

    config.section_('JobType')
    config.JobType.pluginName  = 'Analysis'
    # List of parameters to pass to CMSSW parameter-set configuration file:
    config.JobType.psetName    = '/afs/cern.ch/user/v/vmariani/test2/CMSSW_10_2_10/src/BSMFramework/BSM3G_TNT_Maker/python/miniAOD_MC2018.py'
    config.JobType.inputFiles = ['/afs/cern.ch/user/v/vmariani/test2/CMSSW_10_2_10/src/BSMFramework/BSM3G_TNT_Maker/data/QG/QGL_AK4chs_94X.db']
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
    config.Data.totalUnits     = 30000 #With 'FileBased' splitting tells how many files to analyse
    config.Data.unitsPerJob    = 1
    config.Data.ignoreLocality = True
    config.Site.whitelist=['T2_IT_*']
    config.Data.outputDatasetTag = datasetnames[d]

    #config.Data.publication = True

    config.section_('Site')
    config.Site.storageSite    = 'T2_IT_Bari'#'T2_CH_CERN' # Site to which output is permenantly copied by crab3
    print 'multicrab.py: Submitting Jobs'
    submit(config)
