import 'package:flutter/material.dart';
import 'package:flutterecommerce/common/widgets/image/circular_image.dart';
import 'package:flutterecommerce/features/personalizations/screens/profile/profile.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CustomUserProfileTile extends StatelessWidget {
  const CustomUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CustomCirculaimage(
        image: "assets/images/banner/programmer.png",
        width: 50,
        height: 50,
      ),
      title: Text(
        "Coding with Anik",
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.apply(color: Colors.white),
      ),
      subtitle: Text(
        "support456@gmail.com",
        style:
            Theme.of(context).textTheme.bodyMedium?.apply(color: Colors.white),
      ),
      trailing: IconButton(
        onPressed: () {
          Get.to(ProfileScreen());
        },
        icon: Icon(Iconsax.edit),
        color: Colors.white,
      ),
    );
  }
}
