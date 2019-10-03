rm list/list_eejj_L4_M500.txt;
rm list/list_eejj_L4_M1000.txt;
rm list/list_eejj_L4_M2000.txt;
rm list/list_eejj_L4_M3000.txt;
rm list/list_eejj_L4_M4000.txt;
rm list/list_eejj_L5_M500.txt;
rm list/list_eejj_L5_M1000.txt;
rm list/list_eejj_L5_M2000.txt;
rm list/list_eejj_L5_M3000.txt;
rm list/list_eejj_L5_M4000.txt;
rm list/list_eejj_L5_M5000.txt;
rm list/list_eejj_L6_M500.txt;
rm list/list_eejj_L6_M1000.txt;
rm list/list_eejj_L6_M2000.txt;
rm list/list_eejj_L6_M3000.txt;
rm list/list_eejj_L6_M4000.txt;
rm list/list_eejj_L6_M5000.txt;
rm list/list_eejj_L6_M6000.txt;
rm list/list_eejj_L7_M500.txt;
rm list/list_eejj_L7_M1000.txt;
rm list/list_eejj_L7_M2000.txt;
rm list/list_eejj_L7_M3000.txt;
rm list/list_eejj_L7_M4000.txt;
rm list/list_eejj_L7_M5000.txt;
rm list/list_eejj_L7_M6000.txt;
rm list/list_eejj_L7_M7000.txt;
rm list/list_eejj_L9_M500.txt;
rm list/list_eejj_L9_M1000.txt;
rm list/list_eejj_L9_M2000.txt;
rm list/list_eejj_L9_M4000.txt;
rm list/list_eejj_L9_M6000.txt;
rm list/list_eejj_L9_M9000.txt;
rm list/list_eejj_L11_M1000.txt;
rm list/list_eejj_L11_M2000.txt;
rm list/list_eejj_L11_M4000.txt;
rm list/list_eejj_L11_M7000.txt;
rm list/list_eejj_L13_M500.txt;
rm list/list_eejj_L13_M1000.txt;
rm list/list_eejj_L13_M2000.txt;
rm list/list_eejj_L13_M5000.txt;
rm list/list_eejj_L13_M8000.txt;
rm list/list_eejj_L15_M500.txt;
rm list/list_eejj_L15_M2000.txt;
rm list/list_eejj_L15_M6000.txt;
rm list/list_eejj_L17_M500.txt;
rm list/list_eejj_L17_M1000.txt;
rm list/list_eejj_L17_M2000.txt;
rm list/list_eejj_L17_M7000.txt;
rm list/list_eejj_L20_M500.txt;

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L4000_M500_eejj_CalcHep/eejj_17_L4_M500/190531_143758/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L4_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L4_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L4_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L4000_M1000_eejj_CalcHep/eejj_17_L4_M1000/190531_143906/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L4_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L4_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L4_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M2000_eejj_CalcHep/eejj_17_L4_M2000/190531_124208/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L4_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L4_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L4_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L4000_M3000_eejj_CalcHep/eejj_17_L4_M3000/190606_074837/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L4_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L4_M3000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L4_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L4000_M4000_eejj_CalcHep/eejj_17_L4_M4000/190603_083049/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L4_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L4_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L4_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L5000_M500_eejj_CalcHep/eejj_17_L5_M500/190610_123707/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L5_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L5_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L5_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L5000_M1000_eejj_CalcHep/eejj_17_L5_M1000/190531_124320/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L5_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L5_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L5_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L5000_M2000_eejj_CalcHep/eejj_17_L5_M2000/190603_083201/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L5_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L5_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L5_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L5000_M3000_eejj_CalcHep/eejj_17_L5_M3000/190606_074943/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L5_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L5_M3000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L5_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L5000_M4000_eejj_CalcHep/eejj_17_L5_M4000/190531_124428/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L5_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L5_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L5_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L5000_M5000_eejj_CalcHep/eejj_17_L5_M5000/190531_124537/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L5_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L5_M5000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L5_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L6000_M500_eejj_CalcHep/eejj_17_L6_M500/190531_124647/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L6_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L6_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L6_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L6000_M1000_eejj_CalcHep/eejj_17_L6_M1000/190531_124753/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L6_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L6_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L6_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L6000_M2000_eejj_CalcHep/eejj_17_L6_M2000/190531_124902/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L6_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L6_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L6_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L6000_M3000_eejj_CalcHep/eejj_17_L6_M3000/190531_125009/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L6_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L6_M3000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L6_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L6000_M4000_eejj_CalcHep/eejj_17_L6_M4000/190601_144739/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L6_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L6_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L6_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L6000_M5000_eejj_CalcHep/eejj_17_L6_M5000/190531_125116/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L6_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L6_M5000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L6_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L6000_M6000_eejj_CalcHep/eejj_17_L6_M6000/190531_125224/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L6_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L6_M6000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L6_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L7000_M500_eejj_CalcHep/eejj_17_L7_M500/190531_125333/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L7_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L7_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L7_M500.txt    

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M1000_eejj_CalcHep/eejj_17_L7_M1000/190531_125440/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L7_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L7_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L7_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L7000_M2000_eejj_CalcHep/eejj_17_L7_M2000/190603_083309/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L7_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L7_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L7_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L7000_M3000_eejj_CalcHep/eejj_17_L7_M3000/190531_125550/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L7_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L7_M3000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L7_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L7000_M4000_eejj_CalcHep/eejj_17_L7_M4000/190618_080113/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L7_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L7_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L7_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L7000_M5000_eejj_CalcHep/eejj_17_L7_M5000/190531_125814/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L7_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L7_M5000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L7_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M6000_eejj_CalcHep/eejj_17_L7_M6000/190531_125922/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L7_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L7_M6000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L7_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M7000_eejj_CalcHep/eejj_17_L7_M7000/190531_130031/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L7_M7000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L7_M7000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L7_M7000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L9000_M500_eejj_CalcHep/eejj_17_L9_M500/190531_130139/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L9_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L9_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L9_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L9000_M1000_eejj_CalcHep/eejj_17_L9_M1000/190531_130247/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L9_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L9_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L9_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M2000_eejj_CalcHep/eejj_17_L9_M2000/190531_130356/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L9_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L9_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L9_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L9000_M4000_eejj_CalcHep/eejj_17_L9_M4000/190531_130511/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L9_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L9_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L9_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L9000_M6000_eejj_CalcHep/eejj_17_L9_M6000/190531_130620/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L9_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L9_M6000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L9_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L9000_M9000_eejj_CalcHep/eejj_17_L9_M9000/190813_145602/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L9_M9000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L9_M9000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L9_M9000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L11000_M1000_eejj_CalcHep/eejj_17_L11_M1000/190531_130745/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L11_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L11_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L11_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L11000_M2000_eejj_CalcHep/eejj_17_L11_M2000/190531_130856/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L11_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L11_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L11_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M4000_eejj_CalcHep/eejj_17_L11_M4000/190531_131006/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L11_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L11_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L11_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M7000_eejj_CalcHep/eejj_17_L11_M7000/190531_131121/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L11_M7000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L11_M7000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L11_M7000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L13000_M500_eejj_CalcHep/eejj_17_L13_M500/190531_131236/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L13_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L13_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L13_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L13000_M1000_eejj_CalcHep/eejj_17_L13_M1000/190531_131354/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L13_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L13_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L13_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M2000_eejj_CalcHep/eejj_17_L13_M2000/190531_131505/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L13_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L13_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L13_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M5000_eejj_CalcHep/eejj_17_L13_M5000/190531_131617/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L13_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L13_M5000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L13_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L13000_M8000_eejj_CalcHep/eejj_17_L13_M8000/190813_145721/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L13_M8000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L13_M8000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L13_M8000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L15000_M500_eejj_CalcHep/eejj_17_L15_M500/190603_083416/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L15_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L15_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L15_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L15000_M2000_eejj_CalcHep/eejj_17_L15_M2000/190612_073035/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L15_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L15_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L15_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L15000_M6000_eejj_CalcHep/eejj_17_L15_M6000/190531_131733/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L15_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L15_M6000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L15_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L17000_M500_eejj_CalcHep/eejj_17_L17_M500/190531_131849/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L17_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L17_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L17_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L17000_M1000_eejj_CalcHep/eejj_17_L17_M1000/190603_083527/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L17_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L17_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L17_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L17000_M2000_eejj_CalcHep/eejj_17_L17_M2000/190709_082303/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L17_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L17_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L17_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L17000_M7000_eejj_CalcHep/eejj_17_L17_M7000/190606_075055/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L17_M7000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L17_M7000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L17_M7000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HavyCompositeMajoranaNeutrino_L20000_M500_eejj_CalcHep/eejj_17_L20_M500/190531_132001/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L20_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L20_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L20_M500.txt
