.class Lcom/car/carsetting/MyApplication$1;
.super Ljava/lang/Object;
.source "MyApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/MyApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/MyApplication;


# direct methods
.method constructor <init>(Lcom/car/carsetting/MyApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/MyApplication$1;->this$0:Lcom/car/carsetting/MyApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v2, "CarSetting.MyApplication"

    const-string v3, "onServiceConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/car/common/ICarCloud$Stub;->asInterface(Landroid/os/IBinder;)Lcom/car/common/ICarCloud;

    move-result-object v2

    invoke-static {v2}, Lcom/car/carsetting/MyApplication;->access$102(Lcom/car/common/ICarCloud;)Lcom/car/common/ICarCloud;

    iget-object v2, p0, Lcom/car/carsetting/MyApplication$1;->this$0:Lcom/car/carsetting/MyApplication;

    invoke-static {v2}, Lcom/car/carsetting/MyApplication;->access$200(Lcom/car/carsetting/MyApplication;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/car/carsetting/MyApplication;->access$300()Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/car/carsetting/MyApplication;->access$300()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/carsetting/MyApplication$Listener;

    invoke-interface {v1}, Lcom/car/carsetting/MyApplication$Listener;->onCarCloudChanged()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6

    const-string v2, "CarSetting.MyApplication"

    const-string v3, "onServiceDisconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/car/carsetting/MyApplication;->access$102(Lcom/car/common/ICarCloud;)Lcom/car/common/ICarCloud;

    iget-object v2, p0, Lcom/car/carsetting/MyApplication$1;->this$0:Lcom/car/carsetting/MyApplication;

    invoke-static {v2}, Lcom/car/carsetting/MyApplication;->access$200(Lcom/car/carsetting/MyApplication;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lcom/car/carsetting/MyApplication;->access$300()Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/car/carsetting/MyApplication;->access$300()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/carsetting/MyApplication$Listener;

    invoke-interface {v1}, Lcom/car/carsetting/MyApplication$Listener;->onCarCloudChanged()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
