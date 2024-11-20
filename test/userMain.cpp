#include "printing.hpp"
#include "userMain.hpp"
#define LEVEL_1_IMPLEMENTED 0
#define LEVEL_2_IMPLEMENTED 1
#define LEVEL_3_IMPLEMENTED 1
#define LEVEL_4_IMPLEMENTED 0
#define LEVEL_5_IMPLEMENTED 1

#if LEVEL_2_IMPLEMENTED == 1
// TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)
#include "../test/Threads_C_API_test.hpp"
// TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)
#include "../test/Threads_CPP_API_test.hpp"
// TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)
#include "../test/System_Mode_test.hpp"
#endif

#if LEVEL_3_IMPLEMENTED == 1
// TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)
#include "../test/ConsumerProducer_C_API_test.hpp"
// TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)
#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp"
#endif

#if LEVEL_4_IMPLEMENTED == 1
// TEST 5 (zadatak 4., thread_sleep test C API)
#include "../test/ThreadSleep_C_API_test.hpp"
// TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

#if LEVEL_5_IMPLEMENTED == 1
// TEST 5 (zadatak 5., getThreadId());
#include "../test/getTreadIdModifikacija.hpp"
// TEST 6 (zadatak 6., SetMaximumThreads())
#include "../test/SetMaximumThread.hpp"
//test 10 joinAll
#include "joinAllModif.hpp"
//test 11 semPrior
#include "semPriorMod.hpp"
//test 12
#include "pingModif.hpp"
//test 13
#include "matricaModif.hpp"
//test 14
#include "ownerModif.hpp"
#endif


void userMain() {
    printString("Unesite broj testa? [1-14]\n");
    int test = 0;
    char c;
    while ((c = getc()) >= '0' && c <= '9') {
        test *= 10;
        test += c - '0';
    }

    if ((test >= 1 && test <= 2) || test == 7) {
        if (LEVEL_2_IMPLEMENTED == 0) {
            printString("Nije navedeno da je zadatak 2 implementiran\n");
            return;
        }
    }

    if (test >= 3 && test <= 4) {
        if (LEVEL_3_IMPLEMENTED == 0) {
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
        if (LEVEL_4_IMPLEMENTED == 0) {
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
#endif
            break;
        case 2:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_CPP_API_test();
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
#endif
            break;
        case 3:
#if LEVEL_3_IMPLEMENTED == 1
            producerConsumer_C_API();
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
#endif
            break;
        case 4:
#if LEVEL_3_IMPLEMENTED == 1
            producerConsumer_CPP_Sync_API();
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
#endif
            break;
        case 5:
#if LEVEL_4_IMPLEMENTED == 1
            testSleeping();
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
#endif
            break;
        case 6:
#if LEVEL_4_IMPLEMENTED == 1
            testConsumerProducer();
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
#endif
            break;
        case 7:
#if LEVEL_2_IMPLEMENTED == 1
            System_Mode_test();
            printString("Test se nije uspesno zavrsio\n");
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
#endif
            break;
        case 8:
#if LEVEL_5_IMPLEMENTED == 1
            getThreadIdMod();
            printString("TEST 5 getThreadId kompletan \n");
#endif
            break;
        case 9:
#if LEVEL_5_IMPLEMENTED == 1
            setMaximumThread();
            printString("TEST 9 semMaxThread kompletan\n");
#endif
            break;
        case 10:
#if LEVEL_5_IMPLEMENTED == 1
            joinAllModif();
            printString("TEST 10 joinAll kompletan\n");
#endif
            break;
        case 11:
#if LEVEL_5_IMPLEMENTED == 1
            semPriorModif();
            printString("TEST 11 semPrior kompletan\n");
#endif
            break;
        case 12:
#if LEVEL_5_IMPLEMENTED == 1
            pingMod();
            printString("TEST 12 pingMod kompletan\n");
#endif
            break;
        case 13:
#if LEVEL_5_IMPLEMENTED == 1
            matricaMod();
            printString("TEST 13 matricaMnozenje kompletan\n");
#endif
            break;
        case 14:
#if LEVEL_5_IMPLEMENTED == 1
            ownerMod();
            printString("TEST 14 ownerModifikacija kompletna\n");
#endif
            break;


        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
}