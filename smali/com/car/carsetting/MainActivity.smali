.class public Lcom/car/carsetting/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSetting.MainActivity"

.field private static actionbarTextSize:I


# instance fields
.field private mCarAssistFragment:Lcom/car/carsetting/CarAssistFragment;

.field mCurFrag:I

.field mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mLabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftBarWidth:I

.field mOverseaVersion:Z

.field private mRightBarWidth:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field mSettingLayout:Landroid/widget/LinearLayout;

.field mStorageLayout:Landroid/widget/LinearLayout;

.field private mWidescreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "ro.sf.cut.topbot"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc

    :goto_0
    sput v0, Lcom/car/carsetting/MainActivity;->actionbarTextSize:I

    return-void

    :cond_0
    const/16 v0, 0x16

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/carsetting/MainActivity;->mFragments:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/carsetting/MainActivity;->mLabList:Ljava/util/ArrayList;

    .line 32
    iput v1, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    .line 33
    iput-boolean v1, p0, Lcom/car/carsetting/MainActivity;->mWidescreen:Z

    .line 35
    const-string v0, "ro.market.area"

    const-string v2, "china"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "china"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/car/carsetting/MainActivity;->mOverseaVersion:Z

    .line 36
    const-string v0, "persist.leftbar.width"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/car/carsetting/MainActivity;->mLeftBarWidth:I

    .line 37
    const-string v0, "persist.rightbar.width"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/car/carsetting/MainActivity;->mRightBarWidth:I

    return-void

    :cond_0
    move v0, v1

    .line 35
    goto :goto_0
.end method

.method private setBackTask(Z)V
    .locals 1
    .param p1, "isRealFinished"    # Z

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/car/carsetting/MainActivity;->moveTaskToBack(Z)Z

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private setLeftRightWidth(Z)V
    .locals 6
    .param p1, "hideRight"    # Z

    .prologue
    const/16 v5, 0x140

    .line 274
    const v4, 0x7f0a0006

    invoke-virtual {p0, v4}, Lcom/car/carsetting/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 275
    .local v0, "left":Landroid/view/View;
    const v4, 0x7f0a0007

    invoke-virtual {p0, v4}, Lcom/car/carsetting/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 276
    .local v3, "right":Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 281
    .local v1, "lpLeft":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 283
    .local v2, "lpRight":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_2

    .line 284
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget v4, p0, Lcom/car/carsetting/MainActivity;->mScreenWidth:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 293
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 287
    :cond_2
    iget v4, p0, Lcom/car/carsetting/MainActivity;->mScreenHeight:I

    if-ne v4, v5, :cond_3

    .line 288
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 289
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    :cond_3
    iget v4, p0, Lcom/car/carsetting/MainActivity;->mScreenWidth:I

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/car/carsetting/MainActivity;->setBackTask(Z)V

    .line 218
    return-void
.end method

.method protected fragIndexFromIntent(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 184
    const-string v1, "jump2other"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    const/4 v0, 0x1

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    const-string v1, "jump2storage"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    const/4 v0, 0x2

    goto :goto_0

    .line 188
    :cond_2
    const-string v1, "jump2carassist"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.car.cloud"

    invoke-static {p0, v1}, Lcom/car/carsetting/Utils;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public initActionBarTab(Z)V
    .locals 12
    .param p1, "hideCarAssistTab"    # Z

    .prologue
    const v11, 0x7f060001

    const/high16 v10, 0x7f060000

    const/16 v9, 0x11

    const/16 v8, 0xe

    const/4 v7, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 119
    .local v0, "tab1":Landroid/app/ActionBar$Tab;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 120
    .local v4, "v":Landroid/widget/TextView;
    invoke-virtual {v4, v7, v8, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 121
    const v5, 0x7f080001

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 122
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    iget v5, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    if-nez v5, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    :goto_0
    sget v5, Lcom/car/carsetting/MainActivity;->actionbarTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 128
    invoke-virtual {v0, v4}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 129
    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 130
    iget-object v5, p0, Lcom/car/carsetting/MainActivity;->mLabList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 133
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 134
    .local v1, "tab2":Landroid/app/ActionBar$Tab;
    new-instance v4, Landroid/widget/TextView;

    .end local v4    # "v":Landroid/widget/TextView;
    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 135
    .restart local v4    # "v":Landroid/widget/TextView;
    invoke-virtual {v4, v7, v8, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 136
    const v5, 0x7f080003

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 137
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 138
    iget v5, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    :goto_1
    sget v5, Lcom/car/carsetting/MainActivity;->actionbarTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 143
    invoke-virtual {v1, v4}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 144
    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 145
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 146
    iget-object v5, p0, Lcom/car/carsetting/MainActivity;->mLabList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 149
    .local v2, "tab3":Landroid/app/ActionBar$Tab;
    new-instance v4, Landroid/widget/TextView;

    .end local v4    # "v":Landroid/widget/TextView;
    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 150
    .restart local v4    # "v":Landroid/widget/TextView;
    invoke-virtual {v4, v7, v8, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 151
    const v5, 0x7f080002

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 152
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 153
    iget v5, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    :goto_2
    sget v5, Lcom/car/carsetting/MainActivity;->actionbarTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 158
    invoke-virtual {v2, v4}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 159
    invoke-virtual {v2, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 160
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 161
    iget-object v5, p0, Lcom/car/carsetting/MainActivity;->mLabList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    if-nez p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 165
    .local v3, "tab4":Landroid/app/ActionBar$Tab;
    new-instance v4, Landroid/widget/TextView;

    .end local v4    # "v":Landroid/widget/TextView;
    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 166
    .restart local v4    # "v":Landroid/widget/TextView;
    invoke-virtual {v4, v7, v8, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 167
    const v5, 0x7f080048

    invoke-static {p0, v5}, Lcom/car/common/OEM;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 169
    iget v5, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    :goto_3
    sget v5, Lcom/car/carsetting/MainActivity;->actionbarTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 174
    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 175
    invoke-virtual {v3, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 176
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 177
    iget-object v5, p0, Lcom/car/carsetting/MainActivity;->mLabList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v3    # "tab4":Landroid/app/ActionBar$Tab;
    :cond_0
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget v6, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 181
    return-void

    .line 126
    .end local v1    # "tab2":Landroid/app/ActionBar$Tab;
    .end local v2    # "tab3":Landroid/app/ActionBar$Tab;
    :cond_1
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 141
    .restart local v1    # "tab2":Landroid/app/ActionBar$Tab;
    :cond_2
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 156
    .restart local v2    # "tab3":Landroid/app/ActionBar$Tab;
    :cond_3
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 172
    .restart local v3    # "tab4":Landroid/app/ActionBar$Tab;
    :cond_4
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3
.end method

.method jump2CurFragment(Z)V
    .locals 5
    .param p1, "replace"    # Z

    .prologue
    .line 229
    iget v2, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    iget-object v3, p0, Lcom/car/carsetting/MainActivity;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget v0, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    .line 233
    .local v0, "curFrag":I
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 234
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const/high16 v2, 0x10b0000

    const v3, 0x10b0001

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 236
    const v4, 0x7f0a0005

    iget-object v2, p0, Lcom/car/carsetting/MainActivity;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    iget-object v3, p0, Lcom/car/carsetting/MainActivity;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 239
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 240
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 242
    iget-object v2, p0, Lcom/car/carsetting/MainActivity;->mLabList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    if-lt v2, v3, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget v3, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v7, 0x7f030001

    invoke-virtual {p0, v7}, Lcom/car/carsetting/MainActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/car/carsetting/MainActivity;->mScreenHeight:I

    .line 53
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v7

    iget v10, p0, Lcom/car/carsetting/MainActivity;->mLeftBarWidth:I

    sub-int/2addr v7, v10

    iget v10, p0, Lcom/car/carsetting/MainActivity;->mRightBarWidth:I

    sub-int/2addr v7, v10

    iput v7, p0, Lcom/car/carsetting/MainActivity;->mScreenWidth:I

    .line 54
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 55
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget v7, p0, Lcom/car/carsetting/MainActivity;->mScreenWidth:I

    mul-int/lit16 v7, v7, 0xa0

    iget v10, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v7, v10

    iput v7, p0, Lcom/car/carsetting/MainActivity;->mScreenWidth:I

    .line 56
    iget v7, p0, Lcom/car/carsetting/MainActivity;->mScreenHeight:I

    mul-int/lit16 v7, v7, 0xa0

    iget v10, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v7, v10

    iput v7, p0, Lcom/car/carsetting/MainActivity;->mScreenHeight:I

    .line 58
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 59
    .local v6, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 60
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v10, p0, Lcom/car/carsetting/MainActivity;->mLeftBarWidth:I

    sub-int/2addr v7, v10

    iget v10, p0, Lcom/car/carsetting/MainActivity;->mRightBarWidth:I

    sub-int/2addr v7, v10

    iget v10, v6, Landroid/graphics/Point;->y:I

    div-int/2addr v7, v10

    if-lt v7, v11, :cond_5

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/car/carsetting/MainActivity;->mWidescreen:Z

    .line 61
    iget-object v7, p0, Lcom/car/carsetting/MainActivity;->mFragments:Ljava/util/ArrayList;

    new-instance v10, Lcom/car/carsetting/SettingFragment;

    invoke-direct {v10}, Lcom/car/carsetting/SettingFragment;-><init>()V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v7, p0, Lcom/car/carsetting/MainActivity;->mFragments:Ljava/util/ArrayList;

    new-instance v10, Lcom/car/carsetting/OtherFragment;

    invoke-direct {v10}, Lcom/car/carsetting/OtherFragment;-><init>()V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v7, p0, Lcom/car/carsetting/MainActivity;->mFragments:Ljava/util/ArrayList;

    new-instance v10, Lcom/car/carsetting/StorageFragment;

    invoke-direct {v10}, Lcom/car/carsetting/StorageFragment;-><init>()V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    const/4 v3, 0x0

    .line 66
    .local v3, "isCarAssistExist":Z
    const-string v7, "com.car.cloud"

    invoke-static {p0, v7}, Lcom/car/carsetting/Utils;->isApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 67
    const/4 v3, 0x1

    .line 68
    new-instance v7, Lcom/car/carsetting/CarAssistFragment;

    invoke-direct {v7}, Lcom/car/carsetting/CarAssistFragment;-><init>()V

    iput-object v7, p0, Lcom/car/carsetting/MainActivity;->mCarAssistFragment:Lcom/car/carsetting/CarAssistFragment;

    .line 69
    iget-object v7, p0, Lcom/car/carsetting/MainActivity;->mFragments:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/car/carsetting/MainActivity;->mCarAssistFragment:Lcom/car/carsetting/CarAssistFragment;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-boolean v7, p0, Lcom/car/carsetting/MainActivity;->mWidescreen:Z

    if-eqz v7, :cond_0

    .line 71
    iget-object v7, p0, Lcom/car/carsetting/MainActivity;->mCarAssistFragment:Lcom/car/carsetting/CarAssistFragment;

    invoke-virtual {v7}, Lcom/car/carsetting/CarAssistFragment;->hideQrCode()V

    .line 76
    :cond_0
    const/4 v1, 0x0

    .line 77
    .local v1, "hideRightQRCode":Z
    if-eqz v3, :cond_1

    iget-boolean v7, p0, Lcom/car/carsetting/MainActivity;->mWidescreen:Z

    if-eqz v7, :cond_1

    sget v7, Lcom/car/common/OEM;->ID:I

    if-ne v7, v8, :cond_2

    .line 78
    :cond_1
    const v7, 0x7f0a0007

    invoke-virtual {p0, v7}, Lcom/car/carsetting/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 79
    .local v5, "rightQRCode":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 80
    const/4 v1, 0x1

    .line 81
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .end local v5    # "rightQRCode":Landroid/view/View;
    :cond_2
    invoke-direct {p0, v1}, Lcom/car/carsetting/MainActivity;->setLeftRightWidth(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/car/carsetting/MainActivity;->fragIndexFromIntent(Landroid/content/Intent;)I

    move-result v2

    .line 88
    .local v2, "index":I
    if-ltz v2, :cond_3

    iput v2, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 95
    if-eqz v3, :cond_4

    sget v7, Lcom/car/common/OEM;->ID:I

    if-ne v7, v8, :cond_6

    :cond_4
    :goto_1
    invoke-virtual {p0, v8}, Lcom/car/carsetting/MainActivity;->initActionBarTab(Z)V

    .line 97
    invoke-virtual {p0, v9}, Lcom/car/carsetting/MainActivity;->jump2CurFragment(Z)V

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 100
    .local v0, "handler":Landroid/os/Handler;
    const-string v7, "CarSetting.MainActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCurFrag:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v7, Lcom/car/carsetting/MainActivity$1;

    invoke-direct {v7, p0}, Lcom/car/carsetting/MainActivity$1;-><init>(Lcom/car/carsetting/MainActivity;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void

    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "hideRightQRCode":Z
    .end local v2    # "index":I
    .end local v3    # "isCarAssistExist":Z
    :cond_5
    move v7, v9

    .line 60
    goto/16 :goto_0

    .restart local v1    # "hideRightQRCode":Z
    .restart local v2    # "index":I
    .restart local v3    # "isCarAssistExist":Z
    :cond_6
    move v8, v9

    .line 95
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 212
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/car/carsetting/MainActivity;->fragIndexFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 196
    .local v0, "index":I
    if-ltz v0, :cond_0

    iput v0, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    .line 197
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/car/carsetting/MainActivity;->jump2CurFragment(Z)V

    .line 198
    const-string v1, "CarSetting.MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent: intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurFrag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 205
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 251
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 256
    iget-object v3, p0, Lcom/car/carsetting/MainActivity;->mLabList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$Tab;

    .line 257
    .local v2, "t":Landroid/app/ActionBar$Tab;
    invoke-virtual {v2}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f060000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 258
    .end local v2    # "t":Landroid/app/ActionBar$Tab;
    :cond_0
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/car/carsetting/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/car/carsetting/MainActivity;->mLabList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 260
    iget-object v3, p0, Lcom/car/carsetting/MainActivity;->mLabList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 261
    iput v0, p0, Lcom/car/carsetting/MainActivity;->mCurFrag:I

    .line 262
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/car/carsetting/MainActivity;->jump2CurFragment(Z)V

    .line 259
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    :cond_2
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 271
    return-void
.end method
