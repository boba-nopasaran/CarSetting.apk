.class Lcom/car/carsetting/FactoryDialog$2;
.super Ljava/lang/Object;
.source "FactoryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/carsetting/FactoryDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/FactoryDialog;

.field final synthetic val$btnPassWord:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/car/carsetting/FactoryDialog;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/FactoryDialog$2;->this$0:Lcom/car/carsetting/FactoryDialog;

    iput-object p2, p0, Lcom/car/carsetting/FactoryDialog$2;->val$btnPassWord:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/car/carsetting/FactoryDialog$2;->this$0:Lcom/car/carsetting/FactoryDialog;

    invoke-static {v1}, Lcom/car/carsetting/FactoryDialog;->access$000(Lcom/car/carsetting/FactoryDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/car/carsetting/FactoryDialog$2;->val$btnPassWord:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.factory"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/carsetting/FactoryDialog$2;->this$0:Lcom/car/carsetting/FactoryDialog;

    invoke-static {v1}, Lcom/car/carsetting/FactoryDialog;->access$100(Lcom/car/carsetting/FactoryDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    iget-object v1, p0, Lcom/car/carsetting/FactoryDialog$2;->this$0:Lcom/car/carsetting/FactoryDialog;

    invoke-virtual {v1}, Lcom/car/carsetting/FactoryDialog;->dismiss()V

    return-void

    :cond_0
    const-string v1, "CarSet_FactoryDialog"

    const-string v2, "onClick: factory password error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/carsetting/FactoryDialog$2;->this$0:Lcom/car/carsetting/FactoryDialog;

    invoke-static {v1}, Lcom/car/carsetting/FactoryDialog;->access$100(Lcom/car/carsetting/FactoryDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/car/carsetting/FactoryDialog$2;->this$0:Lcom/car/carsetting/FactoryDialog;

    invoke-static {v2}, Lcom/car/carsetting/FactoryDialog;->access$100(Lcom/car/carsetting/FactoryDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
