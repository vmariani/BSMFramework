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
#'Summer16V3_TT', 
#'Summer16V3_ST',
#'Summer16V3_SaT',
#'Summer16V3_ZZ_1',
#'Summer16V3_ZZ_2',
#'Summer16V3_WZ_1',
#'Summer16V3_WZ_2',
#'Summer16V3_WW_1',
#'Summer16V3_WW_2',
#'Summer16V3_WJetsHT70To100',
#'Summer16V3_WJetsHT100To200_1',
#'Summer16V3_WJetsHT100To200_2',
#'Summer16V3_WJetsHT100To200_3',
#'Summer16V3_WJetsHT200To400_1',
#'Summer16V3_WJetsHT200To400_2',
#'Summer16V3_WJetsHT200To400_3',
#'Summer16V3_WJetsHT400To600_1',
#'Summer16V3_WJetsHT400To600_2',
#'Summer16V3_WJetsHT600To800_1',
#'Summer16V3_WJetsHT600To800_2',
#'Summer16V3_WJetsHT800To1200_1',
#'Summer16V3_WJetsHT800To1200_2',
#'Summer16V3_WJetsHT1200To2500_1',
#'Summer16V3_WJetsHT1200To2500_2',
#'Summer16V3_WJetsHT2500ToInf_1',
#'Summer16V3_WJetsHT2500ToInf_2', 
#'Summer16V3_WJets_1',
#'Summer16V3_WJets_2',
#'Summer16V3_DY_1',
#'Summer16V3_DY_2',


#Signal mumujj
#'mumujj_16_L4_M500',
#'mumujj_16_L4_M1000',
#'mumujj_16_L4_M2000',
#'mumujj_16_L4_M3000',
#'mumujj_16_L4_M4000',
#'mumujj_16_L5_M500',
#'mumujj_16_L5_M1000',
#'mumujj_16_L5_M2000',
#'mumujj_16_L5_M3000',
#'mumujj_16_L5_M4000',
#'mumujj_16_L5_M5000',
#'mumujj_16_L6_M500',
#'mumujj_16_L6_M1000',
#'mumujj_16_L6_M2000',
#'mumujj_16_L6_M3000',
#'mumujj_16_L6_M4000',
#'mumujj_16_L6_M5000',
#'mumujj_16_L6_M6000',
#'mumujj_16_L7_M500',
#'mumujj_16_L7_M1000',
#'mumujj_16_L7_M2000',
#'mumujj_16_L7_M3000',
#'mumujj_16_L7_M4000',
#'mumujj_16_L7_M5000',
#'mumujj_16_L7_M6000',
#'mumujj_16_L7_M7000',
#'mumujj_16_L9_M500',
#'mumujj_16_L9_M1000',
#'mumujj_16_L9_M2000',
#'mumujj_16_L9_M4000',
#'mumujj_16_L9_M6000',
#'mumujj_16_L9_M9000',
#'mumujj_16_L11_M500',
#'mumujj_16_L11_M1000',
#'mumujj_16_L11_M2000',
#'mumujj_16_L11_M4000',
#'mumujj_16_L11_M7000',
#'mumujj_16_L13_M500',
#'mumujj_16_L13_M1000',
#'mumujj_16_L13_M2000',
#'mumujj_16_L13_M5000',
#'mumujj_16_L13_M8000',
#'mumujj_16_L15_M500',
#'mumujj_16_L15_M1000',
#'mumujj_16_L15_M2000',
#'mumujj_16_L15_M6000',
#'mumujj_16_L17_M500',
#'mumujj_16_L17_M1000',
#'mumujj_16_L17_M2000',
#'mumujj_16_L17_M7000',
#'mumujj_16_L20_M1000',
#'mumujj_16_L20_M2000',
#'mumujj_16_L20_M8000',

#Signal eejj 
#'eejj_16_L4_M500',
#'eejj_16_L4_M1000',
#'eejj_16_L4_M2000',
#'eejj_16_L4_M3000',
#'eejj_16_L4_M4000',
#'eejj_16_L5_M500',
#'eejj_16_L5_M1000',
#'eejj_16_L5_M2000',
#'eejj_16_L5_M3000',
#'eejj_16_L5_M4000',
#'eejj_16_L5_M5000',
#'eejj_16_L6_M500',
#'eejj_16_L6_M1000',
#'eejj_16_L6_M2000',
#'eejj_16_L6_M3000',
#'eejj_16_L6_M4000',
'eejj_16_L6_M5000',
#'eejj_16_L6_M6000',
#'eejj_16_L7_M500',
#'eejj_16_L7_M1000',
#'eejj_16_L7_M2000',
#'eejj_16_L7_M3000',
#'eejj_16_L7_M4000',
#'eejj_16_L7_M5000',
'eejj_16_L7_M6000',
'eejj_16_L7_M7000',
#'eejj_16_L9_M500',
#'eejj_16_L9_M1000',
#'eejj_16_L9_M2000',
#'eejj_16_L9_M4000',
#'eejj_16_L9_M6000',
#'eejj_16_L9_M9000',
#'eejj_16_L11_M1000',
#'eejj_16_L11_M2000',
#'eejj_16_L11_M4000',
#'eejj_16_L11_M7000',
#'eejj_16_L13_M500',
#'eejj_16_L13_M1000',
#'eejj_16_L13_M2000',
#'eejj_16_L13_M5000',
#'eejj_16_L13_M8000',
#'eejj_16_L15_M500',
#'eejj_16_L15_M2000',
#'eejj_16_L15_M6000',
#'eejj_16_L17_M500',
#'eejj_16_L17_M1000',
#'eejj_16_L17_M2000',
#'eejj_16_L17_M7000',
#'eejj_16_L20_M500',
#'eejj_16_L20_M2000',
                 ]
 datasetinputs = [
#'/TT_TuneCUETP8M2T4_13TeV-powheg-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/ST_tW_top_5f_inclusiveDecays_13TeV-powheg-pythia8_TuneCUETP8M1/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext1-v1/MINIAODSIM',
#'/ST_tW_antitop_5f_inclusiveDecays_13TeV-powheg-pythia8_TuneCUETP8M1/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext1-v1/MINIAODSIM',
#'/ZZ_TuneCUETP8M1_13TeV-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext1-v2/MINIAODSIM',
#'/ZZ_TuneCUETP8M1_13TeV-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v2/MINIAODSIM',
#'/WZ_TuneCUETP8M1_13TeV-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v2/MINIAODSIM',
#'/WZ_TuneCUETP8M1_13TeV-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext1-v2/MINIAODSIM',
#'/WW_TuneCUETP8M1_13TeV-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v2/MINIAODSIM',
#'/WW_TuneCUETP8M1_13TeV-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext1-v2/MINIAODSIM',
#'/WJetsToLNu_HT-70To100_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v2/MINIAODSIM',
#'/WJetsToLNu_HT-100To200_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v2/MINIAODSIM',
#'/WJetsToLNu_HT-100To200_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext2-v2/MINIAODSIM',
#'/WJetsToLNu_HT-100To200_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext1-v2/MINIAODSIM',
#'/WJetsToLNu_HT-200To400_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v2/MINIAODSIM',
#'/WJetsToLNu_HT-200To400_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext1-v2/MINIAODSIM',
#'/WJetsToLNu_HT-200To400_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext2-v2/MINIAODSIM',
#'/WJetsToLNu_HT-400To600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v2/MINIAODSIM',
#'/WJetsToLNu_HT-400To600_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext1-v2/MINIAODSIM',
#'/WJetsToLNu_HT-600To800_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v2/MINIAODSIM',
#'/WJetsToLNu_HT-600To800_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext1-v2/MINIAODSIM',
#'/WJetsToLNu_HT-800To1200_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v2/MINIAODSIM',
#'/WJetsToLNu_HT-800To1200_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext1-v2/MINIAODSIM',
#'/WJetsToLNu_HT-1200To2500_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v2/MINIAODSIM',
#'/WJetsToLNu_HT-1200To2500_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext1-v2/MINIAODSIM',
#'/WJetsToLNu_HT-2500ToInf_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v2/MINIAODSIM',
#'/WJetsToLNu_HT-2500ToInf_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext1-v2/MINIAODSIM',
#'/WJetsToLNu_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v2/MINIAODSIM',
#'/WJetsToLNu_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext2-v2/MINIAODSIM',
#'/DYJetsToLL_M-50_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext1-v2/MINIAODSIM',
#'/DYJetsToLL_M-50_TuneCUETP8M1_13TeV-madgraphMLM-pythia8/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3_ext2-v2/MINIAODSIM',



#'/HeavyCompositeMajoranaNeutrino_L4000_M500_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L4000_M1000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L4000_M2000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L4000_M3000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L4000_M4000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M500_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M1000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M2000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M3000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M4000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M5000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M500_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M2000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M1000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M3000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M4000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
'/HeavyCompositeMajoranaNeutrino_L6000_M5000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M6000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M500_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M1000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M2000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M3000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M4000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M5000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
'/HeavyCompositeMajoranaNeutrino_L7000_M6000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
'/HeavyCompositeMajoranaNeutrino_L7000_M7000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M500_eejj_CalcHep_2019/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M1000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M2000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M4000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M6000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M9000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M1000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M2000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M4000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M7000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M500_eejj_CalcHep_2019/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M1000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M2000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M5000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M8000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L15000_M500_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L15000_M2000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L15000_M6000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M500_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M1000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M2000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M7000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L20000_M500_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L20000_M2000_eejj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',

#mumu
#'/HeavyCompositeMajoranaNeutrino_L4000_M500_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L4000_M1000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L4000_M2000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L4000_M3000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L4000_M4000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M500_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M1000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M2000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M3000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M4000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L5000_M5000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M500_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M1000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M2000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M3000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M4000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M5000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L6000_M6000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M500_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M1000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M2000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M3000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M4000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M5000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M6000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L7000_M7000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M500_mumujj_CalcHep_2019/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M1000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M2000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M4000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M6000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L9000_M9000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M500_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M1000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M2000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M4000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L11000_M7000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M500_mumujj_CalcHep_2019/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M1000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M2000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M5000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L13000_M8000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L15000_M500_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L15000_M1000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L15000_M2000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L15000_M6000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M500_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M1000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M2000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L17000_M7000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L20000_M1000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L20000_M2000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
#'/HeavyCompositeMajoranaNeutrino_L20000_M8000_mumujj_CalcHep/RunIISummer16MiniAODv3-PUMoriond17_94X_mcRun2_asymptotic_v3-v1/MINIAODSIM',
                ]

for d in range(0, len(datasetnames)): 
#range(0,len(datasetnames)):
#for d in range(0,38):
    print 'multicrab.py: Running datasetname: ', datasetnames[d]

    config.section_('General')
    config.General.requestName = datasetnames[d]
    config.General.workArea    = datasetnames[d]
    config.General.transferLogs = True

    config.section_('JobType')
    config.JobType.pluginName  = 'Analysis'
    # List of parameters to pass to CMSSW parameter-set configuration file:
    config.JobType.psetName    = '/afs/cern.ch/user/v/vmariani/CMSSW_9_4_10/src/BSMFramework/BSM3G_TNT_Maker/python/miniAOD_MC2016.py'
    config.JobType.sendExternalFolder = True
    config.JobType.maxMemoryMB = 2000 # Default == 2Gb : maximum guaranteed to run on all sites
    #config.JobType.allowUndistributedCMSSW = True
    ofParam = 'ofName=' + datasetnames[d]
    config.JobType.pyCfgParams = [ofParam]
    config.section_('Data')
    config.Data.allowNonValidInputDataset = True
    config.Data.inputDataset   = datasetinputs[d]
    config.JobType.inputFiles   = ['/afs/cern.ch/user/v/vmariani/CMSSW_9_4_10/src/BSMFramework/BSM3G_TNT_Maker/data/L1Prefire/L1PrefiringMaps_new.root']
    config.Data.inputDBS       = 'global'
    config.Data.splitting      = 'FileBased'
#    config.Data.totalUnits     = 40000 
    config.Data.unitsPerJob    = 1
    config.Data.outputDatasetTag = datasetnames[d]

    #config.Data.publication = True

    config.section_('Site')
    config.Site.storageSite    = 'T2_IT_Bari'
    print 'multicrab.py: Submitting Jobs'
    submit(config)
