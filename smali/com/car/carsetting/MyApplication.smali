.class public Lcom/car/carsetting/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/carsetting/MyApplication$Listener;,
        Lcom/car/carsetting/MyApplication$MyHandler;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarSetting.MyApplication"

.field private static mCarCloud:Lcom/car/common/ICarCloud;

.field private static mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/carsetting/MyApplication$Listener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/car/carsetting/MyApplication;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Lcom/car/carsetting/MyApplication$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/car/carsetting/MyApplication$MyHandler;-><init>(Lcom/car/carsetting/MyApplication;Lcom/car/carsetting/MyApplication$1;)V

    iput-object v0, p0, Lcom/car/carsetting/MyApplication;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/car/carsetting/MyApplication$1;

    invoke-direct {v0, p0}, Lcom/car/carsetting/MyApplication$1;-><init>(Lcom/car/carsetting/MyApplication;)V

    iput-object v0, p0, Lcom/car/carsetting/MyApplication;->mServiceConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$100()Lcom/car/common/ICarCloud;
    .locals 1

    sget-object v0, Lcom/car/carsetting/MyApplication;->mCarCloud:Lcom/car/common/ICarCloud;

    return-object v0
.end method

.method static synthetic access$102(Lcom/car/common/ICarCloud;)Lcom/car/common/ICarCloud;
    .locals 0

    sput-object p0, Lcom/car/carsetting/MyApplication;->mCarCloud:Lcom/car/common/ICarCloud;

    return-object p0
.end method

.method static synthetic access$200(Lcom/car/carsetting/MyApplication;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/MyApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/car/carsetting/MyApplication;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/carsetting/MyApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/carsetting/MyApplication;->bindService()V

    return-void
.end method

.method private bindService()V
    .locals 8

    const-wide/16 v6, 0x1f4

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.car.cloud"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.car.cloud.CarCloudService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/carsetting/MyApplication;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v4}, Lcom/car/carsetting/MyApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "CarSetting.MyApplication"

    const-string v3, "Bind ICarCloud failed, try later"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/carsetting/MyApplication;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    const-string v2, "CarSetting.MyApplication"

    const-string v3, "Bind ICarCloud OK, wait connection..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/carsetting/MyApplication;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static getCarCloud()Lcom/car/common/ICarCloud;
    .locals 1

    sget-object v0, Lcom/car/carsetting/MyApplication;->mCarCloud:Lcom/car/common/ICarCloud;

    return-object v0
.end method

.method public static registerListener(Lcom/car/carsetting/MyApplication$Listener;)V
    .locals 2

    sget-object v1, Lcom/car/carsetting/MyApplication;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/car/carsetting/MyApplication;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregisterListener(Lcom/car/carsetting/MyApplication$Listener;)V
    .locals 2

    sget-object v1, Lcom/car/carsetting/MyApplication;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/car/carsetting/MyApplication;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "com.car.cloud"

    invoke-static {p0, v0}, Lcom/car/common/Util;->isApkInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/car/carsetting/MyApplication;->bindService()V

    :cond_0
    return-void
.end method
