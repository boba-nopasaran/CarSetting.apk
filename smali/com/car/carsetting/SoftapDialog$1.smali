.class Lcom/car/carsetting/SoftapDialog$1;
.super Ljava/lang/Object;
.source "SoftapDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/carsetting/SoftapDialog;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/car/carsetting/SoftapDialog$1;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/SoftapDialog$1;->this$0:Lcom/car/carsetting/SoftapDialog;

    invoke-virtual {v0}, Lcom/car/carsetting/SoftapDialog;->dismiss()V

    return-void
.end method
