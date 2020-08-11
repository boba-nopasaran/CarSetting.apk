.class Lcom/car/carsetting/UserAdapter$1;
.super Ljava/lang/Object;
.source "UserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/carsetting/UserAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/UserAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/car/carsetting/UserAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/UserAdapter$1;->this$0:Lcom/car/carsetting/UserAdapter;

    iput p2, p0, Lcom/car/carsetting/UserAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/car/carsetting/UserAdapter$1;->this$0:Lcom/car/carsetting/UserAdapter;

    iget-object v4, v3, Lcom/car/carsetting/UserAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/car/carsetting/UserAdapter$1;->this$0:Lcom/car/carsetting/UserAdapter;

    invoke-static {v3}, Lcom/car/carsetting/UserAdapter;->access$100(Lcom/car/carsetting/UserAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, Lcom/car/carsetting/UserAdapter$1;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/car/cloud/Type$UserInfo;

    move-object v2, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/car/carsetting/UserAdapter$1;->this$0:Lcom/car/carsetting/UserAdapter;

    invoke-static {v3}, Lcom/car/carsetting/UserAdapter;->access$200(Lcom/car/carsetting/UserAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080056

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/car/cloud/Type$UserInfo;->nickName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/car/carsetting/UserAdapter$1;->this$0:Lcom/car/carsetting/UserAdapter;

    invoke-static {v4}, Lcom/car/carsetting/UserAdapter;->access$200(Lcom/car/carsetting/UserAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080057

    new-instance v5, Lcom/car/carsetting/UserAdapter$1$1;

    invoke-direct {v5, p0}, Lcom/car/carsetting/UserAdapter$1$1;-><init>(Lcom/car/carsetting/UserAdapter$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080059

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
