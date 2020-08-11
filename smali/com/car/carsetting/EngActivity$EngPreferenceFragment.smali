.class public Lcom/car/carsetting/EngActivity$EngPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "EngActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/EngActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EngPreferenceFragment"
.end annotation


# static fields
.field private static final BAN_ACC_KEY:Ljava/lang/String; = "ban_acc"

.field static final BARCODE:Ljava/lang/String; = "barcode"

.field private static final HEADLESS:Z

.field private static final LOG_ALWAYS_KEY:Ljava/lang/String; = "log_always"

.field private static final LOG_CMDLINE:Ljava/lang/String; = "cmdline"

.field private static final LOG_KEY:Ljava/lang/String; = "log"

.field static final MORE_KEY:Ljava/lang/String; = "more"

.field private static final MTK_ENG_ENTER:Ljava/lang/String; = "start_mtk_eng"

.field private static final SHOW_CPU_INFO:Ljava/lang/String; = "show_cpu_info"

.field private static final SHOW_SYS_INFO:Ljava/lang/String; = "show_sys_info"

.field private static final USB_FUNC_KEY:Ljava/lang/String; = "usb_func"

.field private static final VOICE_ENGINE_KEY:Ljava/lang/String; = "voice_engine"


# instance fields
.field private mBanAccPreference:Landroid/preference/CheckBoxPreference;

.field mBarCodePreference:Landroid/preference/Preference;

.field private mCmdlinePreference:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mCountClickCmdLine:I

.field private mLogAlwaysPreference:Landroid/preference/CheckBoxPreference;

.field private mLogPreference:Landroid/preference/Preference;

.field mMorePreference:Landroid/preference/Preference;

.field private mShowCpuInfoPreference:Landroid/preference/CheckBoxPreference;

.field private mShowSysInfoPreference:Landroid/preference/CheckBoxPreference;

.field private mToast:Landroid/widget/Toast;

.field private mUsbFuncPreference:Landroid/preference/ListPreference;

.field private mVoiceEnginePreference:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product.class"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "headless"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->HEADLESS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mToast:Landroid/widget/Toast;

    const/4 v0, 0x5

    iput v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mCountClickCmdLine:I

    return-void
.end method

.method public static getCpuType()Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x3e8

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v4, v3, v4

    const-string v5, "Hardware"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 v11, 0x7f040000

    invoke-virtual {p0, v11}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iput-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v11, "usb_func"

    invoke-virtual {p0, v11}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mUsbFuncPreference:Landroid/preference/ListPreference;

    const-string v11, "voice_engine"

    invoke-virtual {p0, v11}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mVoiceEnginePreference:Landroid/preference/ListPreference;

    const-string v11, "log_always"

    invoke-virtual {p0, v11}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mLogAlwaysPreference:Landroid/preference/CheckBoxPreference;

    const-string v11, "ban_acc"

    invoke-virtual {p0, v11}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mBanAccPreference:Landroid/preference/CheckBoxPreference;

    const-string v11, "show_cpu_info"

    invoke-virtual {p0, v11}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mShowCpuInfoPreference:Landroid/preference/CheckBoxPreference;

    const-string v11, "show_sys_info"

    invoke-virtual {p0, v11}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mShowSysInfoPreference:Landroid/preference/CheckBoxPreference;

    const-string v11, "log"

    invoke-virtual {p0, v11}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mLogPreference:Landroid/preference/Preference;

    const-string v11, "cmdline"

    invoke-virtual {p0, v11}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mCmdlinePreference:Landroid/preference/Preference;

    const-string v11, "more"

    invoke-virtual {p0, v11}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mMorePreference:Landroid/preference/Preference;

    const-string v11, "barcode"

    invoke-virtual {p0, v11}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mBarCodePreference:Landroid/preference/Preference;

    const-string v11, "ro.acc.can"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {p0}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mBanAccPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    iget-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v12, "com.android.settings"

    invoke-static {v11, v12}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mMorePreference:Landroid/preference/Preference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v12, "com.mediatek.engineermode"

    invoke-static {v11, v12}, Lcom/car/carsetting/Utils;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v12, "com.sprd.engineermode"

    invoke-static {v11, v12}, Lcom/car/carsetting/Utils;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {p0}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "start_mtk_eng"

    invoke-virtual {p0, v12}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    const-string v12, "persist.usb.mode"

    sget-boolean v11, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->HEADLESS:Z

    if-eqz v11, :cond_6

    const-string v11, "checkwhenboot"

    :goto_2
    invoke-static {v12, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "host"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "device"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "checkwhenboot"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "auto"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v9, "host"

    :cond_1
    iget-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mUsbFuncPreference:Landroid/preference/ListPreference;

    invoke-virtual {v11, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mUsbFuncPreference:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mUsbFuncPreference:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v10

    iget-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mVoiceEnginePreference:Landroid/preference/ListPreference;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mVoiceEnginePreference:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mVoiceEnginePreference:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v11, "persist.auto.log"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mLogAlwaysPreference:Landroid/preference/CheckBoxPreference;

    const-string v11, "0"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v11, "debug.disp.cpu_info"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mShowCpuInfoPreference:Landroid/preference/CheckBoxPreference;

    const-string v11, "0"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    iget-object v12, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mShowCpuInfoPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v11, "debug.sysevent.show"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iget-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mShowSysInfoPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v11, "/proc/cmdline"

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x400

    new-array v1, v11, [B

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8, v1}, Ljava/io/FileInputStream;->read([B)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Lcom/car/carsetting/EngActivity;->access$000()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cmdline comtent:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mCmdlinePreference:Landroid/preference/Preference;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->getCpuType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    return-void

    :cond_2
    const-string v11, "sys.acc.ban"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v12, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mBanAccPreference:Landroid/preference/CheckBoxPreference;

    const-string v11, "0"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v12, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_3
    const/4 v11, 0x0

    goto :goto_6

    :cond_4
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x10200000

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v11, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v12, "com.sprd.engineermode"

    invoke-static {v11, v12}, Lcom/car/carsetting/Utils;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v2, Landroid/content/ComponentName;

    const-string v11, "com.sprd.engineermode"

    const-string v12, "com.sprd.engineermode.EngineerModeActivity"

    invoke-direct {v2, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_7
    const-string v11, "start_mtk_eng"

    invoke-virtual {p0, v11}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_5
    new-instance v2, Landroid/content/ComponentName;

    const-string v11, "com.mediatek.engineermode"

    const-string v12, "com.mediatek.engineermode.EngineerMode"

    invoke-direct {v2, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_7

    :cond_6
    const-string v11, "host"

    goto/16 :goto_2

    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_4

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mLogPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f08002b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "sys.start.catch_log"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mMorePreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mBarCodePreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/car/carsetting/BarCodeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mLogAlwaysPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mLogAlwaysPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "persist.auto.log"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "persist.auto.log"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mShowSysInfoPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mShowSysInfoPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "debug.sysevent.show"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "debug.sysevent.show"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mShowCpuInfoPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mShowCpuInfoPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "debug.disp.cpu_info"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v0, "debug.disp.cpu_info"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mCmdlinePreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_b

    iget v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mCountClickCmdLine:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mCountClickCmdLine:I

    iget v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mCountClickCmdLine:I

    if-nez v0, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mCountClickCmdLine:I

    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f08006f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "debug.telnetd.enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mBanAccPreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mBanAccPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "sys.acc.ban"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sys.car.acc"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "sys.acc.ban"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/car/carsetting/EngActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSharedPreferenceChanged: key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "usb_func"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mUsbFuncPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "persist.usb.mode"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mUsbFuncPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mUsbFuncPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "device"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "/sys/power/usb_switch_control"

    invoke-static {v3, v2}, Lcom/car/carsetting/Utils;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "voice_engine"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mVoiceEnginePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "persist.voiceassitant.engine"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mVoiceEnginePreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mVoiceEnginePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f080070

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.car.voiceassitant.restart"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/carsetting/EngActivity$EngPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
