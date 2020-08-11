.class public final Lcom/car/carsetting/zxing/FormatException;
.super Lcom/car/carsetting/zxing/ReaderException;
.source "FormatException.java"


# static fields
.field private static final instance:Lcom/car/carsetting/zxing/FormatException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/car/carsetting/zxing/FormatException;

    invoke-direct {v0}, Lcom/car/carsetting/zxing/FormatException;-><init>()V

    sput-object v0, Lcom/car/carsetting/zxing/FormatException;->instance:Lcom/car/carsetting/zxing/FormatException;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/car/carsetting/zxing/ReaderException;-><init>()V

    return-void
.end method

.method public static getFormatInstance()Lcom/car/carsetting/zxing/FormatException;
    .locals 1

    sget-object v0, Lcom/car/carsetting/zxing/FormatException;->instance:Lcom/car/carsetting/zxing/FormatException;

    return-object v0
.end method
