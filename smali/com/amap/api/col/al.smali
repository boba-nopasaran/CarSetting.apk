.class public abstract Lcom/amap/api/col/al;
.super Ljava/lang/Object;
.source "GLOverlay.java"


# instance fields
.field private a:Lcom/amap/api/mapcore/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/al;->a:Lcom/amap/api/mapcore/k;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public abstract getZIndex()I
.end method

.method public abstract onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end method
