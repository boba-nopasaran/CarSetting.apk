.class Lcom/car/carsetting/StorageFragment$1$1;
.super Ljava/lang/Object;
.source "StorageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/carsetting/StorageFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/carsetting/StorageFragment$1;


# direct methods
.method constructor <init>(Lcom/car/carsetting/StorageFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/StorageFragment$1$1;->this$1:Lcom/car/carsetting/StorageFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/car/carsetting/StorageFragment$1$1;->this$1:Lcom/car/carsetting/StorageFragment$1;

    iget-object v1, v1, Lcom/car/carsetting/StorageFragment$1;->this$0:Lcom/car/carsetting/StorageFragment;

    iget-object v1, v1, Lcom/car/carsetting/StorageFragment;->mSDVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/car/carsetting/StorageFragment$1$1;->this$1:Lcom/car/carsetting/StorageFragment$1;

    iget-object v1, v1, Lcom/car/carsetting/StorageFragment$1;->this$0:Lcom/car/carsetting/StorageFragment;

    invoke-static {}, Lcom/car/carsetting/StorageFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/car/carsetting/StorageFragment;->getVolumeSize(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/carsetting/StorageFragment$1$1;->this$1:Lcom/car/carsetting/StorageFragment$1;

    iget-object v1, v1, Lcom/car/carsetting/StorageFragment$1;->this$0:Lcom/car/carsetting/StorageFragment;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/car/carsetting/StorageFragment;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/car/carsetting/StorageFragment;->access$200(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/car/carsetting/StorageFragment;->mDVRSize:J

    iget-object v1, p0, Lcom/car/carsetting/StorageFragment$1$1;->this$1:Lcom/car/carsetting/StorageFragment$1;

    iget-object v1, v1, Lcom/car/carsetting/StorageFragment$1;->this$0:Lcom/car/carsetting/StorageFragment;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/car/carsetting/StorageFragment;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/car/carsetting/StorageFragment;->access$200(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/car/carsetting/StorageFragment;->mLockSize:J

    iget-object v1, p0, Lcom/car/carsetting/StorageFragment$1$1;->this$1:Lcom/car/carsetting/StorageFragment$1;

    iget-object v1, v1, Lcom/car/carsetting/StorageFragment$1;->this$0:Lcom/car/carsetting/StorageFragment;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/car/carsetting/StorageFragment;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/car/carsetting/StorageFragment;->access$200(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/car/carsetting/StorageFragment;->mCaptureSize:J

    iget-object v1, p0, Lcom/car/carsetting/StorageFragment$1$1;->this$1:Lcom/car/carsetting/StorageFragment$1;

    iget-object v1, v1, Lcom/car/carsetting/StorageFragment$1;->this$0:Lcom/car/carsetting/StorageFragment;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/car/carsetting/StorageFragment;->access$500()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/car/carsetting/StorageFragment;->access$200(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/car/carsetting/StorageFragment;->mPhotoSize:J

    const-string v1, "CarSetting.StorageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/carsetting/StorageFragment$1$1;->this$1:Lcom/car/carsetting/StorageFragment$1;

    iget-object v3, v3, Lcom/car/carsetting/StorageFragment$1;->this$0:Lcom/car/carsetting/StorageFragment;

    iget-wide v4, v3, Lcom/car/carsetting/StorageFragment;->mVideoSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/car/carsetting/StorageFragment$1$1;->this$1:Lcom/car/carsetting/StorageFragment$1;

    iget-object v1, v1, Lcom/car/carsetting/StorageFragment$1;->this$0:Lcom/car/carsetting/StorageFragment;

    iget-boolean v1, v1, Lcom/car/carsetting/StorageFragment;->mPaused:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/car/carsetting/StorageFragment$1$1;->this$1:Lcom/car/carsetting/StorageFragment$1;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/car/carsetting/StorageFragment$1;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
