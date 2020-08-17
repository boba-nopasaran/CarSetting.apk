.class public Lcom/car/carsetting/OtherFragment;
.super Landroid/preference/PreferenceFragment;
.source "OtherFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final ACTION_OTA_DOWNLOAD:Ljava/lang/String; = "com.car.otadownload"

.field static final ACTION_OTA_PROGRESS:Ljava/lang/String; = "com.car.otaprogress"

.field static final APP_KEY:Ljava/lang/String; = "app"

.field static final AUTOSLEEPTIME_KEY:Ljava/lang/String; = "autosleep_time"

.field static final DVRSLOW_KEY:Ljava/lang/String; = "dvrslow_time"

.field static final FACTORY_KEY:Ljava/lang/String; = "factory"

.field static final KEY_BAIDU_ENBALE:Ljava/lang/String; = "baidu_enable"

.field static final KEY_CHECK_VERSION:Ljava/lang/String; = "check_version"

.field static final KEY_GSENSOR_ENBALE:Ljava/lang/String; = "gsensor_enable"

.field static final KEY_ONLINE_UPDATE:Ljava/lang/String; = "online_update"

.field static final KEY_SENSITIVE:Ljava/lang/String; = "sensitive"

.field static final KEY_SOCOL_ENBALE:Ljava/lang/String; = "socol_enable"

.field static final KEY_UPGRADE_SYSTEM:Ljava/lang/String; = "upgrade_system"

.field static final KEY_VIDEO_LOCK_ENBALE:Ljava/lang/String; = "video_lock_enable"

.field static final LANGUGAE_KEY:Ljava/lang/String; = "language"

.field static final MORE_KEY:Ljava/lang/String; = "more"

.field static final MSG_RESET_COUNT:I = 0x1

.field static final PROP_GSENSOR:Ljava/lang/String; = "persist.car.sensitive"

.field static final PROP_GSENSOR_DEFAULT:Ljava/lang/String; = "18,16,14,127,100,0"

.field static final SCREENOFFTIME_KEY:Ljava/lang/String; = "screenoff_time"

.field static final SCREENSAVETIME_KEY:Ljava/lang/String; = "screensave_time"

.field static final SERIAL_KEY:Ljava/lang/String; = "serial"

.field private static final TAG:Ljava/lang/String; = "CarSetting.OtherFragment"

.field static final TIME_KEY:Ljava/lang/String; = "time"

.field static final VERSION_KEY:Ljava/lang/String; = "version"

.field static final VERSION_NAME:Ljava/lang/String; = "ro.mediatek.version.release"

.field static final isOversea:Z


# instance fields
#by boba 16.08.2020
#sensitive level
.field mSensLevls:Landroid/preference/EditTextPreference;

.field mAppPreference:Landroid/preference/Preference;

.field mAutoSleepTimePrefence:Landroid/preference/ListPreference;

.field mBaiduEnable:Lcom/car/carsetting/SwitchPreference;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCatchLogToast:Landroid/widget/Toast;

.field mCheckVersionPreference:Landroid/preference/Preference;

.field mCheckVersionToast:Landroid/widget/Toast;

.field mContext:Landroid/content/Context;

.field mCountClickAdb:I

.field mCountClickVersion:I

.field mDvrSlowTimePrefence:Landroid/preference/ListPreference;

.field mFactoryPreference:Landroid/preference/Preference;

.field mGsensorEnable:Landroid/preference/CheckBoxPreference;

.field mHandler:Landroid/os/Handler;

.field mLangugaePreference:Landroid/preference/Preference;

.field mLockEnable:Landroid/preference/CheckBoxPreference;

.field mMorePreference:Landroid/preference/Preference;

.field private final mObserver:Landroid/database/ContentObserver;

.field mOnlineUpdatePreference:Lcom/car/carsetting/IconPreference;

.field mScreenOffTimePrefence:Landroid/preference/ListPreference;

.field mScreenSaveTimePrefence:Landroid/preference/ListPreference;

.field mSerialPreference:Landroid/preference/Preference;

.field mSocolEnable:Lcom/car/carsetting/SwitchPreference;

.field mTimePreference:Landroid/preference/Preference;

.field private mToast:Landroid/widget/Toast;

.field mUpdateScreen:Landroid/preference/Preference;

.field mUpgradeSystemPreference:Landroid/preference/Preference;

.field mVersionPreference:Landroid/preference/Preference;

.field mVoicePromptEnabled:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.market.area"

    const-string v1, "china"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oversea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/carsetting/OtherFragment;->isOversea:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x5

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/carsetting/OtherFragment;->mVoicePromptEnabled:Z

    iput-object v2, p0, Lcom/car/carsetting/OtherFragment;->mCatchLogToast:Landroid/widget/Toast;

    iput-object v2, p0, Lcom/car/carsetting/OtherFragment;->mCheckVersionToast:Landroid/widget/Toast;

    iput v1, p0, Lcom/car/carsetting/OtherFragment;->mCountClickVersion:I

    iput v1, p0, Lcom/car/carsetting/OtherFragment;->mCountClickAdb:I

    new-instance v0, Lcom/car/carsetting/OtherFragment$1;

    invoke-direct {v0, p0}, Lcom/car/carsetting/OtherFragment$1;-><init>(Lcom/car/carsetting/OtherFragment;)V

    iput-object v0, p0, Lcom/car/carsetting/OtherFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/carsetting/OtherFragment$2;

    invoke-direct {v0, p0}, Lcom/car/carsetting/OtherFragment$2;-><init>(Lcom/car/carsetting/OtherFragment;)V

    iput-object v0, p0, Lcom/car/carsetting/OtherFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/car/carsetting/OtherFragment$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/car/carsetting/OtherFragment$4;-><init>(Lcom/car/carsetting/OtherFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/car/carsetting/OtherFragment;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private isApkExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v3, p2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const-string v7, "\\."

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    const/4 v8, 0x4

    if-lt v7, v8, :cond_0

    const-string v7, "9"

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    return v5

    :catch_0
    move-exception v0

    const-string v6, "FotaUpdate"

    const-string v7, "isApkExist not found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v5, "FotaUpdate"

    const-string v7, "isApkExist = true"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto :goto_0
.end method


# virtual methods
.method public getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method handlePercent(I)V
    .locals 8

    const v7, 0x7f08007d

    const v6, 0x7f08007b

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f020010

    const-string v0, "CarSetting.OtherFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "percent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mUpdateScreen:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mOnlineUpdatePreference:Lcom/car/carsetting/IconPreference;

    invoke-virtual {v0, v3}, Lcom/car/carsetting/IconPreference;->setIcon(I)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mOnlineUpdatePreference:Lcom/car/carsetting/IconPreference;

    invoke-virtual {v0, v4}, Lcom/car/carsetting/IconPreference;->updateUi(Z)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mUpdateScreen:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mOnlineUpdatePreference:Lcom/car/carsetting/IconPreference;

    invoke-virtual {v0, v6}, Lcom/car/carsetting/IconPreference;->setSummary(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mUpdateScreen:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mUpdateScreen:Landroid/preference/Preference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mOnlineUpdatePreference:Lcom/car/carsetting/IconPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/carsetting/IconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mOnlineUpdatePreference:Lcom/car/carsetting/IconPreference;

    invoke-virtual {v0, v5}, Lcom/car/carsetting/IconPreference;->updateUi(Z)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mOnlineUpdatePreference:Lcom/car/carsetting/IconPreference;

    const v1, 0x7f08007c

    invoke-virtual {v0, v1}, Lcom/car/carsetting/IconPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mUpdateScreen:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mOnlineUpdatePreference:Lcom/car/carsetting/IconPreference;

    invoke-virtual {v0, v3}, Lcom/car/carsetting/IconPreference;->setIcon(I)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mOnlineUpdatePreference:Lcom/car/carsetting/IconPreference;

    invoke-virtual {v0, v4}, Lcom/car/carsetting/IconPreference;->updateUi(Z)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mUpdateScreen:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mOnlineUpdatePreference:Lcom/car/carsetting/IconPreference;

    invoke-virtual {v0, v7}, Lcom/car/carsetting/IconPreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mUpdateScreen:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mOnlineUpdatePreference:Lcom/car/carsetting/IconPreference;

    invoke-virtual {v0, v3}, Lcom/car/carsetting/IconPreference;->setIcon(I)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mOnlineUpdatePreference:Lcom/car/carsetting/IconPreference;

    invoke-virtual {v0, v4}, Lcom/car/carsetting/IconPreference;->updateUi(Z)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mUpdateScreen:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mOnlineUpdatePreference:Lcom/car/carsetting/IconPreference;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/carsetting/IconPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    if-nez v10, :cond_0

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    :cond_0
    const v10, 0x7f040002

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->addPreferencesFromResource(I)V

#by boba 16.08.2020
#sensitive levels
const-string v10, "sensitive_levels"
invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
move-result-object v10
check-cast v10, Landroid/preference/EditTextPreference;
iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mSensLevls:Landroid/preference/EditTextPreference;

    const-string v10, "time"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mTimePreference:Landroid/preference/Preference;

    const-string v10, "autosleep_time"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mAutoSleepTimePrefence:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mAutoSleepTimePrefence:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/car/common/ProviderUtils;->getAutoSleepTime(Landroid/content/Context;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v10, "screensave_time"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mScreenSaveTimePrefence:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mScreenSaveTimePrefence:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/car/common/ProviderUtils;->getScreenSaveTime(Landroid/content/Context;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v10, "screenoff_time"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mScreenOffTimePrefence:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mScreenOffTimePrefence:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_off_timeout"

    const v13, 0xea60

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

#by boba 17.08.2020
#screen off
#    const-string v10, "ro.settings.show"

#    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

#    move-result-object v10

#    const-string v11, "screenoff"

#    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

#    move-result v10

#    if-nez v10, :cond_1

#    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

#    move-result-object v10

#    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mScreenOffTimePrefence:Landroid/preference/ListPreference;

#    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string v10, "dvrslow_time"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mDvrSlowTimePrefence:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mDvrSlowTimePrefence:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/car/common/ProviderUtils;->getDvrSlowTime(Landroid/content/Context;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v10, "ro.dvr.slow"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mDvrSlowTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v10, "more"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mMorePreference:Landroid/preference/Preference;

    const-string v10, "ro.settings.remove"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "accounts"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mMorePreference:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string v10, "serial"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mSerialPreference:Landroid/preference/Preference;

    invoke-static {}, Lcom/car/common/CarUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mSerialPreference:Landroid/preference/Preference;

    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mSerialPreference:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v10, "version"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mVersionPreference:Landroid/preference/Preference;

    const-string v10, "ro.mediatek.version.release"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ro.product.model"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "ro.product.fw_ver"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_V"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_5
    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mVersionPreference:Landroid/preference/Preference;

    invoke-virtual {v10, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v10, "app"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mAppPreference:Landroid/preference/Preference;

    const-string v10, "language"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mLangugaePreference:Landroid/preference/Preference;

    const-string v10, "factory"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mFactoryPreference:Landroid/preference/Preference;

    const-string v10, "gsensor_enable"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mGsensorEnable:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mGsensorEnable:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/car/common/ProviderUtils;->getGsensorEnbale(Landroid/content/Context;)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_10

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v11, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    const-string v11, "com.car.cloud"

    invoke-static {v10, v11}, Lcom/car/carsetting/Utils;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mGsensorEnable:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080036

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    const-string v10, "video_lock_enable"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mLockEnable:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mLockEnable:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/car/common/ProviderUtils;->getVideoLockEnbale(Landroid/content/Context;)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_12

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v10, "socol_enable"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/car/carsetting/SwitchPreference;

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mSocolEnable:Lcom/car/carsetting/SwitchPreference;

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mSocolEnable:Lcom/car/carsetting/SwitchPreference;

    invoke-virtual {v10, p0}, Lcom/car/carsetting/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mSocolEnable:Lcom/car/carsetting/SwitchPreference;

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/car/common/ProviderUtils;->getSocolEnable(Landroid/content/Context;)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/car/carsetting/SwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mSocolEnable:Lcom/car/carsetting/SwitchPreference;

    const-string v11, "\u5141\u8bb8\u53d1\u9001\u8def\u51b5\u6570\u636e\u7ed9\u5730\u56fe\u4f9b\u5e94\u5546"

    invoke-virtual {v10, v11}, Lcom/car/carsetting/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    sget-boolean v10, Lcom/car/carsetting/OtherFragment;->isOversea:Z

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mSocolEnable:Lcom/car/carsetting/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    const-string v10, "baidu_enable"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/car/carsetting/SwitchPreference;

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mBaiduEnable:Lcom/car/carsetting/SwitchPreference;

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mBaiduEnable:Lcom/car/carsetting/SwitchPreference;

    invoke-virtual {v10, p0}, Lcom/car/carsetting/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mBaiduEnable:Lcom/car/carsetting/SwitchPreference;

    const-string v11, "\u67e5\u770b\u8ba1\u5212"

    invoke-virtual {v10, v11}, Lcom/car/carsetting/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mBaiduEnable:Lcom/car/carsetting/SwitchPreference;

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/car/common/ProviderUtils;->getBaiduEnable(Landroid/content/Context;)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/car/carsetting/SwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    const-string v11, "com.daguerre.cd.vehicleMatics"

    invoke-static {v10, v11}, Lcom/car/carsetting/Utils;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mBaiduEnable:Lcom/car/carsetting/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    const-string v10, "update_screen"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mUpdateScreen:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    const-string v11, "com.adups.fota"

    invoke-direct {p0, v10, v11}, Lcom/car/carsetting/OtherFragment;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    const-string v10, "adupsfota_software_update"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_8

    const-string v10, "update_screen"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_8

    const-string v10, "adupsfota_software_update"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    :goto_3
    const-string v10, "headless"

    const-string v11, "ro.product.class"

    const-string v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    const-string v10, "upgrade_system"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_9

    const-string v10, "update_screen"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_9

    const-string v10, "upgrade_system"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    :goto_4
    const-string v10, "upgrade_system"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mUpgradeSystemPreference:Landroid/preference/Preference;

    const-string v10, "online_update"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/car/carsetting/IconPreference;

    iput-object v10, p0, Lcom/car/carsetting/OtherFragment;->mOnlineUpdatePreference:Lcom/car/carsetting/IconPreference;

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mTimePreference:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mLangugaePreference:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mAppPreference:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    sget v10, Lcom/car/common/OEM;->ID:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_a

    const-string v10, "ro.settings.remove"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "gsensor"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_a
    sget v10, Lcom/car/common/OEM;->ID:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mAutoSleepTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mGsensorEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mLockEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "sensitive"

    invoke-virtual {p0, v11}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    const-string v10, "ro.settings.remove02"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "collision_wakeup"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mGsensorEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    const-string v10, "ro.settings.remove02"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "video_lock"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mLockEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    const-string v10, "ro.settings.remove02"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "collision_sensitivity"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "sensitive"

    invoke-virtual {p0, v11}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "com.car.otadownload"

    invoke-virtual {v3, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    const-string v10, "CJJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.car.otaprogress"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "gsensor_enable"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/car/carsetting/OtherFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "video_lock_enable"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/car/carsetting/OtherFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "autosleeptime"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/car/carsetting/OtherFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "slow_time"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/car/carsetting/OtherFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_11
    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mGsensorEnable:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    const v12, 0x7f080035

    invoke-static {v11, v12}, Lcom/car/common/OEM;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_13
    const-string v10, "adupsfota_software_update"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v10, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    const-string v11, "com.adups.fota"

    invoke-virtual {p0, v10, v11}, Lcom/car/carsetting/OtherFragment;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_14
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x10200000

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/car/common/CarUtil;->isSp9832Platform()Z

    move-result v10

    if-eqz v10, :cond_15

    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.car.carsetting.FWUpdateActivity"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v10, "com.car.carsetting"

    const-string v11, "com.car.carsetting.FWUpdateActivity"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_5
    const-string v10, "upgrade_system"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/OtherFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_15
    new-instance v0, Landroid/content/ComponentName;

    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.deviceinfo.FWUpdateActivity"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_5
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->stop()V

    return-void
.end method

.method public onDetach()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    :try_start_0
    const-class v2, Landroid/app/Fragment;

    const-string v3, "mChildFragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mSocolEnable:Lcom/car/carsetting/SwitchPreference;

    if-ne p1, v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "CarSetting.OtherFragment"

    const-string v2, "mSocolEnable: checked="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/car/common/ProviderUtils;->setEnableSocol(Landroid/content/Context;Z)V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mBaiduEnable:Lcom/car/carsetting/SwitchPreference;

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "CarSetting.OtherFragment"

    const-string v2, "mBaiduEnable: checked="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/car/common/ProviderUtils;->setBaiduEnable(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mOnlineUpdatePreference:Lcom/car/carsetting/IconPreference;

    if-ne p2, v7, :cond_1

    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.car.otacheck"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    :goto_1
    return v7

    :cond_1
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mTimePreference:Landroid/preference/Preference;

    if-ne p2, v7, :cond_2

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.DATE_SETTINGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/car/carsetting/OtherFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mMorePreference:Landroid/preference/Preference;

    if-ne p2, v7, :cond_3

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.SETTINGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/car/carsetting/OtherFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mAppPreference:Landroid/preference/Preference;

    if-ne p2, v7, :cond_4

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/car/carsetting/OtherFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mLangugaePreference:Landroid/preference/Preference;

    if-ne p2, v7, :cond_5

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.LOCALE_SETTINGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/car/carsetting/OtherFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mFactoryPreference:Landroid/preference/Preference;

    if-ne p2, v7, :cond_8

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    const-string v8, "com.car.carservice"

    invoke-static {v7, v8}, Lcom/car/carsetting/Utils;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.RESET_SETTINGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/car/carsetting/OtherFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    const-string v7, "ro.factory_password"

    const-string v8, "null"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "null"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f08002a

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f080058

    new-instance v9, Lcom/car/carsetting/OtherFragment$3;

    invoke-direct {v9, p0}, Lcom/car/carsetting/OtherFragment$3;-><init>(Lcom/car/carsetting/OtherFragment;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f080059

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Window;

    const/16 v8, 0x7d3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_7
    new-instance v3, Lcom/car/carsetting/FactoryDialog;

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/car/carsetting/FactoryDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/car/carsetting/FactoryDialog;->show()V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mSerialPreference:Landroid/preference/Preference;

    if-ne p2, v7, :cond_c

    iget v7, p0, Lcom/car/carsetting/OtherFragment;->mCountClickAdb:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/car/carsetting/OtherFragment;->mCountClickAdb:I

    iget v7, p0, Lcom/car/carsetting/OtherFragment;->mCountClickAdb:I

    if-nez v7, :cond_a

    const/4 v7, 0x5

    iput v7, p0, Lcom/car/carsetting/OtherFragment;->mCountClickAdb:I

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.car.carsetting.EngActivity"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/car/carsetting/OtherFragment;->startActivity(Landroid/content/Intent;)V

    :cond_9
    :goto_2
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_a
    iget v7, p0, Lcom/car/carsetting/OtherFragment;->mCountClickAdb:I

    const/4 v8, 0x3

    if-gt v7, v8, :cond_9

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mToast:Landroid/widget/Toast;

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    iput-object v7, p0, Lcom/car/carsetting/OtherFragment;->mToast:Landroid/widget/Toast;

    :cond_b
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mToast:Landroid/widget/Toast;

    iget v8, p0, Lcom/car/carsetting/OtherFragment;->mCountClickAdb:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_c
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mVersionPreference:Landroid/preference/Preference;

    if-ne p2, v7, :cond_10

    iget v7, p0, Lcom/car/carsetting/OtherFragment;->mCountClickVersion:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/car/carsetting/OtherFragment;->mCountClickVersion:I

    iget v7, p0, Lcom/car/carsetting/OtherFragment;->mCountClickVersion:I

    if-nez v7, :cond_e

    const/4 v7, 0x5

    iput v7, p0, Lcom/car/carsetting/OtherFragment;->mCountClickVersion:I

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.car.carsetting.EngActivity"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/car/carsetting/OtherFragment;->startActivity(Landroid/content/Intent;)V

    :cond_d
    :goto_3
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_e
    iget v7, p0, Lcom/car/carsetting/OtherFragment;->mCountClickVersion:I

    const/4 v8, 0x3

    if-gt v7, v8, :cond_d

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mToast:Landroid/widget/Toast;

    if-nez v7, :cond_f

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    iput-object v7, p0, Lcom/car/carsetting/OtherFragment;->mToast:Landroid/widget/Toast;

    :cond_f
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mToast:Landroid/widget/Toast;

    iget v8, p0, Lcom/car/carsetting/OtherFragment;->mCountClickVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_10
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mGsensorEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_11

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/car/carsetting/OtherFragment;->mGsensorEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/car/common/ProviderUtils;->setGsensorEnbale(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_11
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mLockEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_12

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/car/carsetting/OtherFragment;->mLockEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/car/common/ProviderUtils;->setVideoLockEnbale(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_12
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mSocolEnable:Lcom/car/carsetting/SwitchPreference;

    if-ne p2, v7, :cond_13

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/car/carsetting/OtherFragment;->mSocolEnable:Lcom/car/carsetting/SwitchPreference;

    invoke-virtual {v8}, Lcom/car/carsetting/SwitchPreference;->isChecked()Z

    move-result v8

    invoke-static {v7, v8}, Lcom/car/common/ProviderUtils;->setEnableSocol(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :cond_13
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mBaiduEnable:Lcom/car/carsetting/SwitchPreference;

    if-ne p2, v7, :cond_14

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v7, "com.daguerre.cd.vehicleMatics"

    const-string v8, "com.daguerre.cd.vehicleMatics.view.DetailPage"

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v7, "from"

    const-string v8, "CarSetting"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/car/carsetting/OtherFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v7, "CarSetting.OtherFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mCheckVersionPreference:Landroid/preference/Preference;

    if-ne p2, v7, :cond_16

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mCheckVersionToast:Landroid/widget/Toast;

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mCheckVersionToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->cancel()V

    :cond_15
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f080047

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    iput-object v7, p0, Lcom/car/carsetting/OtherFragment;->mCheckVersionToast:Landroid/widget/Toast;

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mCheckVersionToast:Landroid/widget/Toast;

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.car.cloud.CheckVersion"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.car.cloud"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "force_ui"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_16
    iget-object v7, p0, Lcom/car/carsetting/OtherFragment;->mUpgradeSystemPreference:Landroid/preference/Preference;

    if-ne p2, v7, :cond_0

    const-string v7, "headless"

    const-string v8, "ro.product.class"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/car/carsetting/OtherFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mAutoSleepTimePrefence:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mAutoSleepTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mDvrSlowTimePrefence:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mDvrSlowTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mScreenSaveTimePrefence:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mScreenSaveTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mScreenOffTimePrefence:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mScreenOffTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mBaiduEnable:Lcom/car/carsetting/SwitchPreference;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getBaiduEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/car/carsetting/SwitchPreference;->setChecked(Z)V
	
#by boba 16.08.2020
#sensitive levels
const-string v1, "persist.car.sensitive"
const-string v0, ""
invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mSensLevls:Landroid/preference/EditTextPreference;
invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "autosleep_time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mAutoSleepTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/car/common/ProviderUtils;->setAutoSleepTime(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mAutoSleepTimePrefence:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mAutoSleepTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "dvrslow_time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mDvrSlowTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/car/common/ProviderUtils;->setDvrSlowTime(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mDvrSlowTimePrefence:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mDvrSlowTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "screensave_time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mScreenSaveTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/car/common/ProviderUtils;->setScreenSaveTime(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mScreenSaveTimePrefence:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mScreenSaveTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string v0, "screenoff_time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    iget-object v2, p0, Lcom/car/carsetting/OtherFragment;->mScreenOffTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/car/carsetting/OtherFragment;->mScreenOffTimePrefence:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mScreenOffTimePrefence:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
	
#by boba 10.08.2020
#select acc on cam
:cond_100
const-string v0, "sensitive_levels"
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1
iget-object v1, p0, Lcom/car/carsetting/OtherFragment;->mSensLevls:Landroid/preference/EditTextPreference;
const-string v0, "persist.car.sensitive"
invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V
invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_0
.end method

.method public stop()V
    .locals 0

    return-void
.end method
