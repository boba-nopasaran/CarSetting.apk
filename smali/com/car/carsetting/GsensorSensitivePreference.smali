.class public Lcom/car/carsetting/GsensorSensitivePreference;
.super Landroid/preference/Preference;
.source "GsensorSensitivePreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field mContext:Landroid/content/Context;

.field mHigh:Landroid/widget/RadioButton;

.field mLevel:I

.field mLow:Landroid/widget/RadioButton;

.field mMedium:Landroid/widget/RadioButton;

.field private final mObserver:Landroid/database/ContentObserver;

.field mRadioGroup:Landroid/widget/RadioGroup;

.field mSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/carsetting/GsensorSensitivePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/car/carsetting/GsensorSensitivePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/car/carsetting/GsensorSensitivePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/car/carsetting/GsensorSensitivePreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/car/carsetting/GsensorSensitivePreference$1;-><init>(Lcom/car/carsetting/GsensorSensitivePreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mContext:Landroid/content/Context;

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/car/carsetting/GsensorSensitivePreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f0a0018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mRadioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f0a0019

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mLow:Landroid/widget/RadioButton;

    const v1, 0x7f0a001a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mMedium:Landroid/widget/RadioButton;

    const v1, 0x7f0a001b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mHigh:Landroid/widget/RadioButton;

    const v1, 0x7f0a0017

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/common/ProviderUtils;->getGsensorSensitive(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mLevel:I

    iget v1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mLevel:I

    invoke-virtual {p0, v1}, Lcom/car/carsetting/GsensorSensitivePreference;->setStatus(I)V

    iget-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gsensor_sensitive"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mSummary:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    iget-object v0, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mLow:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mLevel:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mLevel:I

    invoke-static {v0, v1}, Lcom/car/common/ProviderUtils;->setGsensorSensitive(Landroid/content/Context;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mMedium:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mLevel:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mHigh:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mLevel:I

    goto :goto_0
.end method

.method setStatus(I)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mLow:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mMedium:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mHigh:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/car/carsetting/GsensorSensitivePreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
