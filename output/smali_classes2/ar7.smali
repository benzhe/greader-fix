.class public Lar7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lbr7;",
        ":",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public volatile _size:I

.field public a:[Lbr7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lar7;->_size:I

    return-void
.end method


# virtual methods
.method public final a(Lbr7;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lfp7;->a:Z

    .line 2
    move-object v0, p1

    check-cast v0, Lop7$a;

    invoke-virtual {v0, p0}, Lop7$a;->l(Lar7;)V

    .line 3
    iget-object v1, p0, Lar7;->a:[Lbr7;

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Lbr7;

    .line 4
    iput-object v1, p0, Lar7;->a:[Lbr7;

    goto :goto_0

    .line 5
    :cond_0
    iget v2, p0, Lar7;->_size:I

    .line 6
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 7
    iget v2, p0, Lar7;->_size:I

    mul-int/lit8 v2, v2, 0x2

    .line 8
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Lbr7;

    iput-object v1, p0, Lar7;->a:[Lbr7;

    .line 9
    :cond_1
    :goto_0
    iget v2, p0, Lar7;->_size:I

    add-int/lit8 v3, v2, 0x1

    .line 10
    iput v3, p0, Lar7;->_size:I

    .line 11
    aput-object p1, v1, v2

    .line 12
    iput v2, v0, Lop7$a;->f:I

    .line 13
    invoke-virtual {p0, v2}, Lar7;->d(I)V

    return-void
.end method

.method public final b()Lbr7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lar7;->a:[Lbr7;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c(I)Lbr7;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lfp7;->a:Z

    .line 2
    iget-object v0, p0, Lar7;->a:[Lbr7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    .line 3
    iget v1, p0, Lar7;->_size:I

    const/4 v2, -0x1

    add-int/2addr v1, v2

    .line 4
    iput v1, p0, Lar7;->_size:I

    .line 5
    iget v1, p0, Lar7;->_size:I

    if-ge p1, v1, :cond_4

    .line 6
    iget v1, p0, Lar7;->_size:I

    .line 7
    invoke-virtual {p0, p1, v1}, Lar7;->e(II)V

    add-int/lit8 v1, p1, -0x1

    .line 8
    div-int/lit8 v1, v1, 0x2

    if-lez p1, :cond_0

    .line 9
    aget-object v3, v0, p1

    invoke-static {v3}, Lim7;->c(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v0, v1

    invoke-static {v4}, Lim7;->c(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 10
    invoke-virtual {p0, p1, v1}, Lar7;->e(II)V

    .line 11
    invoke-virtual {p0, v1}, Lar7;->d(I)V

    goto :goto_1

    :cond_0
    :goto_0
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 12
    iget v3, p0, Lar7;->_size:I

    if-lt v1, v3, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object v3, p0, Lar7;->a:[Lbr7;

    invoke-static {v3}, Lim7;->c(Ljava/lang/Object;)V

    add-int/lit8 v4, v1, 0x1

    .line 14
    iget v5, p0, Lar7;->_size:I

    if-ge v4, v5, :cond_2

    .line 15
    aget-object v5, v3, v4

    invoke-static {v5}, Lim7;->c(Ljava/lang/Object;)V

    check-cast v5, Ljava/lang/Comparable;

    aget-object v6, v3, v1

    invoke-static {v6}, Lim7;->c(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    move v1, v4

    .line 16
    :cond_2
    aget-object v4, v3, p1

    invoke-static {v4}, Lim7;->c(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Comparable;

    aget-object v3, v3, v1

    invoke-static {v3}, Lim7;->c(Ljava/lang/Object;)V

    invoke-interface {v4, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p0, p1, v1}, Lar7;->e(II)V

    move p1, v1

    goto :goto_0

    .line 18
    :cond_4
    :goto_1
    iget p1, p0, Lar7;->_size:I

    .line 19
    aget-object p1, v0, p1

    invoke-static {p1}, Lim7;->c(Ljava/lang/Object;)V

    .line 20
    sget-boolean v1, Lfp7;->a:Z

    const/4 v1, 0x0

    .line 21
    invoke-interface {p1, v1}, Lbr7;->l(Lar7;)V

    .line 22
    invoke-interface {p1, v2}, Lbr7;->i(I)V

    .line 23
    iget v2, p0, Lar7;->_size:I

    .line 24
    aput-object v1, v0, v2

    return-object p1
.end method

.method public final d(I)V
    .locals 3

    :goto_0
    if-gtz p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lar7;->a:[Lbr7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    add-int/lit8 v1, p1, -0x1

    .line 2
    div-int/lit8 v1, v1, 0x2

    .line 3
    aget-object v2, v0, v1

    invoke-static {v2}, Lim7;->c(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1, v1}, Lar7;->e(II)V

    move p1, v1

    goto :goto_0
.end method

.method public final e(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lar7;->a:[Lbr7;

    invoke-static {v0}, Lim7;->c(Ljava/lang/Object;)V

    .line 2
    aget-object v1, v0, p2

    invoke-static {v1}, Lim7;->c(Ljava/lang/Object;)V

    .line 3
    aget-object v2, v0, p1

    invoke-static {v2}, Lim7;->c(Ljava/lang/Object;)V

    .line 4
    aput-object v1, v0, p1

    .line 5
    aput-object v2, v0, p2

    .line 6
    invoke-interface {v1, p1}, Lbr7;->i(I)V

    .line 7
    invoke-interface {v2, p2}, Lbr7;->i(I)V

    return-void
.end method
