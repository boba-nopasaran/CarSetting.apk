.class Lcom/car/carsetting/SwitchPreference$Listener;
.super Ljava/lang/Object;
.source "SwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/carsetting/SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/carsetting/SwitchPreference;


# direct methods
.method private constructor <init>(Lcom/car/carsetting/SwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/car/carsetting/SwitchPreference$Listener;->this$0:Lcom/car/carsetting/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/carsetting/SwitchPreference;Lcom/car/carsetting/SwitchPreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/carsetting/SwitchPreference$Listener;-><init>(Lcom/car/carsetting/SwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/car/carsetting/SwitchPreference$Listener;->this$0:Lcom/car/carsetting/SwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/carsetting/SwitchPreference;->access$100(Lcom/car/carsetting/SwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/SwitchPreference$Listener;->this$0:Lcom/car/carsetting/SwitchPreference;

    invoke-static {v0}, Lcom/car/carsetting/SwitchPreference;->access$200(Lcom/car/carsetting/SwitchPreference;)Landroid/widget/Switch;

    move-result-object v1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
