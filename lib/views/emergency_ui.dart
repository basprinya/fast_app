import 'package:fast_app/models/global_model.dart';
import 'package:fast_app/views/detail_ui.dart';
import 'package:flutter/material.dart';

class EmergencyUI extends StatelessWidget {
  const EmergencyUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<GlobalModel> globalModel = [
      GlobalModel(
        name: 'ราชพิพัฒน์',
        mobile: '024212222',
        image: '1-1.jpeg',
        lat: 13.731198843684991,
        lng: 100.36684814238,
      ),
      GlobalModel(
        name: 'วิชัยเวช อินเตอร์เนชั่นแนล',
        mobile: '024416999',
        image: '1-2.jpeg',
        lat: 13.708094941389996,
        lng: 100.36092038621838,
      ),
      GlobalModel(
        name: ' อินเตอร์เมดิคัล แคร์ แอนด์ แล็บ',
        mobile: '028650044',
        image: '1-3.png',
        lat: 13.738504151494615,
        lng: 100.44489796375183,
      ),
      GlobalModel(
        name: 'พญาไท 3',
        mobile: '024671111',
        image: '1-4.jpeg',
        lat: 13.723035525786008,
        lng: 100.46405394011923,
      ),
      GlobalModel(
        name: 'สหวิทยาการมะลิ',
        mobile: '020891111',
        image: '1-5.jpeg',
        lat: 13.672935987276746,
        lng: 100.42428194650927,
      ),
      GlobalModel(
        name: 'บางขุนเทียน 1',
        mobile: '024772291',
        image: '1-6.jpeg',
        lat: 13.700110900780949,
        lng: 100.47005356635876,
      ),
      GlobalModel(
        name: 'รัชดา-ท่าพระ',
        mobile: '024665031',
        image: '1-7.jpeg',
        lat: 13.71734868884453,
        lng: 100.47751656914227,
      ),
      GlobalModel(
        name: 'สมเด็จพระปิ่นเกล้า',
        mobile: '024600000',
        image: '1-8.jpeg',
        lat: 13.710893403316668,
        lng: 100.48476945207283,
      ),
      GlobalModel(
        name: 'สมิติเวช ธนบุรี',
        mobile: '024389000',
        image: '1-9.jpeg',
        lat: 13.714460244032106,
        lng: 100.48956716647015,
      ),
      GlobalModel(
        name: 'ศิริราช ปิยมหาราชการุณย์',
        mobile: '024191000',
        image: '1-10.jpeg',
        lat: 13.760009766839882,
        lng: 100.48564272860487,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        title: Text(
          "โรงพยาบาล",
          style: TextStyle(
              color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 2),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 237, 237, 237),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 175, 175, 175).withOpacity(0.8),
              spreadRadius: 10,
              blurRadius: 15,
              offset: Offset(0, 6), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: globalModel.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: ClipOval(
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(30), // Image radius
                        child: Image.asset(
                            'assets/images/${globalModel[index].image}',
                            fit: BoxFit.cover),
                      ),
                    ),

                    /* Image.asset(
                      'assets/images/${globalModel[index].image}',
                    ), */
                    title: Text(
                      globalModel[index].name!,
                    ),
                    subtitle: Text(
                      globalModel[index].mobile!,
                    ),
                    trailing: Icon(
                      Icons.navigate_next_outlined,
                      color: Colors.red,
                      size: 40.0,
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailUI(
                            name: globalModel[index].name,
                            mobile: globalModel[index].mobile,
                            image: globalModel[index].image,
                            lat: globalModel[index].lat,
                            lng: globalModel[index].lng,
                          ),
                        ),
                      ),
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
