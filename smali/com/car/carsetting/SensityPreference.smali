.class public Lcom/car/carsetting/SensityPreference;
.super Landroid/preference/Preference;
.source "SensityPreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field mClose:Landroid/widget/RadioButton;

.field mContext:Landroid/content/Context;

.field mHigh:Landroid/widget/RadioButton;

.field mLevel:I

.field mLow:Landroid/widget/RadioButton;

.field mMedium:Landroid/widget/RadioButton;

.field private final mObserver:Landroid/database/ContentObserver;

.field mRadioGroup:Landroid/widget/RadioGroup;

.field mSummary:Landroid/widget/TextView;

.field mWakeupKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/carsetting/SensityPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/car/carsetting/SensityPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/car/carsetting/SensityPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/car/carsetting/SensityPreference$1;

    invoke-direct {v0, p0}, Lcom/car/carsetting/SensityPreference$1;-><init>(Lcom/car/carsetting/SensityPreference;)V

    iput-object v0, p0, Lcom/car/carsetting/SensityPreference;->mWakeupKeyMap:Ljava/util/Map;

    new-instance v0, Lcom/car/carsetting/SensityPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/car/carsetting/SensityPreference$2;-><init>(Lcom/car/carsetting/SensityPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/car/carsetting/SensityPreference;->mObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/car/carsetting/SensityPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/car/carsetting/SensityPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v5, 0x7f0a0018

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    iput-object v5, p0, Lcom/car/carsetting/SensityPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    const v5, 0x7f0a0021

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/car/carsetting/SensityPreference;->mClose:Landroid/widget/RadioButton;

    const v5, 0x7f0a0019

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/car/carsetting/SensityPreference;->mLow:Landroid/widget/RadioButton;

    const v5, 0x7f0a001a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/car/carsetting/SensityPreference;->mMedium:Landroid/widget/RadioButton;

    const v5, 0x7f0a001b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/car/carsetting/SensityPreference;->mHigh:Landroid/widget/RadioButton;

    const v5, 0x7f0a0020

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/car/carsetting/SensityPreference;->mSummary:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/car/carsetting/SensityPreference;->mWakeupKeyMap:Ljava/util/Map;

    const-string v6, "persist.wakeup.index"

    const-string v7, "xiaoming"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    iget-object v5, p0, Lcom/car/carsetting/SensityPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v2, v5, v6

    invoke-static {}, Lcom/car/common/VoiceRecConst;->getVoiceEngineID()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, "persist.wakeup.keywords"

    iget-object v6, p0, Lcom/car/carsetting/SensityPreference;->mContext:Landroid/content/Context;

    const v7, 0x7f080042

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v9

    :cond_1
    iget-object v5, p0, Lcom/car/carsetting/SensityPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080043

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/car/carsetting/SensityPreference;->mSummary:Landroid/widget/TextView;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/car/carsetting/SensityPreference;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/car/common/ProviderUtils;->getWakeupSensity(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/car/carsetting/SensityPreference;->mLevel:I

    iget v5, p0, Lcom/car/carsetting/SensityPreference;->mLevel:I

    invoke-virtual {p0, v5}, Lcom/car/carsetting/SensityPreference;->setStatus(I)V

    iget-object v5, p0, Lcom/car/carsetting/SensityPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/car/carsetting/SensityPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sensity"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/car/carsetting/SensityPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    iget-object v0, p0, Lcom/car/carsetting/SensityPreference;->mLow:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/carsetting/SensityPreference;->mLevel:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/car/carsetting/SensityPreference;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/car/carsetting/SensityPreference;->mLevel:I

    invoke-static {v0, v1}, Lcom/car/common/ProviderUtils;->setWakeupSensity(Landroid/content/Context;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/carsetting/SensityPreference;->mMedium:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/car/carsetting/SensityPreference;->mLevel:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/car/carsetting/SensityPreference;->mHigh:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/car/carsetting/SensityPreference;->mLevel:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/car/carsetting/SensityPreference;->mClose:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/carsetting/SensityPreference;->mLevel:I

    goto :goto_0
.end method

.method setStatus(I)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/car/carsetting/SensityPreference;->mClose:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/car/carsetting/SensityPreference;->mLow:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/car/carsetting/SensityPreference;->mMedium:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/SensityPreference;->mHigh:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/car/carsetting/SensityPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/car/carsetting/SensityPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
