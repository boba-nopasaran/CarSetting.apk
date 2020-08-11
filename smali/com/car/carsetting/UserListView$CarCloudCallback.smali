.class final Lcom/car/carsetting/UserListView$CarCloudCallback;
.super Lcom/car/common/ICarCloudCallback$Stub;
.source "UserListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/UserListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarCloudCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/UserListView;


# direct methods
.method private constructor <init>(Lcom/car/carsetting/UserListView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/UserListView$CarCloudCallback;->this$0:Lcom/car/carsetting/UserListView;

    invoke-direct {p0}, Lcom/car/common/ICarCloudCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/carsetting/UserListView;Lcom/car/carsetting/UserListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/carsetting/UserListView$CarCloudCallback;-><init>(Lcom/car/carsetting/UserListView;)V

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

    const-string v0, "CarSetting_UserListView"

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v2, "CarSetting_UserListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageReceived: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/car/cloud/Type$MsgInfo;->fromJson(Ljava/lang/String;)Lcom/car/cloud/Type$MsgInfo;

    move-result-object v0

    iget-object v2, v0, Lcom/car/cloud/Type$MsgInfo;->msgType:Ljava/lang/String;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/car/carsetting/UserListView$CarCloudCallback;->this$0:Lcom/car/carsetting/UserListView;

    invoke-static {v2}, Lcom/car/carsetting/UserListView;->access$000(Lcom/car/carsetting/UserListView;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/car/carsetting/UserListView$CarCloudCallback;->this$0:Lcom/car/carsetting/UserListView;

    invoke-static {v2}, Lcom/car/carsetting/UserListView;->access$000(Lcom/car/carsetting/UserListView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onUserChanged(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v2, "CarSetting_UserListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUserChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/car/cloud/Type$UserInfo;->fromJson(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/car/carsetting/UserListView$CarCloudCallback;->this$0:Lcom/car/carsetting/UserListView;

    invoke-static {v2}, Lcom/car/carsetting/UserListView;->access$000(Lcom/car/carsetting/UserListView;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/car/carsetting/UserListView$CarCloudCallback;->this$0:Lcom/car/carsetting/UserListView;

    invoke-static {v2}, Lcom/car/carsetting/UserListView;->access$000(Lcom/car/carsetting/UserListView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUserStatusChanged(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "CarSetting_UserListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/carsetting/UserListView$CarCloudCallback;->this$0:Lcom/car/carsetting/UserListView;

    invoke-static {v0}, Lcom/car/carsetting/UserListView;->access$100(Lcom/car/carsetting/UserListView;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/car/carsetting/UserListView$CarCloudCallback;->this$0:Lcom/car/carsetting/UserListView;

    invoke-static {v0}, Lcom/car/carsetting/UserListView;->access$000(Lcom/car/carsetting/UserListView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
