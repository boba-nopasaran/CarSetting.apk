.class Lcom/car/carsetting/OtherFragment$3;
.super Ljava/lang/Object;
.source "OtherFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/carsetting/OtherFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/OtherFragment;


# direct methods
.method constructor <init>(Lcom/car/carsetting/OtherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/OtherFragment$3;->this$0:Lcom/car/carsetting/OtherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.factory"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/carsetting/OtherFragment$3;->this$0:Lcom/car/carsetting/OtherFragment;

    iget-object v1, v1, Lcom/car/carsetting/OtherFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
