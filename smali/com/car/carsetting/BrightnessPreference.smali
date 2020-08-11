.class public Lcom/car/carsetting/BrightnessPreference;
.super Landroid/preference/Preference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field mBrightnessSeekBar:Landroid/widget/SeekBar;

.field mBrightnessVal:I

.field mContext:Landroid/content/Context;

.field private final mMaximumBacklight:I

.field private final mMinimumBacklight:I

.field private final mObserver:Landroid/database/ContentObserver;

.field private final mPower:Landroid/os/IPowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/carsetting/BrightnessPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/car/carsetting/BrightnessPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/car/carsetting/BrightnessPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v4, p0, Lcom/car/carsetting/BrightnessPreference;->mBrightnessVal:I

    new-instance v1, Lcom/car/carsetting/BrightnessPreference$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/car/carsetting/BrightnessPreference$1;-><init>(Lcom/car/carsetting/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/car/carsetting/BrightnessPreference;->mObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/car/carsetting/BrightnessPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/car/carsetting/BrightnessPreference;->setLayoutResource(I)V

    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/car/carsetting/BrightnessPreference;->mPower:Landroid/os/IPowerManager;

    iget-object v1, p0, Lcom/car/carsetting/BrightnessPreference;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/car/carsetting/BrightnessPreference;->mMinimumBacklight:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/car/carsetting/BrightnessPreference;->mMaximumBacklight:I

    iget-object v1, p0, Lcom/car/carsetting/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/car/carsetting/BrightnessPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/car/carsetting/BrightnessPreference;)I
    .locals 1

    iget v0, p0, Lcom/car/carsetting/BrightnessPreference;->mMaximumBacklight:I

    return v0
.end method

.method static synthetic access$100(Lcom/car/carsetting/BrightnessPreference;)I
    .locals 1

    iget v0, p0, Lcom/car/carsetting/BrightnessPreference;->mMinimumBacklight:I

    return v0
.end method

.method private setBrightness(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/car/carsetting/BrightnessPreference;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f0a000e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/car/carsetting/BrightnessPreference;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/car/carsetting/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/car/carsetting/BrightnessPreference;->mMaximumBacklight:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/car/carsetting/BrightnessPreference;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/car/carsetting/BrightnessPreference;->mMaximumBacklight:I

    iget v3, p0, Lcom/car/carsetting/BrightnessPreference;->mMinimumBacklight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/car/carsetting/BrightnessPreference;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/car/carsetting/BrightnessPreference;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/car/carsetting/BrightnessPreference;->mMinimumBacklight:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, -0x2

    iget-object v1, p0, Lcom/car/carsetting/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/car/carsetting/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    iget v1, p0, Lcom/car/carsetting/BrightnessPreference;->mMinimumBacklight:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/car/carsetting/BrightnessPreference;->mBrightnessVal:I

    iget v1, p0, Lcom/car/carsetting/BrightnessPreference;->mBrightnessVal:I

    invoke-direct {p0, v1}, Lcom/car/carsetting/BrightnessPreference;->setBrightness(I)V

    iget-object v1, p0, Lcom/car/carsetting/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/car/carsetting/BrightnessPreference;->mBrightnessVal:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/car/carsetting/BrightnessPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/car/carsetting/BrightnessPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
