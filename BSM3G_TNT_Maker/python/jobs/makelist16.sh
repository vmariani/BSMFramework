rm listTT.txt;
rm listST.txt;
rm listZZ.txt;
rm listWZ.txt;
rm listWW.txt;
rm listWJets.txt;
rm listDY.txt;

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/TTTo2L2Nu_TuneCP5_13TeV-powheg-pythia8/Autumn18_TT/190512_153922/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listTT.txt; done

sed -i -e "s/\"/\\\\\"/g" listTT.txt
sed -i -e "s/\//\\\\\//g" listTT.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/ST_tW_top_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/Autumn18_ST/190512_154126/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listST.txt; done

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/ST_tW_antitop_5f_inclusiveDecays_TuneCP5_13TeV-powheg-pythia8/Autumn18_SaT/190512_154324/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listST.txt; done

sed -i -e "s/\"/\\\\\"/g" listST.txt
sed -i -e "s/\//\\\\\//g" listST.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/ZZ_TuneCP5_13TeV-pythia8/Autumn18_ZZ/190512_154521/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listZZ.txt; done

sed -i -e "s/\"/\\\\\"/g" listZZ.txt
sed -i -e "s/\//\\\\\//g" listZZ.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WZ_TuneCP5_13TeV-pythia8/Autumn18_WZ/190512_154722/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWZ.txt; done

sed -i -e "s/\"/\\\\\"/g" listWZ.txt
sed -i -e "s/\//\\\\\//g" listWZ.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WW_TuneCP5_13TeV-pythia8/Autumn18_WW/190512_154919/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWW.txt; done

sed -i -e "s/\"/\\\\\"/g" listWW.txt
sed -i -e "s/\//\\\\\//g" listWW.txt
#100200
for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_HT-100To200_TuneCP5_13TeV-madgraphMLM-pythia8/Autumn18_WJetsHT100To200/190512_155319/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done
#200400
for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_HT-200To400_TuneCP5_13TeV-madgraphMLM-pythia8/Autumn18_WJetsHT200To400/190512_155519/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done
#400600
for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_HT-400To600_TuneCP5_13TeV-madgraphMLM-pythia8/Autumn18_WJetsHT400To600/190512_155717/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done
#600800
for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_HT-600To800_TuneCP5_13TeV-madgraphMLM-pythia8/Autumn18_WJetsHT600To800/190512_155916/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done
#8001200
for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_HT-800To1200_TuneCP5_13TeV-madgraphMLM-pythia8/Autumn18_WJetsHT800To1200/190512_160118/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done
#12002500
for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_HT-1200To2500_TuneCP5_13TeV-madgraphMLM-pythia8/Autumn18_WJetsHT1200To2500/190512_160317/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done
#2500Inf
for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_HT-2500ToInf_TuneCP5_13TeV-madgraphMLM-pythia8/Autumn18_WJetsHT2500ToInf/190512_160515/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/Autumn18_WJets_/190512_160718/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listWJets.txt; done

sed -i -e "s/\"/\\\\\"/g" listWJets.txt
sed -i -e "s/\//\\\\\//g" listWJets.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani//DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/Autumn18_DY/190512_160921/0000`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listDY.txt; done

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani//DYJetsToLL_M-50_TuneCP5_13TeV-madgraphMLM-pythia8/Autumn18_DY/190512_160921/0001`;

do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> listDY.txt; done
sed -i -e "s/\"/\\\\\"/g" listDY.txt
sed -i -e "s/\//\\\\\//g" listDY.txt
