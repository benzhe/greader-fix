.class public final Ltx3;
.super Lmw3;
.source "SourceFile"

# interfaces
.implements Lxx3;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmw3<",
        "Ljava/lang/Integer;",
        ">;",
        "Lxx3<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public f:[I

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltx3;

    invoke-direct {v0}, Ltx3;-><init>()V

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lmw3;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 1
    invoke-direct {p0}, Lmw3;-><init>()V

    iput-object v0, p0, Ltx3;->f:[I

    const/4 v0, 0x0

    iput v0, p0, Ltx3;->g:I

    return-void
.end method

.method public constructor <init>([II)V
    .locals 0

    invoke-direct {p0}, Lmw3;-><init>()V

    iput-object p1, p0, Ltx3;->f:[I

    iput p2, p0, Ltx3;->g:I

    return-void
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ltx3;->n(II)V

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lmw3;->d()V

    .line 1
    sget-object v0, Lux3;->a:Ljava/nio/charset/Charset;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Ltx3;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lmw3;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_0
    check-cast p1, Ltx3;

    iget v0, p1, Ltx3;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    iget v3, p0, Ltx3;->g:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    iget-object v0, p0, Ltx3;->f:[I

    array-length v2, v0

    if-le v3, v2, :cond_2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Ltx3;->f:[I

    :cond_2
    iget-object v0, p1, Ltx3;->f:[I

    iget-object v2, p0, Ltx3;->f:[I

    iget v4, p0, Ltx3;->g:I

    iget p1, p1, Ltx3;->g:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Ltx3;->g:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltx3;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lmw3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Ltx3;

    iget v1, p0, Ltx3;->g:I

    iget v2, p1, Ltx3;->g:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget-object p1, p1, Ltx3;->f:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ltx3;->g:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Ltx3;->f:[I

    aget v2, v2, v1

    aget v4, p1, v1

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ltx3;->j(I)V

    iget-object v0, p0, Ltx3;->f:[I

    aget p1, v0, p1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final h(I)I
    .locals 1

    invoke-virtual {p0, p1}, Ltx3;->j(I)V

    iget-object v0, p0, Ltx3;->f:[I

    aget p1, v0, p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ltx3;->g:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ltx3;->f:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final j(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Ltx3;->g:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0, p1}, Ltx3;->l(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic k(I)Lxx3;
    .locals 2

    iget v0, p0, Ltx3;->g:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ltx3;

    iget-object v1, p0, Ltx3;->f:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget v1, p0, Ltx3;->g:I

    invoke-direct {v0, p1, v1}, Ltx3;-><init>([II)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final l(I)Ljava/lang/String;
    .locals 4

    iget v0, p0, Ltx3;->g:I

    const/16 v1, 0x23

    const-string v2, "Index:"

    const-string v3, ", Size:"

    invoke-static {v1, v2, p1, v3, v0}, Ljo;->N(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final n(II)V
    .locals 5

    invoke-virtual {p0}, Lmw3;->d()V

    if-ltz p1, :cond_1

    iget v0, p0, Ltx3;->g:I

    if-gt p1, v0, :cond_1

    iget-object v1, p0, Ltx3;->f:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Ljo;->m(IIII)I

    move-result v0

    new-array v0, v0, [I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ltx3;->f:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Ltx3;->g:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ltx3;->f:[I

    :goto_0
    iget-object v0, p0, Ltx3;->f:[I

    aput p2, v0, p1

    iget p1, p0, Ltx3;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ltx3;->g:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p0, p1}, Ltx3;->l(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lmw3;->d()V

    invoke-virtual {p0, p1}, Ltx3;->j(I)V

    iget-object v0, p0, Ltx3;->f:[I

    aget v1, v0, p1

    iget v2, p0, Ltx3;->g:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Ltx3;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ltx3;->g:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lmw3;->d()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ltx3;->g:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ltx3;->f:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Ltx3;->f:[I

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Ltx3;->g:I

    sub-int/2addr v2, v1

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ltx3;->g:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Ltx3;->g:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final removeRange(II)V
    .locals 2

    invoke-virtual {p0}, Lmw3;->d()V

    if-lt p2, p1, :cond_0

    iget-object v0, p0, Ltx3;->f:[I

    iget v1, p0, Ltx3;->g:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ltx3;->g:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Ltx3;->g:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0}, Lmw3;->d()V

    invoke-virtual {p0, p1}, Ltx3;->j(I)V

    iget-object v0, p0, Ltx3;->f:[I

    aget v1, v0, p1

    aput p2, v0, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Ltx3;->g:I

    return v0
.end method
