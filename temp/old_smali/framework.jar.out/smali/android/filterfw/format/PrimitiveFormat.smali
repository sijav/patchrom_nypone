.class public Landroid/filterfw/format/PrimitiveFormat;
.super Ljava/lang/Object;
.source "PrimitiveFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createByteFormat(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .parameter "target"

    .prologue
    const/4 v0, 0x2

    invoke-static {v0, p0}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createByteFormat(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .parameter "count"
    .parameter "target"

    .prologue
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(III)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createDoubleFormat(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .parameter "target"

    .prologue
    const/4 v0, 0x6

    invoke-static {v0, p0}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createDoubleFormat(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .parameter "count"
    .parameter "target"

    .prologue
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(III)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createFloatFormat(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .parameter "target"

    .prologue
    const/4 v0, 0x5

    invoke-static {v0, p0}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createFloatFormat(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .parameter "count"
    .parameter "target"

    .prologue
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(III)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method private static createFormat(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 2
    .parameter "baseType"
    .parameter "target"

    .prologue
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    invoke-direct {v0, p0, p1}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .local v0, result:Landroid/filterfw/core/MutableFrameFormat;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensionCount(I)V

    return-object v0
.end method

.method private static createFormat(III)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .parameter "baseType"
    .parameter "count"
    .parameter "target"

    .prologue
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    invoke-direct {v0, p0, p2}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .local v0, result:Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(I)V

    return-object v0
.end method

.method public static createInt16Format(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .parameter "target"

    .prologue
    const/4 v0, 0x3

    invoke-static {v0, p0}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createInt16Format(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .parameter "count"
    .parameter "target"

    .prologue
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(III)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createInt32Format(I)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .parameter "target"

    .prologue
    const/4 v0, 0x4

    invoke-static {v0, p0}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createInt32Format(II)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .parameter "count"
    .parameter "target"

    .prologue
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Landroid/filterfw/format/PrimitiveFormat;->createFormat(III)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method
