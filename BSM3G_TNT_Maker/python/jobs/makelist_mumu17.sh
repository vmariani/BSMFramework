rm list/list_mumujj_L4_M500.txt;
rm list/list_mumujj_L4_M1000.txt;
rm list/list_mumujj_L4_M2000.txt;
rm list/list_mumujj_L4_M3000.txt;
rm list/list_mumujj_L4_M4000.txt;
rm list/list_mumujj_L5_M500.txt;
rm list/list_mumujj_L5_M1000.txt;
rm list/list_mumujj_L5_M2000.txt;
rm list/list_mumujj_L5_M3000.txt;
rm list/list_mumujj_L5_M4000.txt;
rm list/list_mumujj_L5_M5000.txt;
rm list/list_mumujj_L6_M500.txt;
rm list/list_mumujj_L6_M1000.txt;
rm list/list_mumujj_L6_M2000.txt;
rm list/list_mumujj_L6_M3000.txt;
rm list/list_mumujj_L6_M4000.txt;
rm list/list_mumujj_L6_M5000.txt;
rm list/list_mumujj_L6_M6000.txt;
rm list/list_mumujj_L7_M500.txt;
rm list/list_mumujj_L7_M1000.txt;
rm list/list_mumujj_L7_M2000.txt;
rm list/list_mumujj_L7_M3000.txt;
rm list/list_mumujj_L7_M4000.txt;
rm list/list_mumujj_L7_M5000.txt;
rm list/list_mumujj_L7_M6000.txt;
rm list/list_mumujj_L7_M7000.txt;
rm list/list_mumujj_L9_M500.txt;
rm list/list_mumujj_L9_M1000.txt;
rm list/list_mumujj_L9_M2000.txt;
rm list/list_mumujj_L9_M4000.txt;
rm list/list_mumujj_L9_M6000.txt;
rm list/list_mumujj_L9_M9000.txt;
rm list/list_mumujj_L11_M500.txt;
rm list/list_mumujj_L11_M1000.txt;
rm list/list_mumujj_L11_M2000.txt;
rm list/list_mumujj_L11_M4000.txt;
rm list/list_mumujj_L11_M7000.txt;
rm list/list_mumujj_L13_M500.txt;
rm list/list_mumujj_L13_M1000.txt;
rm list/list_mumujj_L13_M2000.txt;
rm list/list_mumujj_L13_M5000.txt;
rm list/list_mumujj_L13_M8000.txt;
rm list/list_mumujj_L15_M500.txt;
rm list/list_mumujj_L15_M1000.txt;
rm list/list_mumujj_L15_M2000.txt;
rm list/list_mumujj_L15_M6000.txt;
rm list/list_mumujj_L17_M1000.txt;
rm list/list_mumujj_L17_M2000.txt;
rm list/list_mumujj_L17_M7000.txt;
rm list/list_mumujj_L20_M500.txt;
rm list/list_mumujj_L20_M1000.txt;
rm list/list_mumujj_L20_M2000.txt;
rm list/list_mumujj_L20_M8000.txt;

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L4000_M500_mumujj_CalcHep_New/mumujj_17_L4_M500/190531_133023/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L4_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L4_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L4_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L4000_M1000_mumujj_CalcHep/mumujj_17_L4_M1000/190531_133141/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L4_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L4_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L4_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L4000_M2000_mumujj_CalcHep/mumujj_17_L4_M2000/190531_133309/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L4_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L4_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L4_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L4000_M3000_mumujj_CalcHep/mumujj_17_L4_M3000/190531_133424/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L4_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L4_M3000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L4_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L4000_M4000_mumujj_CalcHep/mumujj_17_L4_M4000/190531_133542/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L4_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L4_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L4_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L5000_M500_mumujj_CalcHep/mumujj_17_L5_M500/190531_133658/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L5_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L5_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L5_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L5000_M1000_mumujj_CalcHep/mumujj_17_L5_M1000/190606_075928/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L5_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L5_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L5_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L5000_M2000_mumujj_CalcHep/mumujj_17_L5_M2000/190709_082657/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L5_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L5_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L5_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L5000_M3000_mumujj_CalcHep/mumujj_17_L5_M3000/190531_133820/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L5_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L5_M3000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L5_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L5000_M4000_mumujj_CalcHep/mumujj_17_L5_M4000/190531_133932/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L5_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L5_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L5_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L5000_M5000_mumujj_CalcHep/mumujj_17_L5_M5000/190614_073004/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L5_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L5_M5000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L5_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L6000_M500_mumujj_CalcHep/mumujj_17_L6_M500/190603_080859/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L6_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L6_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L6_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L6000_M2000_mumujj_CalcHep/mumujj_17_L6_M2000/190531_134048/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L6_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L6_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L6_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L6000_M3000_mumujj_CalcHep/mumujj_17_L6_M3000/190531_134221/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L6_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L6_M3000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L6_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L6000_M4000_mumujj_CalcHep/mumujj_17_L6_M4000/190601_145335/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L6_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L6_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L6_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L6000_M5000_mumujj_CalcHep/mumujj_17_L6_M5000/190603_081030/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L6_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L6_M5000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L6_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M6000_mumujj_CalcHep/mumujj_17_L6_M6000/190531_134334/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L6_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L6_M6000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L6_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L7000_M500_mumujj_CalcHep/mumujj_17_L7_M500/190601_145444/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M500.txt    

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L7000_M1000_mumujj_CalcHep/mumujj_17_L7_M1000/190601_145553/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L7000_M2000_mumujj_CalcHep/mumujj_17_L7_M2000/190531_134446/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L7000_M3000_mumujj_CalcHep/mumujj_17_L7_M3000/190531_134600/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M3000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L7000_M4000_mumujj_CalcHep/mumujj_17_L7_M4000/190531_134714/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L7000_M5000_mumujj_CalcHep/mumujj_17_L7_M5000/190531_134827/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M5000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L7000_M6000_mumujj_CalcHep/mumujj_17_L7_M6000/190531_134938/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M6000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L7000_M7000_mumujj_CalcHep/mumujj_17_L7_M7000/190531_135050/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M7000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M7000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M7000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L9000_M500_mumujj_CalcHep/mumujj_17_L9_M500/190531_135201/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L9_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L9_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L9_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L9000_M1000_mumujj_CalcHep/mumujj_17_L9_M1000/190603_081206/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L9_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L9_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L9_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L9000_M2000_mumujj_CalcHep/mumujj_17_L9_M2000/190606_080043/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L9_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L9_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L9_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L9000_M4000_mumujj_CalcHep/mumujj_17_L9_M4000/190531_135317/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L9_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L9_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L9_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L9000_M6000_mumujj_CalcHep/mumujj_17_L9_M6000/190531_135435/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L9_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L9_M6000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L9_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L9000_M9000_mumujj_CalcHep/mumujj_17_L9_M9000/190813_151038/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L9_M9000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L9_M9000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L9_M9000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L11000_M500_mumujj_CalcHep/mumujj_17_L11_M500/190702_100758/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L11_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L11_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L11_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L11000_M1000_mumujj_CalcHep/mumujj_17_L11_M1000/190531_135716/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L11_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L11_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L11_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L11000_M2000_mumujj_CalcHep/mumujj_17_L11_M2000/190531_135827/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L11_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L11_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L11_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M4000_mumujj_CalcHep/mumujj_17_L11_M4000/190813_151156/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L11_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L11_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L11_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L11000_M7000_mumujj_CalcHep/mumujj_17_L11_M7000/190531_135939/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L11_M7000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L11_M7000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L11_M7000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L13000_M500_mumujj_CalcHep/mumujj_17_L13_M500/190603_081332/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L13_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L13_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L13_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L13000_M1000_mumujj_CalcHep/mumujj_17_L13_M1000/190601_145700/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L13_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L13_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L13_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L13000_M2000_mumujj_CalcHep/mumujj_17_L13_M2000/190531_140100/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L13_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L13_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L13_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L13000_M5000_mumujj_CalcHep/mumujj_17_L13_M5000/190603_081459/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L13_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L13_M5000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L13_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L13000_M8000_mumujj_CalcHep/mumujj_17_L13_M8000/190813_151316/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L13_M8000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L13_M8000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L13_M8000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L15000_M500_mumujj_CalcHep/mumujj_17_L15_M500/190601_145814/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L15_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L15_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L15_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L15000_M1000_mumujj_CalcHep/mumujj_17_L15_M1000/190531_143027/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L15_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L15_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L15_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L15000_M2000_mumujj_CalcHep/mumujj_17_L15_M2000/190702_100909/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L15_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L15_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L15_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L15000_M6000_mumujj_CalcHep/mumujj_17_L15_M6000/190531_143142/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L15_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L15_M6000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L15_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L17000_M1000_mumujj_CalcHep/mumujj_17_L17_M1000/190702_101021/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L17_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L17_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L17_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L17000_M2000_mumujj_CalcHep/mumujj_17_L17_M2000/190813_151424/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L17_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L17_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L17_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L17000_M7000_mumujj_CalcHep/mumujj_17_L17_M7000/190603_081628/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L17_M7000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L17_M7000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L17_M7000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L20000_M500_mumujj_CalcHep/mumujj_17_L20_M500/190531_140529/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L20_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L20_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L20_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L20000_M1000_mumujj_CalcHep/mumujj_17_L20_M1000/190603_081754/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L20_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L20_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L20_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L20000_M2000_mumujj_CalcHep/mumujj_17_L20_M2000/190606_080153/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L20_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L20_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L20_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L20000_M8000_mumujj_CalcHep/mumujj_17_L20_M8000/190813_151539/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L20_M8000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L20_M8000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L20_M8000.txt
