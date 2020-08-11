.class Lcom/car/carsetting/UserAdapter$1$1;
.super Ljava/lang/Object;
.source "UserAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/carsetting/UserAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/carsetting/UserAdapter$1;


# direct methods
.method constructor <init>(Lcom/car/carsetting/UserAdapter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/UserAdapter$1$1;->this$1:Lcom/car/carsetting/UserAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v3, p0, Lcom/car/carsetting/UserAdapter$1$1;->this$1:Lcom/car/carsetting/UserAdapter$1;

    iget-object v3, v3, Lcom/car/carsetting/UserAdapter$1;->this$0:Lcom/car/carsetting/UserAdapter;

    invoke-static {v3}, Lcom/car/carsetting/UserAdapter;->access$100(Lcom/car/carsetting/UserAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/car/carsetting/UserAdapter$1$1;->this$1:Lcom/car/carsetting/UserAdapter$1;

    iget v4, v4, Lcom/car/carsetting/UserAdapter$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/cloud/Type$UserInfo;

    invoke-static {}, Lcom/car/carsetting/MyApplication;->getCarCloud()Lcom/car/common/ICarCloud;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v3, v2, Lcom/car/cloud/Type$UserInfo;->unionId:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/car/common/ICarCloud;->removeUser(Ljava/lang/String;)Z

    invoke-interface {v0}, Lcom/car/common/ICarCloud;->getUserListAsync()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
