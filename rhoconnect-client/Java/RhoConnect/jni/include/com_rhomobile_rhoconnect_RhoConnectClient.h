/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class com_rhomobile_rhoconnect_RhoConnectClient */

#ifndef _Included_com_rhomobile_rhoconnect_RhoConnectClient
#define _Included_com_rhomobile_rhoconnect_RhoConnectClient
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     com_rhomobile_rhoconnect_RhoConnectClient
 * Method:    initialize
 * Signature: ([Lcom/rhomobile/rhosync/RhomModel;)V
 */
JNIEXPORT void JNICALL Java_com_rhomobile_rhoconnect_RhoConnectClient_initialize
  (JNIEnv *, jobject, jobjectArray);

/*
 * Class:     com_rhomobile_rhoconnect_RhoConnectClient
 * Method:    setSyncServer
 * Signature: (Ljava/lang/String;)V
 */
JNIEXPORT void JNICALL Java_com_rhomobile_rhoconnect_RhoConnectClient_setSyncServer
  (JNIEnv *, jobject, jstring);

/*
 * Class:     com_rhomobile_rhoconnect_RhoConnectClient
 * Method:    setThreadedMode
 * Signature: (Z)V
 */
JNIEXPORT void JNICALL Java_com_rhomobile_rhoconnect_RhoConnectClient_setThreadedMode
  (JNIEnv *, jobject, jboolean);

/*
 * Class:     com_rhomobile_rhoconnect_RhoConnectClient
 * Method:    setPollInterval
 * Signature: (I)V
 */
JNIEXPORT void JNICALL Java_com_rhomobile_rhoconnect_RhoConnectClient_setPollInterval
  (JNIEnv *, jobject, jint);

/*
 * Class:     com_rhomobile_rhoconnect_RhoConnectClient
 * Method:    getPollInterval
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_rhomobile_rhoconnect_RhoConnectClient_getPollInterval
  (JNIEnv *, jobject);

/*
 * Class:     com_rhomobile_rhoconnect_RhoConnectClient
 * Method:    setBulkSyncState
 * Signature: (I)V
 */
JNIEXPORT void JNICALL Java_com_rhomobile_rhoconnect_RhoConnectClient_setBulkSyncState
  (JNIEnv *, jobject, jint);

/*
 * Class:     com_rhomobile_rhoconnect_RhoConnectClient
 * Method:    getBulkSyncState
 * Signature: ()I
 */
JNIEXPORT jint JNICALL Java_com_rhomobile_rhoconnect_RhoConnectClient_getBulkSyncState
  (JNIEnv *, jobject);

/*
 * Class:     com_rhomobile_rhoconnect_RhoConnectClient
 * Method:    setConfigString
 * Signature: (Ljava/lang/String;Ljava/lang/String;)V
 */
JNIEXPORT void JNICALL Java_com_rhomobile_rhoconnect_RhoConnectClient_setConfigString
  (JNIEnv *, jobject, jstring, jstring);

/*
 * Class:     com_rhomobile_rhoconnect_RhoConnectClient
 * Method:    getConfigString
 * Signature: (Ljava/lang/String;)Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_rhomobile_rhoconnect_RhoConnectClient_getConfigString
  (JNIEnv *, jobject, jstring);

/*
 * Class:     com_rhomobile_rhoconnect_RhoConnectClient
 * Method:    initDatabase
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_com_rhomobile_rhoconnect_RhoConnectClient_initDatabase
  (JNIEnv *, jobject);

/*
 * Class:     com_rhomobile_rhoconnect_RhoConnectClient
 * Method:    databaseFullResetAndLogout
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_com_rhomobile_rhoconnect_RhoConnectClient_databaseFullResetAndLogout
  (JNIEnv *, jobject);

/*
 * Class:     com_rhomobile_rhoconnect_RhoConnectClient
 * Method:    isLoggedIn
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_com_rhomobile_rhoconnect_RhoConnectClient_isLoggedIn
  (JNIEnv *, jobject);

/*
 * Class:     com_rhomobile_rhoconnect_RhoConnectClient
 * Method:    loginWithUser
 * Signature: (Ljava/lang/String;Ljava/lang/String;)Lcom/rhomobile/rhosync/RhoSyncNotify;
 */
JNIEXPORT jobject JNICALL Java_com_rhomobile_rhoconnect_RhoConnectClient_loginWithUser
  (JNIEnv *, jobject, jstring, jstring);

/*
 * Class:     com_rhomobile_rhoconnect_RhoConnectClient
 * Method:    syncAll
 * Signature: ()Lcom/rhomobile/rhosync/RhoSyncNotify;
 */
JNIEXPORT jobject JNICALL Java_com_rhomobile_rhoconnect_RhoConnectClient_syncAll
  (JNIEnv *, jobject);

/*
 * Class:     com_rhomobile_rhoconnect_RhoConnectClient
 * Method:    nativeInit
 * Signature: (Ljava/lang/String;Ljava/lang/String;)V
 */
JNIEXPORT void JNICALL Java_com_rhomobile_rhoconnect_RhoConnectClient_nativeInit
  (JNIEnv *, jclass/*, jstring, jstring*/);

#ifdef __cplusplus
}
#endif
#endif