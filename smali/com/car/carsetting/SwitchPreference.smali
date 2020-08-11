.class public Lcom/car/carsetting/SwitchPreference;
.super Landroid/preference/Preference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/carsetting/SwitchPreference$1;,
        Lcom/car/carsetting/SwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private mIsChecked:Z

.field private final mListener:Lcom/car/carsetting/SwitchPreference$Listener;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/carsetting/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/car/carsetting/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/car/carsetting/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/carsetting/SwitchPreference;->mIsChecked:Z

    new-instance v0, Lcom/car/carsetting/SwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/car/carsetting/SwitchPreference$Listener;-><init>(Lcom/car/carsetting/SwitchPreference;Lcom/car/carsetting/SwitchPreference$1;)V

    iput-object v0, p0, Lcom/car/carsetting/SwitchPreference;->mListener:Lcom/car/carsetting/SwitchPreference$Listener;

    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/car/carsetting/SwitchPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/car/carsetting/SwitchPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/car/carsetting/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/car/carsetting/SwitchPreference;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/SwitchPreference;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/carsetting/SwitchPreference;->mIsChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0023

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/car/carsetting/SwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/car/carsetting/SwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/SwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/car/carsetting/SwitchPreference;->mIsChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/car/carsetting/SwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/car/carsetting/SwitchPreference;->mListener:Lcom/car/carsetting/SwitchPreference$Listener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/car/carsetting/SwitchPreference;->mIsChecked:Z

    iget-object v0, p0, Lcom/car/carsetting/SwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/SwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/car/carsetting/SwitchPreference;->mIsChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/car/carsetting/SwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/SwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method
