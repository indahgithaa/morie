import 'package:flutter/material.dart';

class Doctor {
  String price;
  String doctorName;
  String job;
  String rate;
  String totalClients;
  String imagePath;

  Doctor(this.price, this.doctorName, this.job, this.rate, this.totalClients,
      this.imagePath);
}

List<Doctor> doctors = [
  Doctor('Rp50.000', 'dr. Amrita Putri Santoso, Sp.KJ', 'Psychiatrist',
      '4.9/5.0', '491 client(s)', 'assets/amrita.jpg'),
  Doctor('Rp100.000', 'dr. Nadia Geraldine, Sp.OG', 'Obstetrician', '5.0/5.0',
      '211 client(s)', 'assets/nadia.jpg'),
];

class ConsultationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2fffe),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 61),
            Text(
              'Find Professionals',
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                height: 1.0416666667,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 232,
              height: 25,
              decoration: BoxDecoration(
                color: Color(0xffe3e8e8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 1, 13, 0),
                    width: 16,
                    height: 16,
                    child: Icon(Icons.search, size: 16),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                    child: Text(
                      'search a doctor or issue...',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1.9166666667,
                        fontStyle: FontStyle.italic,
                        color: Color(0xff707070),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    height: 1.6666666667,
                    color: Color(0xff000000),
                  ),
                ),
                Spacer(),
                Text(
                  'View All',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.9166666667,
                    color: Color(0xff6b90bb),
                  ),
                ),
              ],
            ),
            SizedBox(height: 17.5),
            Container(
              height: 25,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CategoryContainer('Mental Health'),
                    SizedBox(width: 11),
                    CategoryContainer('Pregnancy'),
                    SizedBox(width: 11),
                    CategoryContainer('Children'),
                    SizedBox(width: 11),
                    CategoryContainer('Nutritions'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: doctors.length,
                itemBuilder: (context, index) {
                  return DoctorCard(doctor: doctors[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryContainer extends StatelessWidget {
  final String category;

  const CategoryContainer(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 89,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff6dadf9),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
        child: Text(
          category,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            height: 1.9166666667,
            color: Color(0xffffffff),
          ),
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final Doctor doctor;

  const DoctorCard({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        padding: EdgeInsets.all(15), // Add padding for each card
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(doctor.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PriceTag(price: doctor.price),
                  SizedBox(height: 5),
                  Text(
                    doctor.doctorName,
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.0416666667,
                      color: Color(0xFF000000),
                    ),
                  ),
                  Text(
                    doctor.job,
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      color: Color(0xFF000000),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      ),
                      SizedBox(width: 4),
                      Text(
                        doctor.rate,
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        doctor.totalClients,
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Add your button functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF006EF9),
                      onPrimary: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40), // Wider button and centered horizontally
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide.none,
                      elevation: 0,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size(double.infinity, 0),
                    ),
                    child: Text('Chat Now'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PriceTag extends StatelessWidget {
  final String price;

  const PriceTag({required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 3,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 160, 203, 255).withOpacity(0.5),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        price,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 1.5,
          color: Color.fromARGB(255, 0, 112, 250),
        ),
      ),
    );
  }
}
