.class Lcom/car/carsetting/FWUpdateActivity$1;
.super Ljava/lang/Object;
.source "FWUpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/carsetting/FWUpdateActivity;->FWUpdataConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/FWUpdateActivity;


# direct methods
.method constructor <init>(Lcom/car/carsetting/FWUpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/FWUpdateActivity$1;->this$0:Lcom/car/carsetting/FWUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/FWUpdateActivity$1;->this$0:Lcom/car/carsetting/FWUpdateActivity;

    invoke-static {v0}, Lcom/car/carsetting/FWUpdateActivity;->access$000(Lcom/car/carsetting/FWUpdateActivity;)V

    iget-object v0, p0, Lcom/car/carsetting/FWUpdateActivity$1;->this$0:Lcom/car/carsetting/FWUpdateActivity;

    invoke-virtual {v0}, Lcom/car/carsetting/FWUpdateActivity;->finish()V

    return-void
.end method
