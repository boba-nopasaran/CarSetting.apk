.class Lcom/car/carsetting/StorageFragment$2;
.super Landroid/os/storage/StorageEventListener;
.source "StorageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/StorageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/StorageFragment;


# direct methods
.method constructor <init>(Lcom/car/carsetting/StorageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/StorageFragment$2;->this$0:Lcom/car/carsetting/StorageFragment;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "CarSetting.StorageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStorageStateChanged path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/StorageFragment$2;->this$0:Lcom/car/carsetting/StorageFragment;

    invoke-virtual {v0}, Lcom/car/carsetting/StorageFragment;->getVolumeList()[Landroid/os/storage/StorageVolume;

    :goto_0
    iget-object v0, p0, Lcom/car/carsetting/StorageFragment$2;->this$0:Lcom/car/carsetting/StorageFragment;

    iget-object v0, v0, Lcom/car/carsetting/StorageFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/carsetting/StorageFragment$2;->this$0:Lcom/car/carsetting/StorageFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/car/carsetting/StorageFragment;->mSDVolume:Landroid/os/storage/StorageVolume;

    goto :goto_0
.end method
