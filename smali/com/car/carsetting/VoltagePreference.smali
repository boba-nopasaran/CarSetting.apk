.class public Lcom/car/carsetting/VoltagePreference;
.super Landroid/preference/Preference;
.source "VoltagePreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field mContext:Landroid/content/Context;

.field mCurVoltage:I

.field private final mObserver:Landroid/database/ContentObserver;

.field mRadioGroup:Landroid/widget/RadioGroup;

.field mStep1:Landroid/widget/RadioButton;

.field mStep2:Landroid/widget/RadioButton;

.field mStep3:Landroid/widget/RadioButton;

.field mStep4:Landroid/widget/RadioButton;

.field mSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/carsetting/VoltagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/car/carsetting/VoltagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/car/carsetting/VoltagePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/car/carsetting/VoltagePreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/car/carsetting/VoltagePreference$1;-><init>(Lcom/car/carsetting/VoltagePreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/car/carsetting/VoltagePreference;->mObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/car/carsetting/VoltagePreference;->mContext:Landroid/content/Context;

    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/car/carsetting/VoltagePreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v4, 0x7f0a0018

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    iput-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0a002b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mStep1:Landroid/widget/RadioButton;

    const v4, 0x7f0a002c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mStep2:Landroid/widget/RadioButton;

    const v4, 0x7f0a002d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mStep3:Landroid/widget/RadioButton;

    const v4, 0x7f0a002e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mStep4:Landroid/widget/RadioButton;

    const v4, 0x7f0a002a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mSummary:Landroid/widget/TextView;

    const-string v4, "persist.voltage.steps"

    const-string v5, "113,118,121,124"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/common/ProviderUtils;->getMcuVoltage(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/car/common/ProviderUtils;->setMcuVoltage(Landroid/content/Context;I)V

    :cond_0
    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mStep1:Landroid/widget/RadioButton;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mStep2:Landroid/widget/RadioButton;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mStep3:Landroid/widget/RadioButton;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mStep4:Landroid/widget/RadioButton;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080086

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mSummary:Landroid/widget/TextView;

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v7, v1, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    rem-int/lit8 v7, v1, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "V"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/car/carsetting/VoltagePreference;->setStatus(I)V

    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mcu_voltage"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/car/carsetting/VoltagePreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v9, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 9

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mStep1:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->getId()I

    move-result v4

    if-ne p2, v4, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const-string v4, "persist.voltage.steps"

    const-string v5, "113,118,121,124"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/car/carsetting/VoltagePreference;->mCurVoltage:I

    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/car/carsetting/VoltagePreference;->mCurVoltage:I

    invoke-static {v4, v5}, Lcom/car/common/ProviderUtils;->setMcuVoltage(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080086

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mSummary:Landroid/widget/TextView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/car/carsetting/VoltagePreference;->mCurVoltage:I

    div-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/car/carsetting/VoltagePreference;->mCurVoltage:I

    rem-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "V"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mStep2:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->getId()I

    move-result v4

    if-ne p2, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mStep3:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->getId()I

    move-result v4

    if-ne p2, v4, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/car/carsetting/VoltagePreference;->mStep4:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->getId()I

    move-result v4

    if-ne p2, v4, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method setStatus(I)V
    .locals 6

    const/4 v5, 0x1

    const-string v3, "persist.voltage.steps"

    const-string v4, "113,118,121,124"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/car/carsetting/VoltagePreference;->mStep1:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-ne v1, v5, :cond_4

    iget-object v3, p0, Lcom/car/carsetting/VoltagePreference;->mStep2:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    iget-object v3, p0, Lcom/car/carsetting/VoltagePreference;->mStep3:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/car/carsetting/VoltagePreference;->mStep4:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/car/carsetting/VoltagePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/car/carsetting/VoltagePreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
