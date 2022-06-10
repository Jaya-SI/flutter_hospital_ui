import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Stack(
          children: [
            Image.asset('assets/rumah_sakit.png'),
            Container(
              margin: EdgeInsets.only(top: 190),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffF1F1F5),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffF1F1F5),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff222222),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffF1F1F5),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffF1F1F5),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    listIcon() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/icon_pendaftaran.png',
                    width: 24,
                  ),
                  Text(
                    'Pendaftaran',
                  )
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  Image.asset(
                    'assets/icon_riwayat.png',
                    width: 24,
                  ),
                  Text(
                    'Riwayat Pendaftaran',
                  )
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  Image.asset(
                    'assets/icon_jadwal.png',
                    width: 24,
                  ),
                  Text(
                    'Jadwal Dokter',
                  )
                ],
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  Image.asset(
                    'assets/icon_tempat.png',
                    width: 24,
                  ),
                  Text(
                    'Ketersediaan Tempat',
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    artikel() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Artikel Kesehatan',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/artikel.png',
                        width: 240,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Daftar Rumah Sakit Terbaik\n di Indonesia',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/artikel.png',
                        width: 240,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Pusat Data & Informasi PERSI \n Indonesia',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    infoTerkini() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Info Terkini',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/info.png',
                        width: 300,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Kementerian Kesehatan Republik Indonesia',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/info.png',
                        width: 300,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Kementerian Kesehatan Republik Indonesia',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          listIcon(),
          artikel(),
          infoTerkini(),
        ],
      ),
    );
  }
}
