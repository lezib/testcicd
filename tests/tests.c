#include <CUnit/CUnit.h>
#include <CUnit/Basic.h>

// Fonction de test pour vérifier si 1 == 1
void test_equality(void) {
    CU_ASSERT(1 == 1);
}
void test_fail(void) {
    CU_ASSERT(9 == 1);
}

int main() {
    // Initialisation du registre de test
    if (CUE_SUCCESS != CU_initialize_registry()) {
        return CU_get_error();
    }

    // Ajout d'une suite de tests
    CU_pSuite pSuite = CU_add_suite("Suite_1", NULL, NULL);
    if (NULL == pSuite) {
        CU_cleanup_registry();
        return CU_get_error();
    }

    // Ajout du test à la suite
    if (NULL == CU_add_test(pSuite, "test of 1 == 1", test_equality)) {
        CU_cleanup_registry();
        return CU_get_error();
    }

    if (NULL == CU_add_test(pSuite, "test of 9 == 1", test_fail)) {
        CU_cleanup_registry();
        return CU_get_error();
    }

    // Exécution des tests basiques
    CU_basic_set_mode(CU_BRM_VERBOSE);
    CU_basic_run_tests();

    // Nettoyage et fin
    CU_cleanup_registry();
    return CU_get_error();
}

