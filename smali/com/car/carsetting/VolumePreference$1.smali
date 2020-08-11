.class Lcom/car/carsetting/VolumePreference$1;
.super Landroid/os/Handler;
.source "VolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/VolumePreference;
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

    iput-object p1, p0, Lcom/car/carsetting/VolumePreference$1;->this$0:Lcom/car/carsetting/VolumePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v4, 0x64

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/car/carsetting/VolumePreference$1;->this$0:Lcom/car/carsetting/VolumePreference;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Lcom/car/carsetting/VolumePreference;->getActiveStreamType(I)I

    move-result v0

    iget-object v1, p0, Lcom/car/carsetting/VolumePreference$1;->this$0:Lcom/car/carsetting/VolumePreference;

    iget v1, v1, Lcom/car/carsetting/VolumePreference;->mCurActiveStreamType:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/car/carsetting/VolumePreference$1;->this$0:Lcom/car/carsetting/VolumePreference;

    iput v0, v1, Lcom/car/carsetting/VolumePreference;->mCurActiveStreamType:I

    iget-object v1, p0, Lcom/car/carsetting/VolumePreference$1;->this$0:Lcom/car/carsetting/VolumePreference;

    invoke-virtual {v1}, Lcom/car/carsetting/VolumePreference;->changeVolumeStream()V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/car/carsetting/VolumePreference$1;->removeMessages(I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v4, v2, v3}, Lcom/car/carsetting/VolumePreference$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
