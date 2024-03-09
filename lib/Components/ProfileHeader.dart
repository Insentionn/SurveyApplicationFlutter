import 'package:flutter/material.dart';
import '../Components/Outsourcedcomponenets/Catergory2.dart';
import '../States/Indexofcategory.dart';


class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});
    void updateGlobalInt(int newValue) {
    globalInt.value = newValue;
    }
  @override
  Widget build(BuildContext context) {

    return Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                    gradient: LinearGradient(
                      colors: [Color(0xFF6A6CF8), Color(0xFF4B4E7E)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  height: 275,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Row(
                          children: [
                            Text(
                              "My Profile",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.white,
                              width: 4,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(11),
                            child: const Image(
                              image: AssetImage('assets/profile.jpg'),
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "mf8131692@gmail.com",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        const Text(
                          "Member since 3/4/2024",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        const Text(
                          "Your Referral Code : 5215df1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 10),
                        ToggleTextBtnsFb1(
                          texts: const [
                            Text('Summary',
                                style: TextStyle(color: Colors.white)),
                            Text('My Bonus',
                                style: TextStyle(color: Colors.white)),
                            Text('About me',
                                style: TextStyle(color: Colors.white)),
                          ],
                          selected: (index) {
                            // Handle the selection, you can use the index here.
                            updateGlobalInt(index);
                          },
                          selectedColor: Colors.blue,
                          multipleSelectionsAllowed: false,
                          stateContained: true,
                          canUnToggle: false,
                        ),
                      ],
                    ),
                  ),
                );
  }
}