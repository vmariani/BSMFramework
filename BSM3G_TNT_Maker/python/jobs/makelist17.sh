rm listTT.txt;
rm listST.txt;
rm listZZ.txt;
rm listWZ.txt;
rm listWW.txt;
rm listWJets.txt;
rm listDY.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/Fall17V2_TT/190510_070722/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listTT.txt; done

sed -i -e "s/\"/\\\\\"/g" listTT.txt
sed -i -e "s/\//\\\\\//g" listTT.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/ST_tW_top_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/Fall17V2_ST/190510_070829/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listST.txt; done

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/Fall17V2_SaT/190510_070938/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listST.txt; done

sed -i -e "s/\"/\\\\\"/g" listST.txt
sed -i -e "s/\//\\\\\//g" listST.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/ZZ_TuneCP5_13TeV-pythia8/Fall17V2_ZZ/190510_071052/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listZZ.txt; done

sed -i -e "s/\"/\\\\\"/g" listZZ.txt
sed -i -e "s/\//\\\\\//g" listZZ.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WZ_TuneCP5_13TeV-pythia8/Fall17V2_WZ/190510_071201/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWZ.txt; done

sed -i -e "s/\"/\\\\\"/g" listWZ.txt
sed -i -e "s/\//\\\\\//g" listWZ.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WW_TuneCP5_13TeV-pythia8/Fall17V2_WW/190510_071310/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWW.txt; done

sed -i -e "s/\"/\\\\\"/g" listWW.txt
sed -i -e "s/\//\\\\\//g" listWW.txt
#100200
for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_HT-100To200_TuneCP5_13TeV-madgraphMLM-pythia8/Fall17V2_WJetsHT100To200/190510_071425/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done
#200400
for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_HT-200To400_TuneCP5_13TeV-madgraphMLM-pythia8/Fall17V2_WJetsHT200To400/190510_071533/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done
#400600
for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_HT-400To600_TuneCP5_13TeV-madgraphMLM-pythia8/Fall17V2_WJetsHT400To600/190510_071643/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done
#600800
for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_HT-600To800_TuneCP5_13TeV-madgraphMLM-pythia8/Fall17V2_WJetsHT600To800/190510_071750/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done
#8001200
for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_HT-800To1200_TuneCP5_13TeV-madgraphMLM-pythia8/Fall17V2_WJetsHT800To1200/190510_071858/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done
#12002500
for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_HT-1200To2500_TuneCP5_13TeV-madgraphMLM-pythia8/Fall17V2_WJetsHT1200To2500/190510_072013/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done
#2500Inf
for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_HT-2500ToInf_TuneCP5_13TeV-madgraphMLM-pythia8/Fall17V2_WJetsHT2500ToInf/190510_072122/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/Fall17V2_WJets_1/190514_155328/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/Fall17V2_WJets_2/190514_155432/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done

sed -i -e "s/\"/\\\\\"/g" listWJets.txt
sed -i -e "s/\//\\\\\//g" listWJets.txt 

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/Fall17V2_DY1/190514_155540/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listDY.txt; done

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/Fall17V2_DY2/190514_155645/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listDY.txt; done

sed -i -e "s/\"/\\\\\"/g" listDY.txt
sed -i -e "s/\//\\\\\//g" listDY.txt 
