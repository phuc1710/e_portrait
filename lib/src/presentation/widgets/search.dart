import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(final BuildContext context) => Hero(
    tag: 'search',
    child: SearchBar(
          elevation: const MaterialStatePropertyAll(0),
          hintText: 'search...',
          hintStyle: MaterialStatePropertyAll(
            Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.black54,
                ),
          ),
          side: const MaterialStatePropertyAll(BorderSide()),
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          constraints: const BoxConstraints(),
          padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 4),
          ),
          trailing: [
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              splashRadius: 20,
              icon: const Icon(
                IconlyLight.search,
                color: Colors.black54,
              ),
            ),
          ],
        ),
  );
}
