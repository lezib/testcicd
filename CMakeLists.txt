cmake_minimum_required(VERSION 3.10)

# Nom du projet
project(MyCProject C)

# Activer les tests avec une option
option(TESTS "Build tests" OFF)

# Rechercher SDL2 et SDL2_image
find_package(SDL2 REQUIRED)
# find_package(SDL2_image REQUIRED)

# Ajouter les fichiers sources principaux
add_executable(my_project calculator.c)

# Lier SDL2 et SDL2_image au projet
# target_link_libraries(my_project SDL2 SDL2_image)
target_link_libraries(my_project SDL2)

# Ajouter les tests si l'option est activée
if(TESTS)
  # Rechercher CUnit
  find_package(CUnit REQUIRED)

  # Ajouter les fichiers de tests
  add_executable(testsuite tests/test.c)

  # Lier CUnit à l'exécutable des tests
  # target_link_libraries(testsuite CUnit SDL2 SDL2_image)
  target_link_libraries(testsuite CUnit SDL2)
endif()

