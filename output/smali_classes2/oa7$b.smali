.class public final Loa7$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loa7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lxs7;

.field public b:I

.field public c:[Lna7;

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lxs7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Loa7$b;->b:I

    const/16 v0, 0x8

    new-array v0, v0, [Lna7;

    .line 3
    iput-object v0, p0, Loa7$b;->c:[Lna7;

    const/4 v0, 0x7

    .line 4
    iput v0, p0, Loa7$b;->e:I

    .line 5
    iput-object p1, p0, Loa7$b;->a:Lxs7;

    return-void
.end method


# virtual methods
.method public final a(Lna7;)V
    .locals 7

    .line 1
    iget v0, p1, Lna7;->c:I

    const/4 v1, 0x0

    const/16 v2, 0x1000

    if-le v0, v2, :cond_0

    .line 2
    iget-object p1, p0, Loa7$b;->c:[Lna7;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Loa7$b;->c:[Lna7;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Loa7$b;->e:I

    .line 4
    iput v1, p0, Loa7$b;->d:I

    .line 5
    iput v1, p0, Loa7$b;->f:I

    return-void

    .line 6
    :cond_0
    iget v3, p0, Loa7$b;->f:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    if-lez v3, :cond_2

    .line 7
    iget-object v2, p0, Loa7$b;->c:[Lna7;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Loa7$b;->e:I

    if-lt v2, v5, :cond_1

    if-lez v3, :cond_1

    .line 8
    iget-object v5, p0, Loa7$b;->c:[Lna7;

    aget-object v6, v5, v2

    iget v6, v6, Lna7;->c:I

    sub-int/2addr v3, v6

    .line 9
    iget v6, p0, Loa7$b;->f:I

    aget-object v5, v5, v2

    iget v5, v5, Lna7;->c:I

    sub-int/2addr v6, v5

    iput v6, p0, Loa7$b;->f:I

    .line 10
    iget v5, p0, Loa7$b;->d:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Loa7$b;->d:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v2, p0, Loa7$b;->c:[Lna7;

    add-int/lit8 v5, v5, 0x1

    add-int v3, v5, v4

    iget v6, p0, Loa7$b;->d:I

    invoke-static {v2, v5, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget v2, p0, Loa7$b;->e:I

    add-int/2addr v2, v4

    iput v2, p0, Loa7$b;->e:I

    .line 13
    :cond_2
    iget v2, p0, Loa7$b;->d:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Loa7$b;->c:[Lna7;

    array-length v4, v3

    if-le v2, v4, :cond_3

    .line 14
    array-length v2, v3

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lna7;

    .line 15
    array-length v4, v3

    array-length v5, v3

    invoke-static {v3, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget-object v1, p0, Loa7$b;->c:[Lna7;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Loa7$b;->e:I

    .line 17
    iput-object v2, p0, Loa7$b;->c:[Lna7;

    .line 18
    :cond_3
    iget v1, p0, Loa7$b;->e:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Loa7$b;->e:I

    .line 19
    iget-object v2, p0, Loa7$b;->c:[Lna7;

    aput-object p1, v2, v1

    .line 20
    iget p1, p0, Loa7$b;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Loa7$b;->d:I

    .line 21
    iget p1, p0, Loa7$b;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Loa7$b;->f:I

    return-void
.end method

.method public b(Lbt7;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lbt7;->t()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Loa7$b;->c(III)V

    .line 3
    iget-object v0, p0, Loa7$b;->a:Lxs7;

    invoke-virtual {v0, p1}, Lxs7;->F(Lbt7;)Lxs7;

    return-void
.end method

.method public c(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ge p1, p2, :cond_0

    .line 1
    iget-object p2, p0, Loa7$b;->a:Lxs7;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lxs7;->Q(I)Lxs7;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Loa7$b;->a:Lxs7;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lxs7;->Q(I)Lxs7;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    .line 3
    iget-object v0, p0, Loa7$b;->a:Lxs7;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lxs7;->Q(I)Lxs7;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Loa7$b;->a:Lxs7;

    invoke-virtual {p2, p1}, Lxs7;->Q(I)Lxs7;

    return-void
.end method
