#ifndef __EVENTINFO_HE_H_ 
#define __EVENTINFO_HE_H_
/////
//   Include files and namespaces
/////
#include <memory>
#include "FWCore/Framework/interface/Frameworkfwd.h"
#include "FWCore/Framework/interface/EDAnalyzer.h"
#include "FWCore/Framework/interface/Event.h"
#include "FWCore/Framework/interface/MakerMacros.h"
#include "FWCore/ParameterSet/interface/ParameterSet.h"
#include "FWCore/ServiceRegistry/interface/Service.h"
#include "CommonTools/UtilAlgos/interface/TFileService.h"
#include "Geometry/Records/interface/GlobalTrackingGeometryRecord.h"   
#include "DataFormats/PatCandidates/interface/Tau.h"
#include "DataFormats/PatCandidates/interface/Muon.h"
#include "DataFormats/PatCandidates/interface/Electron.h"
#include "DataFormats/PatCandidates/interface/Jet.h"
#include "DataFormats/PatCandidates/interface/MET.h"
#include "DataFormats/PatCandidates/interface/CompositeCandidate.h"
#include "DataFormats/Math/interface/LorentzVector.h"
#include "DataFormats/Math/interface/LorentzVectorFwd.h"
#include "DataFormats/JetReco/interface/GenJetCollection.h"
#include "DataFormats/JetReco/interface/GenJet.h"
#include "DataFormats/PatCandidates/interface/Isolation.h"
#include "DataFormats/Math/interface/deltaR.h"
#include "DataFormats/Math/interface/normalizedPhi.h"
#include "DataFormats/TauReco/interface/PFTau.h"
#include "DataFormats/TauReco/interface/PFTauDiscriminator.h"
#include "DataFormats/MuonReco/interface/MuonSelectors.h"
#include "DataFormats/Common/interface/RefVector.h"
#include "DataFormats/HepMCCandidate/interface/GenParticle.h"
#include "DataFormats/Candidate/interface/Candidate.h"
#include "DataFormats/Common/interface/Ref.h"
#include "DataFormats/Common/interface/ValueMap.h"
#include "DataFormats/VertexReco/interface/Vertex.h"
#include "DataFormats/VertexReco/interface/VertexFwd.h"
#include "FWCore/Common/interface/TriggerNames.h"
#include "CLHEP/Random/RandGauss.h"
#include "CommonTools/CandUtils/interface/Booster.h"
#include "DataFormats/METReco/interface/GenMET.h"
#include "DataFormats/METReco/interface/GenMETCollection.h"
#include <Math/VectorUtil.h>
#include "DataFormats/HLTReco/interface/TriggerObject.h"
#include "DataFormats/HLTReco/interface/TriggerEvent.h"
#include "DataFormats/Common/interface/Handle.h"
#include "DataFormats/TrackReco/interface/Track.h"
#include "DataFormats/TrackReco/interface/HitPattern.h"
#include "TrackingTools/TransientTrack/interface/TrackTransientTrack.h"
#include "TrackingTools/TransientTrack/interface/TransientTrackBuilder.h"
#include "TrackingTools/Records/interface/TransientTrackRecord.h"
#include "CLHEP/Units/GlobalPhysicalConstants.h"
#include "CommonTools/Statistics/interface/ChiSquaredProbability.h"
#include "CondFormats/JetMETObjects/interface/FactorizedJetCorrector.h"
#include "CondFormats/JetMETObjects/interface/JetCorrectionUncertainty.h"
#include "JetMETCorrections/Objects/interface/JetCorrectionsRecord.h"
#include "CondFormats/JetMETObjects/interface/JetCorrectorParameters.h"
#include "DataFormats/ParticleFlowCandidate/interface/PFCandidate.h"
#include "DataFormats/ParticleFlowCandidate/interface/PFCandidateFwd.h"
#include "DataFormats/Common/interface/ValueMap.h"
#include "CommonTools/ParticleFlow/test/PFIsoReaderDemo.h"
#include "FWCore/Utilities/interface/Exception.h"
#include "DataFormats/JetReco/interface/PFJet.h"
#include "DataFormats/JetReco/interface/PFJetCollection.h"
#include "CondFormats/JetMETObjects/interface/JetCorrectionUncertainty.h"
#include "CondFormats/JetMETObjects/interface/JetCorrectorParameters.h"
#include "JetMETCorrections/Objects/interface/JetCorrector.h"
#include "JetMETCorrections/Objects/interface/JetCorrectionsRecord.h"
#include "DataFormats/MuonReco/interface/MuonFwd.h"
#include "FWCore/Framework/interface/ESHandle.h"
#include "boost/regex.hpp"
#include "SimDataFormats/PileupSummaryInfo/interface/PileupSummaryInfo.h"
#include "PhysicsTools/JetMCUtils/interface/JetMCTag.h"
#include "SimDataFormats/GeneratorProducts/interface/HepMCProduct.h"
#include "SimDataFormats/GeneratorProducts/interface/GenEventInfoProduct.h"
#include "SimDataFormats/GeneratorProducts/interface/GenRunInfoProduct.h"
#include "FWCore/Framework/interface/ConsumesCollector.h"
#include "SimDataFormats/GeneratorProducts/interface/LHEEventProduct.h"
#include "SimDataFormats/GeneratorProducts/interface/LHERunInfoProduct.h"
#include "GeneratorInterface/LHEInterface/interface/LHEEvent.h"
#include "SimDataFormats/GeneratorProducts/interface/PdfInfo.h"
#include "LHAPDF/LHAPDF.h"
#include <TH1.h>
#include <TH2.h>
#include <TFile.h>
#include <TProfile.h>
#include <TTree.h>
#include <string>
#include <vector>
#include <map>
#include <sstream>
#include <stdio.h>
#include <stdlib.h>
#include "baseTree.h"
#include <TRandom3.h>
#include <TBranch.h>
#include "TTree.h"
#include "TLorentzVector.h"
#include "TClonesArray.h"
using namespace std;
using namespace edm;
using namespace reco;
using namespace pat;
/////
//   Class declaration
/////
class EventInfoSelector : public baseTree{
 public:
  EventInfoSelector(std::string name, TTree* tree, bool debug, const edm::ParameterSet& cfg, edm::ConsumesCollector && iC);
  ~EventInfoSelector();
  void Fill(const edm::Event& iEvent);
  void SetBranches();
 private:
  EventInfoSelector(){};
  edm::EDGetTokenT<GenEventInfoProduct> genEvtInfo_;
  edm::EDGetTokenT<LHEEventProduct>     lheEventProduct_;
  edm::EDGetTokenT<double> rhopogHandle_;
  edm::EDGetTokenT<double> rhotthHandle_;
  edm::EDGetTokenT<double> fixedGridRhoFastjetCentralHandle_;
  edm::EDGetTokenT<double> fixedGridRhoFastjetCentralChargedPileUpHandle_;
  edm::EDGetTokenT<double> fixedGridRhoFastjetCentralNeutralHandle_;
  edm::EDGetTokenT< double > prefweight_token;
  edm::EDGetTokenT< double > prefweightup_token;
  edm::EDGetTokenT< double > prefweightdown_token;
  edm::EDGetTokenT<edm::TriggerResults> metFilterBits_;
  edm::EDGetTokenT< bool >ecalBadCalibFilterUpdate_token ;
  void Initialise();
  //Event quantities
  uint64_t EVENT_event_;
  //int EVENT_event_,  // we save it as int but we really should save it as uint64_t, otherwise some event number is negative in branch, 20181024
  int EVENT_run_, EVENT_lumiBlock_;
  double EVENT_genWeight_, EVENT_genHT, EVENT_genPt;
  bool _is_data; 
  int  _dataEra; // which year?
  double EVENT_rhopog_, EVENT_rhotth_; 
  double EVENT_originalXWGTUP_, EVENT_scalePDF_;
  double EVENT_rWeightSUM_;
  double EVENT_Q2tthbbWeightUp_, EVENT_Q2tthbbWeightDown_;
  vector<double> EVENT_genWeights_;
  vector<double> EVENT_psWeights_;
  vector<double> EVENT_rWeights_;
  double EVENT_fixedGridRhoFastjetCentral, EVENT_fixedGridRhoFastjetCentralChargedPileUp, EVENT_fixedGridRhoFastjetCentralNeutral;
  // L1 prefiring weights
  double EVENT_prefireWeight_, EVENT_prefireWeightUp_, EVENT_prefireWeightDown_;
  // lhe higgs
  int n_lhe_higgs;
  vector<double> lhe_higgs_pt;
  vector<double> lhe_higgs_eta;
  vector<double> lhe_higgs_phi;
  vector<double> lhe_higgs_energy;
  //Event filters
  int Flag_HBHENoiseFilter;
  int Flag_HBHENoiseIsoFilter;
  int Flag_CSCTightHaloFilter;
  int Flag_CSCTightHaloTrkMuUnvetoFilter;
  int Flag_CSCTightHalo2015Filter;
  int Flag_HcalStripHaloFilter;
  int Flag_hcalLaserEventFilter;
  int Flag_EcalDeadCellTriggerPrimitiveFilter;
  int Flag_EcalDeadCellBoundaryEnergyFilter;
  int Flag_goodVertices;
  int Flag_eeBadScFilter;
  int Flag_ecalLaserCorrFilter;
  int Flag_trkPOGFilters;
  int Flag_chargedHadronTrackResolutionFilter;
  int Flag_muonBadTrackFilter;
  int Flag_trkPOG_manystripclus53X;
  int Flag_trkPOG_toomanystripclus53X;
  int Flag_trkPOG_logErrorTooManyClusters;
  int Flag_METFilters;
  int Flag_globalSuperTightHalo2016Filter;
  int Flag_BadPFMuonFilter;
  int Flag_BadChargedCandidateFilter;
  int Flag_ecalBadCalibFilter;
  // six pdfSet are used in nanoAOD
  // https://github.com/cms-sw/cmssw/blob/master/PhysicsTools/NanoAOD/python/nano_cff.py#L98-L104
  // https://lhapdf.hepforge.org/pdfsets.html
  LHAPDF::PDFSet * read_PDFv1Set;
  LHAPDF::PDFSet *read_PDFv2Set;
  LHAPDF::PDFSet *read_PDFv3Set;
  LHAPDF::PDFSet *read_PDFv4Set;
  LHAPDF::PDFSet *read_PDFv5Set;
  LHAPDF::PDFSet *read_PDFv6Set;
  std::vector<LHAPDF::PDF*> _systv1PDFs, _systv2PDFs, _systv3PDFs,_systv4PDFs, _systv5PDFs, _systv6PDFs ;
  // PDF4LHC15_nnlo_30_pdfas
  double EVENT_PDFv1WeightUp_, EVENT_PDFv1WeightDown_, EVENT_PDFv1WeightCentral_, EVENT_PDFv1WeightMean_, EVENT_PDFv1WeightStdDev_;
  int EVENT_PDFv1_lhaid_;
  // NNPDF31_nnlo_hessian_pdfas 
  double EVENT_PDFv2WeightUp_, EVENT_PDFv2WeightDown_, EVENT_PDFv2WeightCentral_, EVENT_PDFv2WeightMean_, EVENT_PDFv2WeightStdDev_; 
  int EVENT_PDFv2_lhaid_;
  // NNPDF30_nlo_as_0118 
  double EVENT_PDFv3WeightUp_, EVENT_PDFv3WeightDown_, EVENT_PDFv3WeightCentral_, EVENT_PDFv3WeightMean_, EVENT_PDFv3WeightStdDev_;
  int EVENT_PDFv3_lhaid_;
  // NNPDF30_lo_as_0130 
  double EVENT_PDFv4WeightUp_, EVENT_PDFv4WeightDown_, EVENT_PDFv4WeightCentral_, EVENT_PDFv4WeightMean_, EVENT_PDFv4WeightStdDev_;
  int EVENT_PDFv4_lhaid_;
  // NNPDF30_nlo_nf_4_pdfas 
  double EVENT_PDFv5WeightUp_, EVENT_PDFv5WeightDown_, EVENT_PDFv5WeightCentral_, EVENT_PDFv5WeightMean_, EVENT_PDFv5WeightStdDev_;
  int EVENT_PDFv5_lhaid_;
  // NNPDF30_nlo_nf_5_pdfas 
  double EVENT_PDFv6WeightUp_, EVENT_PDFv6WeightDown_, EVENT_PDFv6WeightCentral_, EVENT_PDFv6WeightMean_, EVENT_PDFv6WeightStdDev_;
  int EVENT_PDFv6_lhaid_;
  // calculate central and stdDev
  void get_PDFUnc(LHAPDF::PDFSet *Read_PDFSet, std::vector<LHAPDF::PDF*> _SystPDFs, double scalePDF, int firstid, double x1, int secondid, double x2, double& central, double& WeightUp, double& WeightDown, int& lhaID, double &mean, double & stdDev);
  void get_stDev(const vector<double>& pdfs, double & mean, double & stdDev ); 
};
#endif
