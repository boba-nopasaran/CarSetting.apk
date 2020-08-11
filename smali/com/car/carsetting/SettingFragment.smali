.class public Lcom/car/carsetting/SettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final BRIGHTNESS_KEY:Ljava/lang/String; = "brightness"

.field static final BTKB_KEY:Ljava/lang/String; = "btkb"

.field static final DATALIMIT_KEY:Ljava/lang/String; = "datalimit"

.field static final DVRSETTING_KEY:Ljava/lang/String; = "dvrsetting"

.field private static final KEY_APP:Ljava/lang/String; = "app"

.field private static final KEY_FIELDS:Ljava/lang/String; = "fields"

.field private static final KEY_TEMPLATE:Ljava/lang/String; = "template"

.field static final LIVE_KEY:Ljava/lang/String; = "live"

.field private static final LOADER_CHART_DATA:I = 0x2

.field static final MORE_KEY:Ljava/lang/String; = "more"

.field static final REPORT_KEY:Ljava/lang/String; = "report"

.field static final SENSITY_KEY:Ljava/lang/String; = "sensity"

.field static final SOFTAP_KEY:Ljava/lang/String; = "softap"

.field private static final TAG:Ljava/lang/String; = "SettingFragment"

.field static final TIME_KEY:Ljava/lang/String; = "time"

.field static final VERSION_KEY:Ljava/lang/String; = "version"

.field static final VERSION_NAME:Ljava/lang/String; = "ro.mediatek.version.release"

.field static final VOLUME_KEY:Ljava/lang/String; = "volume"

.field static final WIFI_KEY:Ljava/lang/String; = "wifi"


# instance fields
.field mBTKeyboard:Landroid/preference/CheckBoxPreference;

.field mBrightnessPreference:Lcom/car/carsetting/BrightnessPreference;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field mDVRSettingPreference:Landroid/preference/Preference;

.field mDataLimitPreference:Lcom/car/carsetting/DataInfoPreference;

.field mLive:Landroid/preference/CheckBoxPreference;

.field private mNetReceiver:Landroid/content/BroadcastReceiver;

.field private final mObserver:Landroid/database/ContentObserver;

.field mSensityPreference:Lcom/car/carsetting/SensityPreference;

.field mSoftApPreference:Lcom/car/carsetting/SwitchPreference;

.field mVoicePromptEnabled:Z

.field mVoicePromptPreference:Landroid/preference/CheckBoxPreference;

.field mVolumePreference:Lcom/car/carsetting/VolumePreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiPreference:Lcom/car/carsetting/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/carsetting/SettingFragment;->mVoicePromptEnabled:Z

    new-instance v0, Lcom/car/carsetting/SettingFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/car/carsetting/SettingFragment$1;-><init>(Lcom/car/carsetting/SettingFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/car/carsetting/SettingFragment;->mObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/car/carsetting/SettingFragment$2;

    invoke-direct {v0, p0}, Lcom/car/carsetting/SettingFragment$2;-><init>(Lcom/car/carsetting/SettingFragment;)V

    iput-object v0, p0, Lcom/car/carsetting/SettingFragment;->mNetReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/car/carsetting/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/carsetting/SettingFragment;->updateWiFiState()V

    return-void
.end method

.method static synthetic access$100(Lcom/car/carsetting/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/carsetting/SettingFragment;->updateHotspotState()V

    return-void
.end method

.method private updateHotspotState()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f080010

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/car/carsetting/SettingFragment;->mSoftApPreference:Lcom/car/carsetting/SwitchPreference;

    invoke-virtual {v2, v0}, Lcom/car/carsetting/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/car/carsetting/SettingFragment;->mSoftApPreference:Lcom/car/carsetting/SwitchPreference;

    invoke-virtual {v2, v6}, Lcom/car/carsetting/SwitchPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/car/carsetting/SettingFragment;->mSoftApPreference:Lcom/car/carsetting/SwitchPreference;

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Lcom/car/carsetting/SwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/car/carsetting/SettingFragment;->mSoftApPreference:Lcom/car/carsetting/SwitchPreference;

    invoke-virtual {v2, v5}, Lcom/car/carsetting/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateWiFiState()V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/car/carsetting/SettingFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v8, :cond_2

    iget-object v5, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f08000c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/car/carsetting/SettingFragment;->mWifiPreference:Lcom/car/carsetting/SwitchPreference;

    invoke-virtual {v5, v2}, Lcom/car/carsetting/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v5, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/car/carsetting/SettingFragment;->mWifiPreference:Lcom/car/carsetting/SwitchPreference;

    invoke-virtual {v5, v8}, Lcom/car/carsetting/SwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/car/carsetting/SettingFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    const-string v5, "SettingFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifi state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v5, :cond_1

    iget-object v5, p0, Lcom/car/carsetting/SettingFragment;->mWifiPreference:Lcom/car/carsetting/SwitchPreference;

    const v6, 0x7f08000d

    invoke-virtual {v5, v6}, Lcom/car/carsetting/SwitchPreference;->setSummary(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/car/carsetting/SettingFragment;->mWifiPreference:Lcom/car/carsetting/SwitchPreference;

    const v6, 0x7f08000b

    invoke-virtual {v5, v6}, Lcom/car/carsetting/SwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/car/carsetting/SettingFragment;->mWifiPreference:Lcom/car/carsetting/SwitchPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/car/carsetting/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    :cond_0
    const v7, 0x7f040001

    invoke-virtual {p0, v7}, Lcom/car/carsetting/SettingFragment;->addPreferencesFromResource(I)V

    const-string v7, "btkb"

    invoke-virtual {p0, v7}, Lcom/car/carsetting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/car/carsetting/SettingFragment;->mBTKeyboard:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/car/common/ProviderUtils;->getBtKeyboardEnable(Landroid/content/Context;)Z

    move-result v0

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mBTKeyboard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mBTKeyboard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mBTKeyboard:Landroid/preference/CheckBoxPreference;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08006a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08006c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mBTKeyboard:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f08006b

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    const-string v7, "ro.btkb.disabled"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/car/carsetting/SettingFragment;->mBTKeyboard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string v7, "live"

    invoke-virtual {p0, v7}, Lcom/car/carsetting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/car/carsetting/SettingFragment;->mLive:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mLive:Landroid/preference/CheckBoxPreference;

    const-string v10, "persist.sys.car.live"

    invoke-static {v10, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mLive:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mLive:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f080079

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    const-string v7, "persist.device.flag"

    const-string v10, "-1"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    const-string v7, "E:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_2
    :goto_0
    if-nez v6, :cond_3

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    const-string v10, "com.car.cloud"

    invoke-static {v7, v10}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/car/carsetting/SettingFragment;->mLive:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string v7, "ro.settings.remove"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "live"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/car/carsetting/SettingFragment;->mLive:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string v7, "ro.func.flag"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    and-int/lit8 v7, v4, 0x8

    if-nez v7, :cond_6

    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v10, "voltage"

    invoke-virtual {p0, v10}, Lcom/car/carsetting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    const-string v7, "brightness"

    invoke-virtual {p0, v7}, Lcom/car/carsetting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/car/carsetting/BrightnessPreference;

    iput-object v7, p0, Lcom/car/carsetting/SettingFragment;->mBrightnessPreference:Lcom/car/carsetting/BrightnessPreference;

    const-string v7, "volume"

    invoke-virtual {p0, v7}, Lcom/car/carsetting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/car/carsetting/VolumePreference;

    iput-object v7, p0, Lcom/car/carsetting/SettingFragment;->mVolumePreference:Lcom/car/carsetting/VolumePreference;

    const-string v7, "sensity"

    invoke-virtual {p0, v7}, Lcom/car/carsetting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/car/carsetting/SensityPreference;

    iput-object v7, p0, Lcom/car/carsetting/SettingFragment;->mSensityPreference:Lcom/car/carsetting/SensityPreference;

    const-string v7, "report"

    invoke-virtual {p0, v7}, Lcom/car/carsetting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/car/carsetting/SettingFragment;->mVoicePromptPreference:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/car/common/ProviderUtils;->getTTSMute(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v8, :cond_11

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/car/carsetting/SettingFragment;->mVoicePromptEnabled:Z

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mVoicePromptPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v8, p0, Lcom/car/carsetting/SettingFragment;->mVoicePromptEnabled:Z

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mVoicePromptPreference:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f080007

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/car/carsetting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/car/carsetting/SwitchPreference;

    iput-object v7, p0, Lcom/car/carsetting/SettingFragment;->mWifiPreference:Lcom/car/carsetting/SwitchPreference;

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mWifiPreference:Lcom/car/carsetting/SwitchPreference;

    invoke-virtual {v7, p0}, Lcom/car/carsetting/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "dvrsetting"

    invoke-virtual {p0, v7}, Lcom/car/carsetting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/car/carsetting/SettingFragment;->mDVRSettingPreference:Landroid/preference/Preference;

    const-string v7, "softap"

    invoke-virtual {p0, v7}, Lcom/car/carsetting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/car/carsetting/SwitchPreference;

    iput-object v7, p0, Lcom/car/carsetting/SettingFragment;->mSoftApPreference:Lcom/car/carsetting/SwitchPreference;

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mSoftApPreference:Lcom/car/carsetting/SwitchPreference;

    iget-object v8, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    const v9, 0x7f08000e

    invoke-static {v8, v9}, Lcom/car/common/OEM;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/car/carsetting/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mSoftApPreference:Lcom/car/carsetting/SwitchPreference;

    invoke-virtual {v7, p0}, Lcom/car/carsetting/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "datalimit"

    invoke-virtual {p0, v7}, Lcom/car/carsetting/SettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/car/carsetting/DataInfoPreference;

    iput-object v7, p0, Lcom/car/carsetting/SettingFragment;->mDataLimitPreference:Lcom/car/carsetting/DataInfoPreference;

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mDataLimitPreference:Lcom/car/carsetting/DataInfoPreference;

    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/car/carsetting/DataInfoPreference;->startLoadData(Landroid/app/LoaderManager;)V

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mDataLimitPreference:Lcom/car/carsetting/DataInfoPreference;

    invoke-virtual {v7, p0}, Lcom/car/carsetting/DataInfoPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "ro.settings.remove"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "voice"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_7

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/car/carsetting/SettingFragment;->mSensityPreference:Lcom/car/carsetting/SensityPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    const-string v8, "com.android.settings"

    invoke-static {v7, v8}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "ro.settings.remove"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/car/carsetting/SettingFragment;->mWifiPreference:Lcom/car/carsetting/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    const-string v7, "ro.settings.remove"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "brightness"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/car/carsetting/SettingFragment;->mBrightnessPreference:Lcom/car/carsetting/BrightnessPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    const-string v7, "ro.settings.remove"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "volume"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/car/carsetting/SettingFragment;->mVolumePreference:Lcom/car/carsetting/VolumePreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    const-string v7, "ro.settings.remove"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "datalimit"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/car/carsetting/SettingFragment;->mDataLimitPreference:Lcom/car/carsetting/DataInfoPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    const-string v7, "ro.tether.denied"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/car/carsetting/SettingFragment;->mSoftApPreference:Lcom/car/carsetting/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    const-string v8, "com.car.dvr"

    invoke-static {v7, v8}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/car/carsetting/SettingFragment;->mDVRSettingPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/car/carsetting/SettingFragment;->mVoicePromptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/car/carsetting/SettingFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.car.btkb.report"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/car/carsetting/SettingFragment;->mNetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mDataLimitPreference:Lcom/car/carsetting/DataInfoPreference;

    invoke-virtual {v7, v5}, Lcom/car/carsetting/DataInfoPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/car/carsetting/SettingFragment;->updateWiFiState()V

    invoke-direct {p0}, Lcom/car/carsetting/SettingFragment;->updateHotspotState()V

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.car.btkb"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_10
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_2

    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_2

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_11
    move v7, v9

    goto/16 :goto_1

    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/car/carsetting/SettingFragment;->mDataLimitPreference:Lcom/car/carsetting/DataInfoPreference;

    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/carsetting/DataInfoPreference;->stopLoadData(Landroid/app/LoaderManager;)V

    iget-object v0, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/car/carsetting/SettingFragment;->mNetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->stop()V

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

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    const/16 v11, 0xd

    const/16 v10, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mWifiPreference:Lcom/car/carsetting/SwitchPreference;

    if-ne p1, v7, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    :cond_0
    move v4, v6

    :goto_0
    const-string v7, "SettingFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mWifiPreference: checked="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", wifiEnable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v4, :cond_3

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    if-eqz v1, :cond_2

    if-eq v3, v10, :cond_1

    if-ne v3, v11, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_2
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_3
    :goto_1
    return v6

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mSoftApPreference:Lcom/car/carsetting/SwitchPreference;

    if-ne p1, v7, :cond_a

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v7

    if-eq v7, v11, :cond_7

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v7

    if-ne v7, v10, :cond_8

    :cond_7
    move v0, v6

    :goto_2
    const-string v7, "SettingFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSoftApPreference: checked="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", apEnable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v0, :cond_3

    if-eqz v1, :cond_9

    invoke-virtual {p0, v6}, Lcom/car/carsetting/SettingFragment;->setSoftapEnabled(Z)V

    goto :goto_1

    :cond_8
    move v0, v5

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v5}, Lcom/car/carsetting/SettingFragment;->setSoftapEnabled(Z)V

    goto :goto_1

    :cond_a
    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mDataLimitPreference:Lcom/car/carsetting/DataInfoPreference;

    if-ne p1, v7, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    const-string v7, "SettingFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDataLimitPreference: checked="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mobileDataEnable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_b

    iget-object v5, p0, Lcom/car/carsetting/SettingFragment;->mDataLimitPreference:Lcom/car/carsetting/DataInfoPreference;

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v7, v6}, Lcom/car/carsetting/DataInfoPreference;->setMobileDataEnabled(Landroid/net/ConnectivityManager;Z)V

    iget-object v5, p0, Lcom/car/carsetting/SettingFragment;->mDataLimitPreference:Lcom/car/carsetting/DataInfoPreference;

    invoke-virtual {v5, v6}, Lcom/car/carsetting/DataInfoPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_b
    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mDataLimitPreference:Lcom/car/carsetting/DataInfoPreference;

    iget-object v8, p0, Lcom/car/carsetting/SettingFragment;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v8, v5}, Lcom/car/carsetting/DataInfoPreference;->setMobileDataEnabled(Landroid/net/ConnectivityManager;Z)V

    iget-object v7, p0, Lcom/car/carsetting/SettingFragment;->mDataLimitPreference:Lcom/car/carsetting/DataInfoPreference;

    invoke-virtual {v7, v5}, Lcom/car/carsetting/DataInfoPreference;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    iget-object v3, p0, Lcom/car/carsetting/SettingFragment;->mWifiPreference:Lcom/car/carsetting/SwitchPreference;

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    const-string v4, "com.android.settings"

    invoke-static {v3, v4}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.WIFI_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/car/carsetting/SettingFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_1
    iget-object v3, p0, Lcom/car/carsetting/SettingFragment;->mDVRSettingPreference:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.car.dvr.CameraSetting"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/car/carsetting/SettingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/car/carsetting/SettingFragment;->mSoftApPreference:Lcom/car/carsetting/SwitchPreference;

    if-ne p2, v3, :cond_3

    iget-object v3, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v0, Lcom/car/carsetting/SoftapDialog;

    invoke-virtual {p0}, Lcom/car/carsetting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v0, v3, v4}, Lcom/car/carsetting/SoftapDialog;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    invoke-virtual {v0}, Lcom/car/carsetting/SoftapDialog;->show()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/car/carsetting/SettingFragment;->mDataLimitPreference:Lcom/car/carsetting/DataInfoPreference;

    if-ne p2, v3, :cond_4

    iget-object v3, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    const-string v4, "com.android.settings"

    invoke-static {v3, v4}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.DATA_USAGE_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/car/carsetting/SettingFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/car/carsetting/SettingFragment;->mBTKeyboard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    iget-object v3, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/car/carsetting/SettingFragment;->mBTKeyboard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/car/common/ProviderUtils;->setBtKeyboardEnable(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/car/carsetting/SettingFragment;->mLive:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    const-string v4, "persist.sys.car.live"

    iget-object v3, p0, Lcom/car/carsetting/SettingFragment;->mLive:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "1"

    :goto_1
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v3, "0"

    goto :goto_1
.end method

.method public setSoftapEnabled(Z)V
    .locals 4

    iget-object v2, p0, Lcom/car/carsetting/SettingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_1
    iget-object v2, p0, Lcom/car/carsetting/SettingFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/car/carsetting/SettingFragment;->mSoftApPreference:Lcom/car/carsetting/SwitchPreference;

    const-string v3, "WiFi Error!"

    invoke-virtual {v2, v3}, Lcom/car/carsetting/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/SettingFragment;->mVolumePreference:Lcom/car/carsetting/VolumePreference;

    invoke-virtual {v0}, Lcom/car/carsetting/VolumePreference;->stop()V

    iget-object v0, p0, Lcom/car/carsetting/SettingFragment;->mSensityPreference:Lcom/car/carsetting/SensityPreference;

    invoke-virtual {v0}, Lcom/car/carsetting/SensityPreference;->stop()V

    iget-object v0, p0, Lcom/car/carsetting/SettingFragment;->mBrightnessPreference:Lcom/car/carsetting/BrightnessPreference;

    invoke-virtual {v0}, Lcom/car/carsetting/BrightnessPreference;->stop()V

    return-void
.end method
