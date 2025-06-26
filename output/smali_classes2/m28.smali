.class public abstract Lm28;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:[I

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lm28;->e()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 3

    .line 1
    iget v0, p0, Lm28;->b:I

    if-lez v0, :cond_2

    iget v1, p0, Lm28;->a:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x3f7d70a4    # 0.99f

    if-eq v0, v1, :cond_1

    sub-int/2addr v0, v1

    .line 2
    div-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lm28;->d:F

    mul-float v0, v0, v1

    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const v0, 0x3c23d70a    # 0.01f

    return v0
.end method

.method public abstract b([BI)I
.end method

.method public c()Z
    .locals 2

    .line 1
    iget v0, p0, Lm28;->b:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d([BII)V
    .locals 1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lm28;->b([BI)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 2
    iget p2, p0, Lm28;->b:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lm28;->b:I

    .line 3
    iget-object p2, p0, Lm28;->c:[I

    array-length p3, p2

    if-ge p1, p3, :cond_1

    const/16 p3, 0x200

    .line 4
    aget p1, p2, p1

    if-le p3, p1, :cond_1

    .line 5
    iget p1, p0, Lm28;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm28;->a:I

    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lm28;->b:I

    .line 2
    iput v0, p0, Lm28;->a:I

    return-void
.end method
