import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBodyScreen extends StatelessWidget {
  const ProfileBodyScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var vokasiLightGrey = GoogleFonts.poppins(
      fontSize: 12.0,
      color: const Color(0xff8B8B8B),
    );
    var vkTextGrey = GoogleFonts.poppins(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: const Color(0xff484848),
    );
    var vkTextLightGrey = GoogleFonts.poppins(
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: const Color(0x80484848),
    );
    var vkTextCardLight = GoogleFonts.poppins(
      fontSize: 14.0,
      color: Colors.white,
      fontWeight: FontWeight.normal,
    );
    var vkTextCardBold = GoogleFonts.poppins(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(1.0),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: Offset(0, 4),
                ),
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: Color.fromARGB(255, 4, 79, 144),
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/profile_pic.jpeg'),
              radius: 50.0,
            ),
          ),
          const Spacer(),
          Text(
            'Raden Robiatul Surya',
            style: GoogleFonts.poppins(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: const Color(0xff484848),
            ),
          ),
          Text(
            '065120124.raden@unpak.ac.id',
            style: vokasiLightGrey,
          ),
          Text(
            '08986639200',
            style: vokasiLightGrey,
          ),
          const Spacer(),
          // Card for brief info
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 4, 79, 144),
              borderRadius: BorderRadius.circular(12.0),
            ),
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('NPM', style: vkTextCardLight),
                    const Spacer(),
                    Text('065120124', style: vkTextCardBold),
                    const SizedBox(width: 9.0),
                    const Icon(
                      Icons.copy,
                      color: Colors.white,
                      size: 18.0,
                    ),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text('Status', style: vkTextCardLight),
                    const Spacer(),
                    Text('Aktif', style: vkTextCardBold),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text('Shift', style: vkTextCardLight),
                    const Spacer(),
                    Text('Reguler', style: vkTextCardBold),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text('Semester', style: vkTextCardLight),
                    const Spacer(),
                    Text('6 (enam)', style: vkTextCardBold),
                  ],
                ),
                const Divider(color: Colors.white),
                Row(
                  children: [
                    Text('Program Studi', style: vkTextCardLight),
                    const Spacer(),
                    Text('Ilmu Komputer', style: vkTextCardBold),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              children: [
                Text('Nama Lengkap', style: vkTextGrey),
                const Spacer(),
                Text('Raden Robiatul Surya', style: vkTextLightGrey),
              ],
            ),
          ),
          const Divider(color: Color.fromARGB(255, 4, 79, 144)),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Row(
              children: [
                Text('Nama Panggilan', style: vkTextGrey),
                const Spacer(),
                Text('Roby', style: vkTextLightGrey),
              ],
            ),
          ),
          const Divider(color: Color.fromARGB(255, 4, 79, 144)),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Alamat Rumah', style: vkTextGrey),
                const SizedBox(height: 6.0),
                Text('Perum Griya Pgri 2 Blok AK no 1',
                  style: vkTextLightGrey,
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
