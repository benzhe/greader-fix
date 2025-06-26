.class public Lc67;
.super Lg57;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc67$c;
    }
.end annotation


# instance fields
.field public e:I

.field public final f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ln87;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg57;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc67;->f:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public bridge synthetic A(I)Ln87;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc67;->f(I)Lc67;

    move-result-object p1

    return-object p1
.end method

.method public W([BII)V
    .locals 1

    .line 1
    new-instance v0, Lc67$b;

    invoke-direct {v0, p0, p2, p1}, Lc67$b;-><init>(Lc67;I[B)V

    invoke-virtual {p0, v0, p3}, Lc67;->e(Lc67$c;I)V

    return-void
.end method

.method public b(Ln87;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lc67;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc67;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    iget v0, p0, Lc67;->e:I

    invoke-interface {p1}, Ln87;->d()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lc67;->e:I

    return-void

    .line 4
    :cond_0
    check-cast p1, Lc67;

    .line 5
    :goto_0
    iget-object v0, p1, Lc67;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p1, Lc67;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln87;

    .line 7
    iget-object v1, p0, Lc67;->f:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lc67;->e:I

    iget v1, p1, Lc67;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lc67;->e:I

    const/4 v0, 0x0

    .line 9
    iput v0, p1, Lc67;->e:I

    .line 10
    invoke-virtual {p1}, Lc67;->close()V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc67;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln87;

    .line 2
    invoke-interface {v0}, Ln87;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lc67;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln87;

    invoke-interface {v0}, Ln87;->close()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lc67;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc67;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln87;

    invoke-interface {v0}, Ln87;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lc67;->e:I

    return v0
.end method

.method public final e(Lc67$c;I)V
    .locals 2

    .line 1
    iget v0, p0, Lc67;->e:I

    if-lt v0, p2, :cond_5

    .line 2
    iget-object v0, p0, Lc67;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lc67;->c()V

    :cond_0
    :goto_0
    if-lez p2, :cond_3

    .line 4
    iget-object v0, p0, Lc67;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lc67;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln87;

    .line 6
    invoke-interface {v0}, Ln87;->d()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 7
    :try_start_0
    invoke-virtual {p1, v0, v1}, Lc67$c;->a(Ln87;I)I

    move-result v0

    iput v0, p1, Lc67$c;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    iput-object v0, p1, Lc67$c;->b:Ljava/io/IOException;

    .line 9
    :goto_1
    iget-object v0, p1, Lc67$c;->b:Ljava/io/IOException;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_2

    return-void

    :cond_2
    sub-int/2addr p2, v1

    .line 10
    iget v0, p0, Lc67;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lc67;->e:I

    .line 11
    invoke-virtual {p0}, Lc67;->c()V

    goto :goto_0

    :cond_3
    if-gtz p2, :cond_4

    return-void

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Failed executing read operation"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public f(I)Lc67;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc67;->d()I

    move-result v0

    if-lt v0, p1, :cond_2

    .line 2
    iget v0, p0, Lc67;->e:I

    sub-int/2addr v0, p1

    iput v0, p0, Lc67;->e:I

    .line 3
    new-instance v0, Lc67;

    invoke-direct {v0}, Lc67;-><init>()V

    :goto_0
    if-lez p1, :cond_1

    .line 4
    iget-object v1, p0, Lc67;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln87;

    .line 5
    invoke-interface {v1}, Ln87;->d()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 6
    invoke-interface {v1, p1}, Ln87;->A(I)Ln87;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc67;->b(Ln87;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lc67;->f:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln87;

    invoke-virtual {v0, v2}, Lc67;->b(Ln87;)V

    .line 8
    invoke-interface {v1}, Ln87;->d()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    return-object v0

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public readUnsignedByte()I
    .locals 2

    .line 1
    new-instance v0, Lc67$a;

    invoke-direct {v0, p0}, Lc67$a;-><init>(Lc67;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lc67;->e(Lc67$c;I)V

    .line 3
    iget v0, v0, Lc67$c;->a:I

    return v0
.end method
