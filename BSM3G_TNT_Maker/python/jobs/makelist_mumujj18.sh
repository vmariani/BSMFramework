rm list_mumujj_L4_M2000.txt;
rm list_mumujj_L4_M3000.txt;
rm list_mumujj_L5_M500.txt;
rm list_mumujj_L5_M1000.txt;
rm list_mumujj_L5_M2000.txt;
rm list_mumujj_L5_M4000.txt;
rm list_mumujj_L5_M5000.txt;
rm list_mumujj_L6_M500.txt;
rm list_mumujj_L6_M1000.txt;
rm list_mumujj_L6_M3000.txt;
rm list_mumujj_L6_M4000.txt;
rm list_mumujj_L6_M5000.txt;
rm list_mumujj_L6_M6000.txt;
rm list_mumujj_L7_M500.txt;
rm list_mumujj_L7_M1000.txt;
rm list_mumujj_L7_M2000.txt;
rm list_mumujj_L7_M3000.txt;
rm list_mumujj_L7_M4000.txt;
rm list_mumujj_L7_M7000.txt;
rm list_mumujj_L9_M500.txt;
rm list_mumujj_L9_M2000.txt;
rm list_mumujj_L9_M4000.txt;
rm list_mumujj_L9_M6000.txt;
rm list_mumujj_L11_M500.txt;
rm list_mumujj_L11_M1000.txt;
rm list_mumujj_L11_M2000.txt;
rm list_mumujj_L11_M7000.txt;
rm list_mumujj_L13_M500.txt;
rm list_mumujj_L13_M1000.txt;
rm list_mumujj_L13_M2000.txt;
rm list_mumujj_L15_M500.txt;
rm list_mumujj_L15_M1000.txt;
rm list_mumujj_L15_M2000.txt;
rm list_mumujj_L15_M6000.txt;
rm list_mumujj_L17_M500.txt;
rm list_mumujj_L17_M2000.txt;
rm list_mumujj_L17_M7000.txt;
rm list_mumujj_L20_M1000.txt;
rm list_mumujj_L20_M2000.txt;

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M2000_mumujj_CalcHep/mumujj_18_L4_M2000/190603_082032/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L4_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L4_M2000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L4_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M3000_mumujj_CalcHep/mumujj_18_L4_M3000/190606_081830/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L4_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L4_M3000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L4_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M500_mumujj_CalcHep/mumujj_18_L5_M500/190603_082255/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L5_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L5_M500.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L5_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M1000_mumujj_CalcHep/mumujj_18_L5_M1000/190603_132835/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L5_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L5_M1000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L5_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M2000_mumujj_CalcHep/mumujj_18_L5_M2000/190603_082512/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L5_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L5_M2000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L5_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M4000_mumujj_CalcHep/mumujj_18_L5_M4000/190531_090359/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L5_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L5_M4000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L5_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M5000_mumujj_CalcHep/mumujj_18_L5_M5000/190531_090610/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L5_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L5_M5000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L5_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M500_mumujj_CalcHep/mumujj_18_L6_M500/190606_082036/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L6_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L6_M500.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L6_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M1000_mumujj_CalcHep/mumujj_18_L6_M1000/190603_132455/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L6_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L6_M1000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L6_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M3000_mumujj_CalcHep/mumujj_18_L6_M3000/190610_131547/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L6_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L6_M3000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L6_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M4000_mumujj_CalcHep/mumujj_18_L6_M4000/190612_074219/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L6_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L6_M4000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L6_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M5000_mumujj_CalcHep/mumujj_18_L6_M5000/190610_131754/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L6_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L6_M5000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L6_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M6000_mumujj_CalcHep/mumujj_18_L6_M6000/190606_082242/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L6_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L6_M6000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L6_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M500_mumujj_CalcHep/mumujj_18_L7_M500/190702_131450/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L7_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L7_M500.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L7_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M1000_mumujj_CalcHep/mumujj_18_L7_M1000/190606_082655/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L7_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L7_M1000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L7_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M2000_mumujj_CalcHep/mumujj_18_L7_M2000/190531_090813/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L7_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L7_M2000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L7_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M3000_mumujj_CalcHep/mumujj_18_L7_M3000/190606_082906/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L7_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L7_M3000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L7_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M4000_mumujj_CalcHep/mumujj_18_L7_M4000/190606_082733/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L7_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L7_M4000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L7_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M500_mumujj_CalcHep/mumujj_18_L9_M500/190611_071847/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L9_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L9_M500.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L9_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M2000_mumujj_CalcHep/mumujj_18_L9_M2000/190603_083010/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L9_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L9_M2000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L9_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M4000_mumujj_CalcHep/mumujj_18_L9_M4000/190531_091220/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L9_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L9_M4000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L9_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M6000_mumujj_CalcHep/mumujj_18_L9_M6000/190531_091435/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L9_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L9_M6000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L9_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L1500_M500_mumujj_CalcHep/mumujj_18_L11_M500/190626_074644/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L11_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L11_M500.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L11_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M1000_mumujj_CalcHep/mumujj_18_L11_M1000/190601_144206/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L11_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L11_M1000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L11_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M2000_mumujj_CalcHep/mumujj_18_L11_M2000/190531_100212/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L11_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L11_M2000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L11_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M7000_mumujj_CalcHep/mumujj_18_L11_M7000/190606_083529/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L11_M7000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L11_M7000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L11_M7000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M500_mumujj_CalcHep/mumujj_18_L13_M500/190618_075614/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L13_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L13_M500.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L13_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M1000_mumujj_CalcHep/mumujj_18_L13_M1000/190601_144401/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L13_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L13_M1000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L13_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M2000_mumujj_CalcHep/mumujj_18_L13_M2000/190606_083739/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L13_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L13_M2000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L13_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L15000_M500_mumujj_CalcHep/mumujj_18_L15_M500/190603_083244/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L15_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L15_M500.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L15_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L15000_M1000_mumujj_CalcHep/mumujj_18_L15_M1000/190531_091849/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L15_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L15_M1000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L15_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L15000_M2000_mumujj_CalcHep/mumujj_18_L15_M2000/190603_083515/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L15_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L15_M2000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L15_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L15000_M6000_mumujj_CalcHep/mumujj_18_L15_M6000/190606_083946/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L15_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L15_M6000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L15_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L17000_M500_mumujj_CalcHep/mumujj_18_L17_M500/190603_083743/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L17_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L17_M500.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L17_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L17000_M2000_mumujj_CalcHep/mumujj_18_L17_M2000/19063_084020/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L17_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L17_M2000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L17_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L17000_M7000_mumujj_CalcHep/mumujj_18_L17_M7000/190606_084200/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L17_M7000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L17_M7000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L17_M7000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L20000_M1000_mumujj_CalcHep/mumujj_18_L20_M1000/190531_092056/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L20_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L20_M1000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L20_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L20000_M2000_mumujj_CalcHep/mumujj_18_L20_M2000/190606_084410/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list_mumujj_L20_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list_mumujj_L20_M2000.txt
sed -i -e "s/\//\\\\\//g" list_mumujj_L20_M2000.txt
