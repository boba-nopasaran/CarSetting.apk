.class public Lcom/car/carsetting/FWUpdateActivity;
.super Landroid/preference/PreferenceActivity;
.source "FWUpdateActivity.java"


# static fields
.field private static final CHOSE_FW_FILE:Ljava/lang/String; = "com.sprd.fileexplorer.activities.FilePickerActivity"


# instance fields
.field private final CHOSE_FW_FILE_REQUEST_CODE:I

.field private final TAG:Ljava/lang/String;

.field protected fwFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/carsetting/FWUpdateActivity;->CHOSE_FW_FILE_REQUEST_CODE:I

    const-string v0, "FWUpdateActivity"

    iput-object v0, p0, Lcom/car/carsetting/FWUpdateActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private FWUpdataConfirm()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/car/carsetting/FWUpdateActivity;->fwFilename:Ljava/lang/String;

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/car/carsetting/FWUpdateActivity;->fwFilename:Ljava/lang/String;

    const-string v3, ".bin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/car/carsetting/FWUpdateActivity;->fwFilename:Ljava/lang/String;

    const-string v3, ".img"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f080091

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/car/carsetting/FWUpdateActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08008f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080092

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    new-instance v3, Lcom/car/carsetting/FWUpdateActivity$1;

    invoke-direct {v3, p0}, Lcom/car/carsetting/FWUpdateActivity$1;-><init>(Lcom/car/carsetting/FWUpdateActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/car/carsetting/FWUpdateActivity$2;

    invoke-direct {v3, p0}, Lcom/car/carsetting/FWUpdateActivity$2;-><init>(Lcom/car/carsetting/FWUpdateActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->create()V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/car/carsetting/FWUpdateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/carsetting/FWUpdateActivity;->setBootloaderCommand()V

    return-void
.end method

.method private setBootloaderCommand()V
    .locals 5

    :try_start_0
    const-string v2, "file://"

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/car/carsetting/FWUpdateActivity;->fwFilename:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "FWUpdateActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "FWUpdateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult called, requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/carsetting/FWUpdateActivity;->fwFilename:Ljava/lang/String;

    const-string v0, "FWUpdateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult called, path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/carsetting/FWUpdateActivity;->fwFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/car/carsetting/FWUpdateActivity;->FWUpdataConfirm()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/car/carsetting/FWUpdateActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "FWUpdateActivity"

    const-string v2, "onCreate called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprd.fileexplorer.activities.FilePickerActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sprd.fileexplorer"

    const-string v2, "com.sprd.fileexplorer.activities.FilePickerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/car/carsetting/FWUpdateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
