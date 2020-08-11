.class public Lcom/car/carsetting/VolumePreference;
.super Landroid/preference/Preference;
.source "VolumePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "CarSetting.VolumePreference"

.field static final VOLUME_TYPE_CHECK:I = 0x64

.field static final VOLUME_TYPE_CHECK_TIMER:I = 0x7d0


# instance fields
.field mContext:Landroid/content/Context;

.field mCurActiveStreamType:I

.field mHandler:Landroid/os/Handler;

.field mSeekBar:Landroid/widget/SeekBar;

.field mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/carsetting/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/car/carsetting/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/car/carsetting/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/high16 v1, -0x80000000

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/carsetting/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    iput v1, p0, Lcom/car/carsetting/VolumePreference;->mCurActiveStreamType:I

    new-instance v0, Lcom/car/carsetting/VolumePreference$1;

    invoke-direct {v0, p0}, Lcom/car/carsetting/VolumePreference$1;-><init>(Lcom/car/carsetting/VolumePreference;)V

    iput-object v0, p0, Lcom/car/carsetting/VolumePreference;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/car/carsetting/VolumePreference;->mContext:Landroid/content/Context;

    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/car/carsetting/VolumePreference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/car/carsetting/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/car/carsetting/VolumePreference;->getActiveStreamType(I)I

    move-result v0

    iput v0, p0, Lcom/car/carsetting/VolumePreference;->mCurActiveStreamType:I

    return-void
.end method

.method private isAfMusicActiveRecently(I)Z
    .locals 2

    const/4 v1, 0x3

    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInCommunication()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/car/carsetting/VolumePreference;->mContext:Landroid/content/Context;

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    iget-object v3, p0, Lcom/car/carsetting/VolumePreference;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isInRing()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/car/carsetting/VolumePreference;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeVolumeStream()V
    .locals 5

    new-instance v0, Lcom/car/carsetting/VolumePreference$2;

    invoke-direct {v0, p0}, Lcom/car/carsetting/VolumePreference$2;-><init>(Lcom/car/carsetting/VolumePreference;)V

    iget-object v1, p0, Lcom/car/carsetting/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/carsetting/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/SeekBarVolumizer;->stop()V

    :cond_0
    new-instance v1, Landroid/preference/SeekBarVolumizer;

    iget-object v2, p0, Lcom/car/carsetting/VolumePreference;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/car/carsetting/VolumePreference;->mCurActiveStreamType:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v1, p0, Lcom/car/carsetting/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    iget-object v1, p0, Lcom/car/carsetting/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    iget-object v2, p0, Lcom/car/carsetting/VolumePreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    iget-object v1, p0, Lcom/car/carsetting/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/SeekBarVolumizer;->start()V

    iget-object v1, p0, Lcom/car/carsetting/VolumePreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/car/carsetting/VolumePreference;->notifyChanged()V

    const-string v1, "CarSetting.VolumePreference"

    const-string v2, "new mSeekBarVolumizer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getActiveStreamType(I)I
    .locals 5

    const/4 v0, 0x0

    const/16 v4, 0x1388

    const/4 v2, 0x2

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/car/carsetting/VolumePreference;->isInCommunication()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    const-string v0, "CarSetting.VolumePreference"

    const-string v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const-string v1, "CarSetting.VolumePreference"

    const-string v2, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    invoke-static {v0, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "CarSetting.VolumePreference"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_3
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_6

    invoke-direct {p0, v4}, Lcom/car/carsetting/VolumePreference;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/car/carsetting/VolumePreference;->isInRing()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CarSetting.VolumePreference"

    const-string v2, "getActiveStreamType: forcing STREAM_MUSIC"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v0, "CarSetting.VolumePreference"

    const-string v3, "getActiveStreamType: using STREAM_RING as default"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/car/carsetting/VolumePreference;->isInRing()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4

    const/16 v1, 0x64

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/car/carsetting/VolumePreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/car/carsetting/VolumePreference;->changeVolumeStream()V

    iget-object v0, p0, Lcom/car/carsetting/VolumePreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/carsetting/VolumePreference;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/VolumePreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/car/carsetting/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/VolumePreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/car/carsetting/VolumePreference;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
