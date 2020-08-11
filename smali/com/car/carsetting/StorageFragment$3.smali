.class Lcom/car/carsetting/StorageFragment$3;
.super Ljava/lang/Object;
.source "StorageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/carsetting/StorageFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/StorageFragment;


# direct methods
.method constructor <init>(Lcom/car/carsetting/StorageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/StorageFragment$3;->this$0:Lcom/car/carsetting/StorageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/StorageFragment$3;->this$0:Lcom/car/carsetting/StorageFragment;

    invoke-virtual {v0}, Lcom/car/carsetting/StorageFragment;->formatVolume2()V

    return-void
.end method
