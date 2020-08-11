.class Lcom/car/carsetting/UserListView$1;
.super Landroid/os/Handler;
.source "UserListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/UserListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/UserListView;


# direct methods
.method constructor <init>(Lcom/car/carsetting/UserListView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/UserListView$1;->this$0:Lcom/car/carsetting/UserListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/car/carsetting/UserListView$1;->this$0:Lcom/car/carsetting/UserListView;

    invoke-static {v2, v0}, Lcom/car/carsetting/UserListView;->access$300(Lcom/car/carsetting/UserListView;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/car/cloud/Type$MsgInfo;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/car/carsetting/UserListView$1;->this$0:Lcom/car/carsetting/UserListView;

    invoke-static {v2}, Lcom/car/carsetting/UserListView;->access$400(Lcom/car/carsetting/UserListView;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/car/cloud/Type$MsgInfo;->from:Ljava/lang/String;

    iget-object v4, v1, Lcom/car/cloud/Type$MsgInfo;->content:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/car/carsetting/UserListView$1;->this$0:Lcom/car/carsetting/UserListView;

    invoke-static {v2}, Lcom/car/carsetting/UserListView;->access$500(Lcom/car/carsetting/UserListView;)Lcom/car/carsetting/UserAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/carsetting/UserListView$1;->this$0:Lcom/car/carsetting/UserListView;

    invoke-static {v2}, Lcom/car/carsetting/UserListView;->access$500(Lcom/car/carsetting/UserListView;)Lcom/car/carsetting/UserAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/car/carsetting/UserAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/car/carsetting/UserListView$1;->this$0:Lcom/car/carsetting/UserListView;

    invoke-static {v2}, Lcom/car/carsetting/UserListView;->access$500(Lcom/car/carsetting/UserListView;)Lcom/car/carsetting/UserAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/carsetting/UserListView$1;->this$0:Lcom/car/carsetting/UserListView;

    invoke-static {v2}, Lcom/car/carsetting/UserListView;->access$500(Lcom/car/carsetting/UserListView;)Lcom/car/carsetting/UserAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/car/carsetting/UserListView$1;->this$0:Lcom/car/carsetting/UserListView;

    invoke-static {v3}, Lcom/car/carsetting/UserListView;->access$100(Lcom/car/carsetting/UserListView;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/car/carsetting/UserAdapter;->setUserStatus(Ljava/util/HashMap;)V

    iget-object v2, p0, Lcom/car/carsetting/UserListView$1;->this$0:Lcom/car/carsetting/UserListView;

    invoke-static {v2}, Lcom/car/carsetting/UserListView;->access$500(Lcom/car/carsetting/UserListView;)Lcom/car/carsetting/UserAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/car/carsetting/UserAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
