.class Lcom/car/carsetting/StorageFragment$1;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/car/carsetting/StorageFragment$1;->this$0:Lcom/car/carsetting/StorageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/car/carsetting/StorageFragment$1;->removeMessages(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/carsetting/StorageFragment$1$1;

    invoke-direct {v1, p0}, Lcom/car/carsetting/StorageFragment$1$1;-><init>(Lcom/car/carsetting/StorageFragment$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/car/carsetting/StorageFragment$1;->this$0:Lcom/car/carsetting/StorageFragment;

    iget-boolean v0, v0, Lcom/car/carsetting/StorageFragment;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/StorageFragment$1;->this$0:Lcom/car/carsetting/StorageFragment;

    invoke-virtual {v0}, Lcom/car/carsetting/StorageFragment;->refreshInfo()V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/car/carsetting/StorageFragment$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/StorageFragment$1;->this$0:Lcom/car/carsetting/StorageFragment;

    const/4 v1, 0x5

    iput v1, v0, Lcom/car/carsetting/StorageFragment;->mCountClickVersion:I

    goto :goto_0
.end method
