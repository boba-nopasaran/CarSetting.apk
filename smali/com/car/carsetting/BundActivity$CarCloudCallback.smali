.class final Lcom/car/carsetting/BundActivity$CarCloudCallback;
.super Lcom/car/common/ICarCloudCallback$Stub;
.source "BundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/BundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarCloudCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/BundActivity;


# direct methods
.method private constructor <init>(Lcom/car/carsetting/BundActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/BundActivity$CarCloudCallback;->this$0:Lcom/car/carsetting/BundActivity;

    invoke-direct {p0}, Lcom/car/common/ICarCloudCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/carsetting/BundActivity;Lcom/car/carsetting/BundActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/carsetting/BundActivity$CarCloudCallback;-><init>(Lcom/car/carsetting/BundActivity;)V

    return-void
.end method


# virtual methods
.method public onDeviceStatusChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CarSetting.BundActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMessageReceived(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUserChanged(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "CarSetting.BundActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/car/cloud/Type$UserInfo;->fromJson(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/car/carsetting/BundActivity$CarCloudCallback;->this$0:Lcom/car/carsetting/BundActivity;

    invoke-virtual {v1}, Lcom/car/carsetting/BundActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onUserStatusChanged(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
