{

////////// PRIMA PARTE PER CONFIG HISTO IN CMS STYLE
  gROOT->Reset();
  gStyle->SetCanvasColor(0);
  gStyle->SetFrameBorderMode(0);
  gStyle->SetOptStat(0);
  gStyle->SetPalette(1,0);
  gStyle->SetTitleX(0.5); //title X location 
  gStyle->SetTitleY(0.96); //title Y location 
  gStyle->SetPaintTextFormat(".2f");

  TStyle *tdrStyle = new TStyle("tdrStyle","Style for P-TDR");

  // For the canvas:
  tdrStyle->SetCanvasBorderMode(0);
  tdrStyle->SetCanvasColor(kWhite);
  tdrStyle->SetCanvasDefH(600); //Height of canvas
  tdrStyle->SetCanvasDefW(600); //Width of canvas
  tdrStyle->SetCanvasDefX(0);   //POsition on screen
  tdrStyle->SetCanvasDefY(0);

  // For the Pad:
  tdrStyle->SetPadBorderMode(0);
  // tdrStyle->SetPadBorderSize(Width_t size = 1);
  tdrStyle->SetPadColor(kWhite);
  tdrStyle->SetPadGridX(false);
  tdrStyle->SetPadGridY(true);
  tdrStyle->SetGridColor(1);
  tdrStyle->SetGridStyle(3);
  tdrStyle->SetGridWidth(1);

  // For the frame:
  tdrStyle->SetFrameBorderMode(0);
  tdrStyle->SetFrameBorderSize(1);
  tdrStyle->SetFrameFillColor(0);
  tdrStyle->SetFrameFillStyle(0);
  tdrStyle->SetFrameLineColor(1);
  tdrStyle->SetFrameLineStyle(1);
  tdrStyle->SetFrameLineWidth(1);

  // For the histo:
  tdrStyle->SetHistFillColor(63);
  // tdrStyle->SetHistFillStyle(0);
  tdrStyle->SetHistLineColor(1);
  tdrStyle->SetHistLineStyle(0);
  tdrStyle->SetHistLineWidth(1);
  // tdrStyle->SetLegoInnerR(Float_t rad = 0.5);
  // tdrStyle->SetNumberContours(Int_t number = 20);

//  tdrStyle->SetEndErrorSize(0);
  tdrStyle->SetErrorX(0.);
//  tdrStyle->SetErrorMarker(20);
  
  tdrStyle->SetMarkerStyle(20);

  //For the fit/function:
  tdrStyle->SetOptFit(1);
  tdrStyle->SetFitFormat("5.4g");
  tdrStyle->SetFuncColor(2);
  tdrStyle->SetFuncStyle(1);
  tdrStyle->SetFuncWidth(1);

  //For the date:
  tdrStyle->SetOptDate(0);
  // tdrStyle->SetDateX(Float_t x = 0.01);
  // tdrStyle->SetDateY(Float_t y = 0.01);

  // For the statistics box:
  tdrStyle->SetOptFile(0);
  tdrStyle->SetOptStat(0); // To display the mean and RMS:   SetOptStat("mr");
  tdrStyle->SetStatColor(kWhite);
  tdrStyle->SetStatFont(42);
  tdrStyle->SetStatFontSize(0.025);
  tdrStyle->SetStatTextColor(1);
  tdrStyle->SetStatFormat("6.4g");
  tdrStyle->SetStatBorderSize(2);
  tdrStyle->SetStatH(0.1);
  tdrStyle->SetStatW(0.15);
  // tdrStyle->SetStatStyle(Style_t style = 1001);
  // tdrStyle->SetStatX(Float_t x = 0);
  // tdrStyle->SetStatY(Float_t y = 0);

  // Margins:
  tdrStyle->SetPadTopMargin(0.05);
  tdrStyle->SetPadBottomMargin(0.13);
  tdrStyle->SetPadLeftMargin(0.23);
  tdrStyle->SetPadRightMargin(0.05);

  // For the Global title:

  tdrStyle->SetOptTitle(0);
  tdrStyle->SetTitleFont(42);
  tdrStyle->SetTitleColor(1);
  tdrStyle->SetTitleTextColor(1);
  tdrStyle->SetTitleFillColor(10);
  tdrStyle->SetTitleFontSize(0.05);
  // tdrStyle->SetTitleH(0); // Set the height of the title box
  // tdrStyle->SetTitleW(0); // Set the width of the title box
  // tdrStyle->SetTitleX(0); // Set the position of the title box
  // tdrStyle->SetTitleY(0.985); // Set the position of the title box
  // tdrStyle->SetTitleStyle(Style_t style = 1001);
  // tdrStyle->SetTitleBorderSize(2);

  // For the axis titles:

  tdrStyle->SetTitleColor(1, "XYZ");
  tdrStyle->SetTitleFont(42, "XYZ");
  tdrStyle->SetTitleSize(0.06, "XYZ");
  // tdrStyle->SetTitleXSize(Float_t size = 0.02); // Another way to set the size?
  // tdrStyle->SetTitleYSize(Float_t size = 0.02);
  tdrStyle->SetTitleXOffset(0.9);
  tdrStyle->SetTitleYOffset(1.05);
  // tdrStyle->SetTitleOffset(1.1, "Y"); // Another way to set the Offset

  // For the axis labels:

  tdrStyle->SetLabelColor(1, "XYZ");
  tdrStyle->SetLabelFont(42, "XYZ");
  tdrStyle->SetLabelOffset(0.007, "XYZ");
  tdrStyle->SetLabelSize(0.05, "XYZ");

  // For the axis:

  tdrStyle->SetAxisColor(1, "XYZ");
  tdrStyle->SetStripDecimals(kTRUE);
  tdrStyle->SetTickLength(0.03, "XYZ");
  tdrStyle->SetNdivisions(510, "XYZ");
  tdrStyle->SetPadTickX(1);  // To get tick marks on the opposite side of the frame
  tdrStyle->SetPadTickY(1);

  // Change for log plots:
  tdrStyle->SetOptLogx(0);
  tdrStyle->SetOptLogy(0);
  tdrStyle->SetOptLogz(0);

  // Postscript options:
  // tdrStyle->SetPaperSize(15.,15.);
  // tdrStyle->SetLineScalePS(Float_t scale = 3);
  // tdrStyle->SetLineStyleString(Int_t i, const char* text);
  // tdrStyle->SetHeaderPS(const char* header);
  // tdrStyle->SetTitlePS(const char* pstitle);

  // tdrStyle->SetBarOffset(Float_t baroff = 0.5);
  // tdrStyle->SetBarWidth(Float_t barwidth = 0.5);
  // tdrStyle->SetPaintTextFormat(const char* format = "g");
  // tdrStyle->SetPalette(Int_t ncolors = 0, Int_t* colors = 0);
  // tdrStyle->SetTimeOffset(Double_t toffset);
  // tdrStyle->SetHistMinimumZero(kTRUE);

  tdrStyle->cd();


///////////////// FINE CONFIG



  using namespace std;
TH1F * gHisto ;

TFile *f00 = new TFile("HM_plot/HighMass_Selection_TTpST.root");
TFile *f01 = new TFile("HM_plot/HighMass_Selection_DY.root");
TFile *f02 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L5_M5000.root");
TFile *f03 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L6_M4000.root");
TFile *f04 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L6_M5000.root");
TFile *f05 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L6_M6000.root");
TFile *f06 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L7_M4000.root");
TFile *f07 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L7_M5000.root");
TFile *f08 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L7_M6000.root");
TFile *f09 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L7_M7000.root");
TFile *f10 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L9_M4000.root");
TFile *f11 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L9_M6000.root");
TFile *f12 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L9_M9000.root");
TFile *f13 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L11_M2000.root");
TFile *f14 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L11_M4000.root");
TFile *f15 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L11_M7000.root");
TFile *f16 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L13_M2000.root");
TFile *f17 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L13_M5000.root");
TFile *f18 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L13_M8000.root");
TFile *f19 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L17_M2000.root");
TFile *f20 = new TFile("HM_plot/HighMass_Selection_Sign_mumu_L20_M8000.root");

double bin = 5;
TString name = "JllJ_deltaR";
TH1F *da= (TH1F*) f00->Get(name);
TH1F *da1= (TH1F*) f01->Get(name);
TH1F *da2= (TH1F*) f02->Get(name);
TH1F *da3= (TH1F*) f03->Get(name);
TH1F *da4= (TH1F*) f04->Get(name);
TH1F *da5= (TH1F*) f05->Get(name);
TH1F *da6= (TH1F*) f06->Get(name);
TH1F *da7= (TH1F*) f07->Get(name);
TH1F *da8= (TH1F*) f08->Get(name);
TH1F *da9= (TH1F*) f09->Get(name);
TH1F *da10= (TH1F*) f10->Get(name);
TH1F *da11= (TH1F*) f11->Get(name);
TH1F *da12= (TH1F*) f12->Get(name);
TH1F *da13= (TH1F*) f13->Get(name);
TH1F *da14= (TH1F*) f14->Get(name);
TH1F *da15= (TH1F*) f15->Get(name);
TH1F *da16= (TH1F*) f16->Get(name);
TH1F *da17= (TH1F*) f17->Get(name);
TH1F *da18= (TH1F*) f18->Get(name);
TH1F *da19= (TH1F*) f19->Get(name);
TH1F *da20= (TH1F*) f20->Get(name);
TH1F *d= (TH1F*) da->Clone(); 
TH1F *d1= (TH1F*) da1->Clone();
TH1F *d2= (TH1F*) da2->Clone();
TH1F *d3= (TH1F*) da3->Clone();
TH1F *d4= (TH1F*) da4->Clone();
TH1F *d5= (TH1F*) da5->Clone();
TH1F *d6= (TH1F*) da6->Clone();
TH1F *d7= (TH1F*) da7->Clone();
TH1F *d8= (TH1F*) da8->Clone();
TH1F *d9= (TH1F*) da9->Clone();
TH1F *d10= (TH1F*) da10->Clone();
TH1F *d11= (TH1F*) da11->Clone();
TH1F *d12= (TH1F*) da12->Clone();
TH1F *d13= (TH1F*) da13->Clone();
TH1F *d14= (TH1F*) da14->Clone();
TH1F *d15= (TH1F*) da15->Clone();
TH1F *d16= (TH1F*) da16->Clone();
TH1F *d17= (TH1F*) da17->Clone();
TH1F *d18= (TH1F*) da18->Clone();
TH1F *d19= (TH1F*) da19->Clone();
TH1F *d20= (TH1F*) da20->Clone();

d->SetLineColor(kRed);
d->SetLineWidth(3);
d->SetLineStyle(1);
   
d1->SetLineColor(kYellow+2);
d1->SetLineWidth(2);
d1->SetLineStyle(1);	

d2->SetLineColor(kBlue);
d2->SetLineWidth(2);
d2->SetLineStyle(1);

d3->SetLineColor(kGreen);
d3->SetLineWidth(2);
d3->SetLineStyle(1);

d4->SetLineColor(kOrange);
d4->SetLineWidth(2);
d4->SetLineStyle(1);
    
d5->SetLineColor(kCyan);
d5->SetLineWidth(2);
d5->SetLineStyle(1);

d6->SetLineColor(kMagenta);
d6->SetLineWidth(3);
d6->SetLineStyle(1);

d7->SetLineColor(kOrange+3);
d7->SetLineWidth(3);
d7->SetLineStyle(1);

d8->SetLineColor(kGray);
d8->SetLineWidth(3);
d8->SetLineStyle(1);

d9->SetLineColor(kViolet-3);
d9->SetLineWidth(3);
d9->SetLineStyle(1);

d10->SetLineColor(kRed-9);
d10->SetLineWidth(3);
d10->SetLineStyle(1);

d11->SetLineColor(kYellow-2);
d11->SetLineWidth(3);
d11->SetLineStyle(1);

d12->SetLineColor(kGreen-1);
d12->SetLineWidth(3);
d12->SetLineStyle(1);

d13->SetLineColor(kBlue-9);
d13->SetLineWidth(3);
d13->SetLineStyle(1);

d14->SetLineColor(kOrange+7);
d14->SetLineWidth(3);
d14->SetLineStyle(1);

d15->SetLineColor(kCyan+2);
d15->SetLineWidth(3);
d15->SetLineStyle(1);

d16->SetLineColor(kViolet-7);
d16->SetLineWidth(3);
d16->SetLineStyle(1);

d17->SetLineColor(kAzure+1);
d16->SetLineWidth(3);
d17->SetLineStyle(1);

d18->SetLineColor(kTeal+1);
d18->SetLineWidth(3);
d18->SetLineStyle(1);

d19->SetLineColor(kRed+3);
d19->SetLineWidth(3);
d19->SetLineStyle(1);

d20->SetLineColor(kPink-9);
d20->SetLineWidth(3);
d20->SetLineStyle(1);

TCanvas* c1 = new TCanvas("c1","c1",0,0,800,600);
TPad *c1_1 = new TPad("c1_1", "newpad",0.01,0.01,0.99,0.99);
c1_1->Draw();
c1_1->cd();
c1_1->SetTopMargin(0.1);
c1_1->SetBottomMargin(0.15);
c1_1->SetRightMargin(0.02);
c1_1->SetLeftMargin(0.15);

d->GetXaxis()->SetTitleOffset(1.);
d->GetXaxis()->SetLabelSize(0.045);
d->GetXaxis()->SetTitleSize(0.06);
d->GetYaxis()->SetTitleOffset(1.2);
d->GetYaxis()->SetTitle("Events");
d->GetXaxis()->SetTitle("#DeltaR_{Jet,llJet}");
d->GetYaxis()->SetLabelSize(0.045);
d->GetYaxis()->SetTitleSize(0.06);
double bincontent = d->GetBinContent(0);

d->Sumw2();
double w = d->Integral();//GetEntries();
d->Scale(1./w);
d1->Sumw2();
double w1 = d1->Integral();//GetEntries();
d1->Scale(1./w1);
//d->SetMaximum(0.3);
d2->Sumw2();
double w2 = d2->Integral();//GetEntries();
d2->Scale(1./w2);
d3->Sumw2();
double w3 = d3->Integral();//GetEntries();
d3->Scale(1./w3);
d4->Sumw2();
double w4 = d4->Integral();//GetEntries();
d4->Scale(1./w4);
d5->Sumw2();
double w5 = d5->Integral();//GetEntries();
d5->Scale(1./w5);
d6->Sumw2();
double w6 = d6->Integral();
d6->Scale(1./w6);
d7->Sumw2();
double w7 = d7->Integral();
d7->Scale(1./w7);
d8->Sumw2();
double w8 = d8->Integral();
d8->Scale(1./w8);
d9->Sumw2();
double w9 = d9->Integral();
d9->Scale(1./w9);
d10->Sumw2();
double w10 = d10->Integral();
d10->Scale(1./w10);
d11->Sumw2();
double w11 = d11->Integral();
d11->Scale(1./w11);
d12->Sumw2();
double w12 = d12->Integral();
d12->Scale(1./w12);
d13->Sumw2();
double w13 = d13->Integral();
d13->Scale(1./w13);
d14->Sumw2();
double w14 = d14->Integral();
d14->Scale(1./w14);
d15->Sumw2();
double w15 = d15->Integral();
d15->Scale(1./w15);
d16->Sumw2();
double w16 = d16->Integral();
d16->Scale(1./w16);
d17->Sumw2();
double w17 = d17->Integral();
d17->Scale(1./w17);
d18->Sumw2();
double w18 = d18->Integral();
d18->Scale(1./w18);
d19->Sumw2();
double w19 = d19->Integral();
d19->Scale(1./w19);
d20->Sumw2();
double w20 = d20->Integral();
d20->Scale(1./w20);


d->Rebin(bin);
d1->Rebin(bin);
d2->Rebin(bin);
d3->Rebin(bin);
d4->Rebin(bin);
d5->Rebin(bin);
d6->Rebin(bin);
d7->Rebin(bin);
d8->Rebin(bin);
d9->Rebin(bin);
d10->Rebin(bin);
d11->Rebin(bin);
d12->Rebin(bin);
d13->Rebin(bin);
d14->Rebin(bin);
d15->Rebin(bin);
d16->Rebin(bin);
d17->Rebin(bin);
d18->Rebin(bin);
d19->Rebin(bin);
d20->Rebin(bin);

d->Draw("Ehist");
d1->Draw("Ehistsame");
d2->Draw("Ehistsame");
d3->Draw("Ehistsame");
d4->Draw("Ehistsame");
d5->Draw("Ehistsame");
//d6->Draw("Ehistsame");
d7->Draw("Ehistsame");
d8->Draw("Ehistsame");
d9->Draw("Ehistsame");
d10->Draw("Ehistsame");
d11->Draw("Ehistsame");
d12->Draw("Ehistsame");
d13->Draw("Ehistsame");
d14->Draw("Ehistsame");
d15->Draw("Ehistsame");
d16->Draw("Ehistsame");
d17->Draw("Ehistsame");
d18->Draw("Ehistsame");
d19->Draw("Ehistsame");
d20->Draw("Ehistsame");
TLatex latexLabel2;
latexLabel2.SetTextSize(0.04);
latexLabel2.SetTextFont(32);
latexLabel2.SetNDC();
latexLabel2.DrawLatex(0.4, 0.93, "");
   
// poi disegno la legenda  
 
TLegend *pl = new TLegend(0.8,0.3,0.97,0.9); //0.4,0.20,0.75,0.30
pl->SetTextSize(0.03); 
pl->SetFillColor(0);
pl-> SetNColumns(1);//per piu plot sovrapposti
pl->AddEntry(d, "TT+ST", "Column 1 line 1");// "PL");
pl->AddEntry(d1, "DY", "Column 1 line 2");// "L");
pl->AddEntry(d2, "L5 M5000", "Column 1 line 2");
pl->AddEntry(d3, "L6 M4000", "Column 1 line 1");
pl->AddEntry(d4, "L6 M5000", "Column 1 line 1");
pl->AddEntry(d5, "L6 M6000", "Column 1 line 1");
pl->AddEntry(d6, "L7 M4000", "Column 1 line 1");
pl->AddEntry(d7, "L7 M5000", "Column 1 line 1");
pl->AddEntry(d8, "L7 M6000", "Column 1 line 1");
pl->AddEntry(d9, "L7 M7000", "Column 1 line 1");
pl->AddEntry(d10, "L9 M4000", "Column 1 line 1");
pl->AddEntry(d11, "L9 M6000", "Column 1 line 1");
pl->AddEntry(d12, "L9 M9000", "Column 1 line 1");
pl->AddEntry(d13, "L11 M2000", "Column 1 line 1");
pl->AddEntry(d14, "L11 M4000", "Column 1 line 1");
pl->AddEntry(d15, "L11 M7000", "Column 1 line 1");
pl->AddEntry(d16, "L13 M2000", "Column 1 line 1");
pl->AddEntry(d17, "L13 M5000", "Column 1 line 1");
pl->AddEntry(d18, "L13 M8000", "Column 1 line 1");
pl->AddEntry(d19, "L17 M2000", "Column 1 line 1");
pl->AddEntry(d20, "L20 M8000", "Column 1 line 1");
pl->Draw();
    c1->SaveAs("Immagini/HighMass_Selection_"+name+"_sgn_bkg.png");
    c1->SaveAs("Immagini/HighMass_Selection_"+name+"_sgn_bkg.C");

    // salva immagine	
//}
    
}
