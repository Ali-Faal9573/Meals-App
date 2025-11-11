import 'package:flutter_riverpod/legacy.dart';

enum Filter { glutenFree, lactoseFree, vegetarian, vegan }

class FiltersProviderNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersProviderNotifier()
    : super({
        Filter.glutenFree: false,
        Filter.lactoseFree: false,
        Filter.vegetarian: false,
        Filter.vegan: false,
      });

  void setFilter(Filter filter, bool isActive) {
    state = {...state, filter: isActive};
  }
}

final filtersProvider = StateNotifierProvider(
  (ref) => FiltersProviderNotifier(),
);
