import 'package:desain_ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    cutomBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Icon(
                    Icons.home,
                  ),
                  width: 21,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Icon(Icons.payment),
                  width: 21,
                ),
                label: 'Payment',
              ),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Icon(
                      Icons.domain_add_sharp,
                    ),
                    width: 21,
                  ),
                  label: 'Activity'),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Icon(
                    Icons.person,
                  ),
                  width: 21,
                ),
                label: 'Akun',
              ),
            ],
          ),
        ),
      );
    }

    cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.qr_code_scanner,
        ),
      );
    }

    return Scaffold(
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: cutomBottomNav(),
      appBar: AppBar(
        title: Text('HOSPITAL GENRAL'),
      ),
      body: HomePage(),
    );
  }
}
