rm list/list_eejj_L4_M500.txt
rm list/list_eejj_L4_M1000.txt;
rm list/list_eejj_L4_M2000.txt;
rm list/list_eejj_L4_M3000.txt;
rm list/list_eejj_L4_M4000.txt 
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
rm list/list_eejj_L6_M6000.txt;
rm list/list_eejj_L7_M500.txt;
rm list/list_eejj_L7_M1000.txt;
rm list/list_eejj_L7_M2000.txt;
rm list/list_eejj_L7_M3000.txt;
rm list/list_eejj_L7_M4000.txt;
rm list/list_eejj_L7_M5000.txt;
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
rm list/list_eejj_L20_M2000.txt;

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M500_eejj_CalcHep/eejj_16_L4_M500/190801_132718/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L4_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L4_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L4_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M1000_eejj_CalcHep/eejj_16_L4_M1000/190801_112629/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L4_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L4_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L4_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M2000_eejj_CalcHep/eejj_16_L4_M2000/190830_092425/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L4_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L4_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L4_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M3000_eejj_CalcHep/eejj_16_L4_M3000/190801_132943/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L4_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L4_M3000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L4_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M4000_eejj_CalcHep/eejj_16_L4_M4000/190830_092710/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L4_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L4_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L4_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M500_eejj_CalcHep/eejj_16_L5_M500/190830_092956/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L5_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L5_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L5_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M1000_eejj_CalcHep/eejj_16_L5_M1000/190801_133208/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L5_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L5_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L5_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M2000_eejj_CalcHep/eejj_16_L5_M2000/190801_133435/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L5_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L5_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L5_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M3000_eejj_CalcHep/eejj_16_L5_M3000/190801_133706/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L5_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L5_M3000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L5_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M4000_eejj_CalcHep/eejj_16_L5_M4000/190830_093239/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L5_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L5_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L5_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M5000_eejj_CalcHep/eejj_16_L5_M5000/190830_093513/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L5_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L5_M5000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L5_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M500_eejj_CalcHep/eejj_16_L6_M500/190801_133924/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L6_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L6_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L6_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M1000_eejj_CalcHep/eejj_16_L6_M1000/190913_082415/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L6_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L6_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L6_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M2000_eejj_CalcHep/eejj_16_L6_M2000/190801_134144/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L6_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L6_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L6_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M3000_eejj_CalcHep/eejj_16_L6_M3000/190801_134414/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L6_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L6_M3000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L6_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M4000_eejj_CalcHep/eejj_16_L6_M4000/190801_134645/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L6_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L6_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L6_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M6000_eejj_CalcHep/eejj_16_L6_M6000/190802_102025/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L6_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L6_M6000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L6_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M500_eejj_CalcHep/eejj_16_L7_M500/190830_094033/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L7_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L7_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L7_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M1000_eejj_CalcHep/eejj_16_L7_M1000/190830_094314/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L7_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L7_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L7_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M2000_eejj_CalcHep/eejj_16_L7_M2000/190830_094613/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L7_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L7_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L7_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M3000_eejj_CalcHep/eejj_16_L7_M3000/190802_091553/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L7_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L7_M3000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L7_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M4000_eejj_CalcHep/eejj_16_L7_M4000/190802_091826/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L7_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L7_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L7_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M5000_eejj_CalcHep/eejj_16_L7_M5000/190802_092056/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L7_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L7_M5000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L7_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M500_eejj_CalcHep_2019/eejj_16_L9_M500/190830_102259/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L9_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L9_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L9_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M1000_eejj_CalcHep/eejj_16_L9_M1000/190802_092606/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L9_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L9_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L9_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M2000_eejj_CalcHep/eejj_16_L9_M2000/190802_092844/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L9_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L9_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L9_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M4000_eejj_CalcHep/eejj_16_L9_M4000/190830_095449/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L9_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L9_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L9_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M6000_eejj_CalcHep/eejj_16_L9_M6000/190802_093118/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L9_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L9_M6000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L9_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M9000_eejj_CalcHep/eejj_16_L9_M9000/190830_095733/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L9_M9000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L9_M9000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L9_M9000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M1000_eejj_CalcHep/eejj_16_L11_M1000/190802_093348/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L11_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L11_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L11_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M2000_eejj_CalcHep/eejj_16_L11_M2000/190802_093619/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L11_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L11_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L11_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M4000_eejj_CalcHep/eejj_16_L11_M4000/190802_093850/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L11_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L11_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L11_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M7000_eejj_CalcHep/eejj_16_L11_M7000/190802_094113/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L11_M7000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L11_M7000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L11_M7000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M500_eejj_CalcHep_2019/eejj_16_L13_M500/190802_094340/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L13_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L13_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L13_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M1000_eejj_CalcHep/eejj_16_L13_M1000/190830_100018/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L13_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L13_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L13_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M2000_eejj_CalcHep/eejj_16_L13_M2000/190802_094614/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L13_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L13_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L13_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M5000_eejj_CalcHep/eejj_16_L13_M5000/190802_094843/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L13_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L13_M5000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L13_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M8000_eejj_CalcHep/eejj_16_L13_M8000/190830_100310/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L13_M8000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L13_M8000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L13_M8000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L15000_M500_eejj_CalcHep/eejj_16_L15_M500/190802_134850/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L15_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L15_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L15_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L15000_M2000_eejj_CalcHep/eejj_16_L15_M2000/190802_135114/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L15_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L15_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L15_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L15000_M6000_eejj_CalcHep/eejj_16_L15_M6000/190830_100605/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L15_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L15_M6000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L15_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L17000_M500_eejj_CalcHep/eejj_16_L17_M500/190802_135343/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L17_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L17_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L17_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L17000_M1000_eejj_CalcHep/eejj_16_L17_M1000/190802_135605/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L17_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L17_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L17_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L17000_M2000_eejj_CalcHep/eejj_16_L17_M2000/190802_135837/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L17_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L17_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L17_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L17000_M7000_eejj_CalcHep/eejj_16_L17_M7000/190830_100857/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L17_M7000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L17_M7000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L17_M7000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L20000_M500_eejj_CalcHep/eejj_16_L20_M500/190802_140104/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L20_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L20_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L20_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L20000_M2000_eejj_CalcHep/eejj_16_L20_M2000/190830_101151/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_eejj_L20_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_eejj_L20_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_eejj_L20_M2000.txt
