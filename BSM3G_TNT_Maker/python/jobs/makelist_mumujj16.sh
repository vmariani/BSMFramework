rm list/list_mumujj_L4_M500.txt;
rm list/list_mumujj_L4_M1000.txt;
rm list/list_mumujj_L4_M2000.txt;
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
rm list/list_mumujj_L17_M500.txt;
rm list/list_mumujj_L17_M1000.txt;
rm list/list_mumujj_L17_M2000.txt;
rm list/list_mumujj_L20_M8000.txt;

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M500_mumujj_CalcHep/mumujj_16_L4_M500/190826_071211/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L4_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L4_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L4_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M1000_mumujj_CalcHep/mumujj_16_L4_M1000/190822_125140/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L4_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L4_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L4_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M2000_mumujj_CalcHep/mumujj_16_L4_M2000/190805_084638/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L4_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L4_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L4_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L4000_M4000_mumujj_CalcHep/mumujj_16_L4_M4000/190805_085149/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L4_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L4_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L4_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M500_mumujj_CalcHep/mumujj_16_L5_M500/190805_085420/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L5_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L5_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L5_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M1000_mumujj_CalcHep/mumujj_16_L5_M1000/190822_125359/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L5_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L5_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L5_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M2000_mumujj_CalcHep/mumujj_16_L5_M2000/190805_085649/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L5_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L5_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L5_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M3000_mumujj_CalcHep/mumujj_16_L5_M3000/190822_125629/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L5_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L5_M3000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L5_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M4000_mumujj_CalcHep/mumujj_16_L5_M4000/190822_125854/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L5_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L5_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L5_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L5000_M5000_mumujj_CalcHep/mumujj_16_L5_M5000/190805_085917/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L5_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L5_M5000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L5_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M500_mumujj_CalcHep/mumujj_16_L6_M500/190822_130124/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L6_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L6_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L6_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M1000_mumujj_CalcHep/mumujj_16_L6_M1000/190805_090145/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L6_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L6_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L6_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M2000_mumujj_CalcHep/mumujj_16_L6_M2000/190805_090416/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L6_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L6_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L6_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M3000_mumujj_CalcHep/mumujj_16_L6_M3000/190805_090651/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L6_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L6_M3000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L6_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M4000_mumujj_CalcHep/mumujj_16_L6_M4000/190805_090914/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L6_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L6_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L6_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L6000_M6000_mumujj_CalcHep/mumujj_16_L6_M6000/190822_130353/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L6_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L6_M6000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L6_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M500_mumujj_CalcHep/mumujj_16_L7_M500/190822_130620/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M1000_mumujj_CalcHep/mumujj_16_L7_M1000/190805_091426/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M2000_mumujj_CalcHep/mumujj_16_L7_M2000/190806_065707/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M3000_mumujj_CalcHep/mumujj_16_L7_M3000/190822_130845/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M3000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M3000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M3000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M4000_mumujj_CalcHep/mumujj_16_L7_M4000/190806_065927/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M5000_mumujj_CalcHep/mumujj_16_L7_M5000/190806_070142/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M5000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M6000_mumujj_CalcHep/mumujj_16_L7_M6000/190826_071425/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M6000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L7000_M7000_mumujj_CalcHep/mumujj_16_L7_M7000/190826_071657/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L7_M7000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L7_M7000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L7_M7000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M500_mumujj_CalcHep_2019/mumujj_16_L9_M500/190806_070354/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L9_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L9_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L9_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M1000_mumujj_CalcHep/mumujj_16_L9_M1000/190806_070608/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L9_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L9_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L9_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M2000_mumujj_CalcHep/mumujj_16_L9_M2000/190826_071908/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L9_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L9_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L9_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M4000_mumujj_CalcHep/mumujj_16_L9_M4000/190822_121412/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L9_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L9_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L9_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M6000_mumujj_CalcHep/mumujj_16_L9_M6000/190822_121628/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L9_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L9_M6000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L9_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L9000_M9000_mumujj_CalcHep/mumujj_16_L9_M9000/190822_121845/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L9_M9000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L9_M9000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L9_M9000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M500_mumujj_CalcHep/mumujj_16_L11_M500/190806_070821/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L11_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L11_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L11_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M1000_mumujj_CalcHep/mumujj_16_L11_M1000/190806_071033/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L11_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L11_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L11_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M2000_mumujj_CalcHep/mumujj_16_L11_M2000/190822_122107/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L11_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L11_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L11_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M4000_mumujj_CalcHep/mumujj_16_L11_M4000/190806_071247/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L11_M4000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L11_M4000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L11_M4000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L11000_M7000_mumujj_CalcHep/mumujj_16_L11_M7000/190806_071502/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L11_M7000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L11_M7000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L11_M7000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M500_mumujj_CalcHep_2019/mumujj_16_L13_M500/190806_071723/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L13_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L13_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L13_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M1000_mumujj_CalcHep/mumujj_16_L13_M1000/190822_122325/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L13_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L13_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L13_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M2000_mumujj_CalcHep/mumujj_16_L13_M2000/190806_072029/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L13_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L13_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L13_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M5000_mumujj_CalcHep/mumujj_16_L13_M5000/190806_072249/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L13_M5000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L13_M5000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L13_M5000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L13000_M8000_mumujj_CalcHep/mumujj_16_L13_M8000/190822_122555/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L13_M8000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L13_M8000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L13_M8000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L15000_M500_mumujj_CalcHep/mumujj_16_L15_M500/190822_122811/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L15_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L15_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L15_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L15000_M1000_mumujj_CalcHep/mumujj_16_L15_M1000/190822_123043/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L15_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L15_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L15_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L15000_M2000_mumujj_CalcHep/mumujj_16_L15_M2000/190806_072507/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L15_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L15_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L15_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L15000_M6000_mumujj_CalcHep/mumujj_16_L15_M6000/190822_123310/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L15_M6000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L15_M6000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L15_M6000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L17000_M500_mumujj_CalcHep/mumujj_16_L17_M500/190822_123536/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L17_M500.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L17_M500.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L17_M500.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L17000_M1000_mumujj_CalcHep/mumujj_16_L17_M1000/190806_072722/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L17_M1000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L17_M1000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L17_M1000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L17000_M2000_mumujj_CalcHep/mumujj_16_L17_M2000/190826_072649/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L17_M2000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L17_M2000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L17_M2000.txt

for i in `xrdfs  root://ss-03.recas.ba.infn.it:8080 ls /store/user/vmariani/HeavyCompositeMajoranaNeutrino_L20000_M8000_mumujj_CalcHep/mumujj_16_L20_M8000/190826_072917/0000`;
do echo "root://ss-03.recas.ba.infn.it:8080/${i//\/cms/}" >> list/list_mumujj_L20_M8000.txt; done
sed -i -e "s/\"/\\\\\"/g" list/list_mumujj_L20_M8000.txt
sed -i -e "s/\//\\\\\//g" list/list_mumujj_L20_M8000.txt
