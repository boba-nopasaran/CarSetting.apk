.class Lcom/car/carsetting/SoftapDialog$3;
.super Ljava/lang/Object;
.source "SoftapDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/SoftapDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/SoftapDialog;


# direct methods
.method constructor <init>(Lcom/car/carsetting/SoftapDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/SoftapDialog$3;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/car/carsetting/SoftapDialog$3;->this$0:Lcom/car/carsetting/SoftapDialog;

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Lcom/car/carsetting/SoftapDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
