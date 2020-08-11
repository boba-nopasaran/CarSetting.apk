.class Lcom/car/carsetting/VolumePreference$2;
.super Ljava/lang/Object;
.source "VolumePreference.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/carsetting/VolumePreference;->changeVolumeStream()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/VolumePreference;


# direct methods
.method constructor <init>(Lcom/car/carsetting/VolumePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/VolumePreference$2;->this$0:Lcom/car/carsetting/VolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(Z)V
    .locals 3

    const-string v0, "CarSetting.VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeekBarVolumizer.Callback.onMuted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    const-string v0, "CarSetting.VolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeekBarVolumizer.onProgressChanged.progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/VolumePreference$2;->this$0:Lcom/car/carsetting/VolumePreference;

    iget-object v0, v0, Lcom/car/carsetting/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/VolumePreference$2;->this$0:Lcom/car/carsetting/VolumePreference;

    iget-object v0, v0, Lcom/car/carsetting/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method
