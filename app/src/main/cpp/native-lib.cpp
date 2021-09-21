/**
 * Generated by FakerAndroid for doc or help by https://github.com/Efaker/FakerAndroid
 */
#include <jni.h>
#include <string>
#include "common.h"

#include <fstream>
#include <sstream>
#if defined(__aarch64__)
#include "Il2cpp-Scaffolding-ARM64/il2cpp-init.h"
#include "Il2cpp-Scaffolding-ARM64/il2cpp-appdata.h"
#elif defined(__arm__)
#include "Il2cpp-Scaffolding-ARM/il2cpp-init.h"
#include "Il2cpp-Scaffolding-ARM/il2cpp-appdata.h"
#elif defined(__i386__)
#include "Il2cpp-Scaffolding-x86/il2cpp-init.h"
#include "Il2cpp-Scaffolding-x86/il2cpp-appdata.h"
#elif defined(__x86_64__)
#include "Il2cpp-Scaffolding-x86_64/il2cpp-init.h"
#include "Il2cpp-Scaffolding-x86_64/il2cpp-appdata.h"
#endif
#include "include/faker.h"
using namespace app;
JavaVM *global_jvm;

JNIEXPORT jint JNI_OnLoad(JavaVM *vm, void *reserved) {
    JNIEnv *env;
    if ((*vm).GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_6) == JNI_OK) {
        LOGI("JNI_OnLoad %s","sucess");
    }else{
        LOGI("JNI_OnLoad %s","erro");
    }
    global_jvm = vm;

    return onJniLoad(vm,reserved);
}

/**
 * this a util cover c# string to c string
 * @param str
 * @return
 */
const char* coverIl2cppString2Char(Il2CppString *str){
    MonoString *monoString = reinterpret_cast<MonoString *>(str);
    const char *s = monoString->toChars();
    return s;
}


MonoString* coverChar2Il2cppString(const char *c){
    MonoString *monoString =  new MonoString();
    monoString->setMonoString(c);
    return monoString;
}

static jobject callBack;
/**
 * in your replace_call method you can call this method to call java
 * @param event
 */
void callJava(const char *event) {
    if(callBack==NULL) {
        return;
    }
    JNIEnv* env;
    global_jvm->GetEnv(reinterpret_cast<void **>(&env), JNI_VERSION_1_4);
    jclass clazz = env->GetObjectClass(callBack);
    jmethodID onCall = env->GetMethodID(clazz, "onJniCall", "(Ljava/lang/String;)V");
    jstring envent = env->NewStringUTF(event);
    env->CallVoidMethod(callBack, onCall, envent);
    env->DeleteLocalRef(envent);
}


/**
 * this is a demo hook replace call method
 * @param klass
 * @return
 */
//bool HookedBehaviour_get_isActiveAndEnabled(Behaviour *klass) {
//    bool  b = Behaviour_get_isActiveAndEnabled(klass, NULL);
//    if(!b){
//        return b;
//    }
//    GameObject *gameObject = Component_get_gameObject(reinterpret_cast<Component *>(klass), NULL);
//    if(gameObject==nullptr){
//        return b;
//    }
//    LOGI("class %p---- HookedBehaviour_get_isActiveAndEnabled GameObject Mame: %s",klass,"");
//    String *name = Object_1_get_name(reinterpret_cast<Object_1 *>(gameObject), NULL);
//
//    if(name== nullptr){
//        return b;
//    }
//    const char *s = coverIl2cppString2Char(reinterpret_cast<Il2CppString *>(name));
//
//    LOGI("class %p---- HookedBehaviour_get_isActiveAndEnabled GameObject Mame: %s",klass,s);
//    if(strcmp(s,"Share")==0){
//
//    }
//    return b;
//}

extern "C"
JNIEXPORT void JNICALL
Java_com_fakerandroid_boot_FakerApp_fakeApp(JNIEnv *env, jobject thiz, jobject application) {
    /**
     * you can do yor hook work here
     * below  is demo code demo code hook libil2cpp.so
     */
    long base = baseImageAddr("libil2cpp.so");
    LOGE("baseIamgeAddr : %ld",base);
    init_il2cpp(base);
    //fakeCpp((void *) Behaviour_get_isActiveAndEnabled, (void *)HookedBehaviour_get_isActiveAndEnabled ,reinterpret_cast<void **>(&Behaviour_get_isActiveAndEnabled));
}
extern "C"
JNIEXPORT void JNICALL
Java_com_fakerandroid_boot_FakerApp_fakeDex(JNIEnv *env, jobject thiz, jobject base) {
    fakeDex(env,base,"dex");//dex collapse feature support
}

extern "C"
JNIEXPORT void JNICALL
Java_com_fakerandroid_boot_FakerActivity_registerCallBack(JNIEnv *env, jobject thiz,jobject object) {
    /**
     * init the callback global for other c++ method to call
     */
    callBack = env->NewGlobalRef(object);//


}