rm list_eejj_L4_M1000.txt;
rm list_eejj_L4_M2000.txt;
rm list_eejj_L4_M3000.txt;
rm list_eejj_L4_M4000.txt 
rm list_eejj_L5_M500.txt;
rm list_eejj_L5_M1000.txt;
rm list_eejj_L5_M2000.txt;
rm list_eejj_L5_M3000.txt;
rm list_eejj_L5_M4000.txt;
rm list_eejj_L5_M5000.txt;
rm list_eejj_L6_M500.txt;
rm list_eejj_L6_M1000.txt;
rm list_eejj_L6_M2000.txt;
rm list_eejj_L6_M3000.txt;
rm list_eejj_L6_M4000.txt;
rm list_eejj_L6_M5000.txt;
rm list_eejj_L6_M6000.txt;
rm list_eejj_L7_M500.txt;
rm list_eejj_L7_M1000.txt;
rm list_eejj_L7_M3000.txt;
rm list_eejj_L7_M4000.txt;
rm list_eejj_L7_M6000.txt;
rm list_eejj_L7_M7000.txt;
rm list_eejj_L9_M500.txt;
rm list_eejj_L9_M2000.txt;
rm list_eejj_L9_M6000.txt;
rm list_eejj_L11_M2000.txt;
rm list_eejj_L11_M4000.txt;
rm list_eejj_L11_M7000.txt;
rm list_eejj_L13_M500.txt;
rm list_eejj_L13_M1000.txt;
rm list_eejj_L13_M2000.txt;
rm list_eejj_L13_M5000.txt;
rm list_eejj_L15_M500.txt;
rm list_eejj_L15_M2000.txt;
rm list_eejj_L15_M6000.txt;
rm list_eejj_L17_M500.txt;
rm list_eejj_L17_M1000.txt;
rm list_eejj_L17_M2000.txt;
rm list_eejj_L17_M7000.txt;
rm list_eejj_L20_M500.txt;
rm list_eejj_L20_M2000.txt;

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M1000_eejj_CalcHep/eejj_18_L4_M1000/190531_093914/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L4_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L4_M1000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L4_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M2000_eejj_CalcHep/eejj_18_L4_M2000/190531_094122/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L4_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L4_M2000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L4_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M3000_eejj_CalcHep/eejj_18_L4_M3000/190531_094330/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L4_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L4_M3000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L4_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M4000_eejj_CalcHep/eejj_18_L4_M4000/190624_142220/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L4_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L4_M4000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L4_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M500_eejj_CalcHep/eejj_18_L5_M500/190606_085802/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L5_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L5_M500.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L5_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M1000_eejj_CalcHep/eejj_18_L5_M1000/190531_094537/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L5_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L5_M1000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L5_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M2000_eejj_CalcHep/eejj_18_L5_M2000/190531_094741/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L5_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L5_M2000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L5_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M3000_eejj_CalcHep/eejj_18_L5_M3000/190703_072443/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L5_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L5_M3000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L5_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M4000_eejj_CalcHep/eejj_18_L5_M4000/190606_090022/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L5_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L5_M4000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L5_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M5000_eejj_CalcHep/eejj_18_L5_M5000/190614_073536/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L5_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L5_M5000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L5_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M500_eejj_CalcHep/eejj_18_L6_M500/190531_094946/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L6_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L6_M500.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L6_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M1000_eejj_CalcHep/eejj_18_L6_M1000/190531_095150/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L6_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L6_M1000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L6_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M2000_eejj_CalcHep/eejj_18_L6_M2000/190606_090226/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L6_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L6_M2000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L6_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M3000_eejj_CalcHep/eejj_18_L6_M3000/190531_142948/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L6_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L6_M3000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L6_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M4000_eejj_CalcHep/eejj_18_L6_M4000/190531_143243/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L6_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L6_M4000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L6_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M5000_eejj_CalcHep/eejj_18_L6_M5000/190531_143511/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L6_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L6_M5000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L6_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M6000_eejj_CalcHep/eejj_18_L6_M6000/190601_142828/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L6_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L6_M6000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L6_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M500_eejj_CalcHep/eejj_18_L7_M500/190531_095355/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L7_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L7_M500.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L7_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M1000_eejj_CalcHep/eejj_18_L7_M1000/190531_095600/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L7_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L7_M1000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L7_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M3000_eejj_CalcHep/eejj_18_L7_M3000/190531_095805/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L7_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L7_M3000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L7_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M4000_eejj_CalcHep/eejj_18_L7_M4000/190606_090433/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L7_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L7_M4000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L7_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M6000_eejj_CalcHep/eejj_18_L7_M6000/190531_143757/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L7_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L7_M6000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L7_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M7000_eejj_CalcHep/eejj_18_L7_M7000/190610_130606/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L7_M7000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L7_M7000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L7_M7000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M500_eejj_CalcHep/eejj_18_L9_M500/190619_095906/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L9_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L9_M500.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L9_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M2000_eejj_CalcHep/eejj_18_L9_M2000/190606_090646/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L9_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L9_M2000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L9_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M6000_eejj_CalcHep/eejj_18_L9_M6000/190610_130812/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L9_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L9_M6000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L9_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M2000_eejj_CalcHep/eejj_18_L11_M2000/190531_100212/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L11_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L11_M2000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L11_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M4000_eejj_CalcHep/eejj_18_L11_M4000/190606_090856/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L11_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L11_M4000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L11_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M7000_eejj_CalcHep/eejj_18_L11_M7000/190606_091104/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L11_M7000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L11_M7000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L11_M7000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M500_eejj_CalcHep/eejj_18_L13_M500/190531_100412/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L13_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L13_M500.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L13_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M1000_eejj_CalcHep/eejj_18_L13_M1000/190531_100615/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L13_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L13_M1000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L13_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M2000_eejj_CalcHep/eejj_18_L13_M2000/190601_143023/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L13_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L13_M2000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L13_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M5000_eejj_CalcHep/eejj_18_L13_M5000/190610_131022/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L13_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L13_M5000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L13_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L15000_M500_eejj_CalcHep/eejj_18_L15_M500/190531_100819/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L15_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L15_M500.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L15_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L15000_M2000_eejj_CalcHep/eejj_18_L15_M2000/190606_091313/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L15_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L15_M2000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L15_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L15000_M6000_eejj_CalcHep/eejj_18_L15_M6000/190601_143220/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L15_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L15_M6000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L15_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L17000_M500_eejj_CalcHep/eejj_18_L17_M500/190619_100122/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L17_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L17_M500.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L17_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L17000_M1000_eejj_CalcHep/eejj_18_L17_M1000/190531_101247/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L17_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L17_M1000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L17_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L17000_M2000_eejj_CalcHep/eejj_18_L17_M2000/190618_075204/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L17_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L17_M2000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L17_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L17000_M7000_eejj_CalcHep/eejj_18_L17_M7000/190531_101455/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L17_M7000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L17_M7000.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L17_M7000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L20000_M500_eejj_CalcHep/eejj_18_L20_M500/190606_091533/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_eejj_L20_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_eejj_L20_M500.txt
sed -i -e "s/\//\\\\\//g" list_eejj_L20_M500.txt
