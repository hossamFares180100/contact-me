import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/social_grid.dart';
import '../widgets/social_media_icon.dart';

class MyContacts extends StatelessWidget {
  final Map<String,String> social={
    "whatsapp.png":"https://wa.me/+201114652236",
    "facebook.png":"https://www.facebook.com/profile.php?id=100008427044648&mibextid=ZbWKwL",
    "gmail.png":"mailto:hossamfares180100@gmail.com?subject=emails&body=Dear%20Eng Hossam,%0A",
    "github.png":"https://github.com/hossamFares180100",
    "linkedin.png":"https://www.linkedin.com/in/hossam-fares-452a802a6/",
    "instagram.png":"https://l.facebook.com/l.php?u=https%3A%2F%2Fwww.instagram.com%2Fhossam_f_alsayed%2Fprofilecard%2F%3Figsh%3DemNudndhampoN2M0%26fbclid%3DIwZXh0bgNhZW0CMTAAAR0J1Pwb5kc7NQPlODr2dt-BLSt-YEvdEmGHR-Aj9tkMFEArZO940afRxf4_aem_kFirOzJGEuyyDhTu4QQc3A&h=AT1iVOzux-dhGZXAl1dLV-PuTHi_GTLSJNUvwl473Y2n1zYSoNMhd749jt9nF27Wd94ybxvr0pmxjIfQkwR-dCZ8264MMvlep-4QQnQu74Nmp2MWmqljHQeCN4HVfE4V8vreNrh0b3wHCK4",
    "tiktok.png":"https://l.facebook.com/l.php?u=https%3A%2F%2Fwww.tiktok.com%2F%40hossamfares180100%3F_t%3D8sfEukurrsI%26_r%3D1%26fbclid%3DIwZXh0bgNhZW0CMTAAAR2xkqF4tGNB5p9rG8gvAdMNVuxyQXjwRVJ4KRWmErqhIjnwf-txuayfkOE_aem_m60o_BqDcjvRB2di4RjyvA&h=AT0sFelNYkVK9voRNo7iJ0nRcQAEOfsthL5JFJWeHNv0kCJOuMccAqToprfpMTkfeMUlZiHAfxShnNQGk72sxR_UlDbDOJELuxlMyh0uvaTgclCWtFsgRriuCSXv5jRntsm57A",
    "telegram.png":"https://l.facebook.com/l.php?u=http%3A%2F%2Ft.me%2FHossamFares180%3Ffbclid%3DIwZXh0bgNhZW0CMTAAAR0y0-4q02f8iM_tZt3uH1PB-74u-Du-Jk2qtoDu0U1M89FT9ishaeOqm_o_aem_oTsU1d8crmFkSDfB95nBHg&h=AT2REzHobjfXZqx2YgOblNgBCnyVArL_vEtdQ67f92dvEgkC2O37Iz8HrAXDB7xlq33-5yEkhvNTKWc7_aZBPJ0AjEWQWnKdG5IIbDpDLeBtwoq4XCKudzRq64BQgl9y-JosJg",
    "snapchat.png":"https://l.facebook.com/l.php?u=https%3A%2F%2Fwww.snapchat.com%2Fadd%2Fhossamfares20%3Fshare_id%3Dyu_4b0em-FM%26locale%3Den-EG%26fbclid%3DIwZXh0bgNhZW0CMTAAAR2nn-HiFDwEcQlZWIij5Tl_aRzx6oW1LFy2lTw32ZmDzU7m24HwZjfUqqI_aem_8fMEq4j0x_A6okHhRbyNbA&h=AT2REzHobjfXZqx2YgOblNgBCnyVArL_vEtdQ67f92dvEgkC2O37Iz8HrAXDB7xlq33-5yEkhvNTKWc7_aZBPJ0AjEWQWnKdG5IIbDpDLeBtwoq4XCKudzRq64BQgl9y-JosJg"
  };



  MyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 7, 30),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage("assets/profile2.jpg"),
                radius: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Hossam Fares",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "+201114652236",
                    style: TextStyle(fontSize: 22, color: Colors.grey),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.phone,
                      color: Colors.grey,
                      size: 30,
                    ),
                    onPressed: () {
                      //flutter pub add url_launcher
                      launchUrl(Uri.parse("tel:+201114652236"));
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SocialGrid(social: social),
          
            ],
          ),
        ),
      ),
    );
  }
}
