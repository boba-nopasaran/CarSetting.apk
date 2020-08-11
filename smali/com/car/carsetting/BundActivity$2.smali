.class Lcom/car/carsetting/BundActivity$2;
.super Ljava/lang/Object;
.source "BundActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/carsetting/BundActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/BundActivity;


# direct methods
.method constructor <init>(Lcom/car/carsetting/BundActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/BundActivity$2;->this$0:Lcom/car/carsetting/BundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    if-eqz p2, :cond_0

    const-string v0, "persist.hide.bund.dlg"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/carsetting/BundActivity$2;->this$0:Lcom/car/carsetting/BundActivity;

    invoke-static {v0}, Lcom/car/carsetting/BundActivity;->access$100(Lcom/car/carsetting/BundActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "persist.hide.bund.dlg"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/carsetting/BundActivity$2;->this$0:Lcom/car/carsetting/BundActivity;

    invoke-static {v0}, Lcom/car/carsetting/BundActivity;->access$100(Lcom/car/carsetting/BundActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
