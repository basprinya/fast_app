import 'package:fast_app/models/global_model.dart';
import 'package:fast_app/views/detail_ui.dart';
import 'package:flutter/material.dart';

class PoliceUI extends StatelessWidget {
  const PoliceUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<GlobalModel> globalModel = [
      GlobalModel(
        name: 'นครบาลบางเสาธง',
        mobile: '024108260',
        image: '2-1.png',
        lat: 13.743528823083626,
        lng: 100.45992400062603,
      ),
      GlobalModel(
        name: 'นครบาลบางกอกน้อย',
        mobile: '024113035',
        image: '2-2.jpeg',
        lat: 13.760646012659912,
        lng: 100.47161209104577,
      ),
      GlobalModel(
        name: 'นครบาลบางกอกใหญ่',
        mobile: '024666696',
        image: '2-3.jpeg',
        lat: 13.74197102275844,
        lng: 100.48654663108336,
      ),
      GlobalModel(
        name: 'นครบาลพระราชวัง',
        mobile: '022245050',
        image: '2-4.jpeg',
        lat: 13.743638493123546,
        lng: 100.49444305455151,
      ),
      GlobalModel(
        name: 'นครบาล 6',
        mobile: '022231222',
        image: '2-5.jpeg',
        lat: 13.746445895361827,
        lng: 100.49936217048348,
      ),
      GlobalModel(
        name: 'นครบาลจักรวรรดิ',
        mobile: '022254094',
        image: '2-6.jpeg',
        lat: 13.741050730322199,
        lng: 100.50229546779727,
      ),
      GlobalModel(
        name: 'สมเด็จเจ้าพระยา',
        mobile: '024665031',
        image: '2-7.jpeg',
        lat: 13.731108141169623,
        lng: 100.50976052061888,
      ),
      GlobalModel(
        name: 'สำราญราษฎร์',
        mobile: '022262136',
        image: '2-8.jpeg',
        lat: 13.751564586145427,
        lng: 100.50374516869286,
      ),
      GlobalModel(
        name: 'ตำรวจรถไฟนพวงศ์',
        mobile: '022263495',
        image: '2-9.jpeg',
        lat: 13.746021325929265,
        lng: 100.51691200747187,
      ),
      GlobalModel(
        name: 'นครบาลดุสิต',
        mobile: '022415043',
        image: '2-10.jpeg',
        lat: 13.777642861680643,
        lng: 100.52089987519571,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        title: Text(
          "สถานีตำรวจ",
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
