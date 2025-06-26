.class public final Lm84;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll84;


# direct methods
.method public constructor <init>(Ll84;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lj94;->a:Ljava/nio/charset/Charset;

    .line 2
    iput-object p1, p0, Lm84;->a:Ll84;

    iput-object p0, p1, Ll84;->a:Lm84;

    return-void
.end method


# virtual methods
.method public final a(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm84;->a:Ll84;

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    .line 2
    invoke-virtual {v0, p1, p2}, Ll84;->i(II)V

    return-void
.end method

.method public final b(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm84;->a:Ll84;

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ll84;->k(IJ)V

    return-void
.end method

.method public final c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm84;->a:Ll84;

    invoke-static {p2}, Ll84;->c(I)I

    move-result p2

    .line 1
    invoke-virtual {v0, p1, p2}, Ll84;->h(II)V

    return-void
.end method

.method public final d(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm84;->a:Ll84;

    invoke-static {p2, p3}, Ll84;->d(J)J

    move-result-wide p2

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Ll84;->j(IJ)V

    return-void
.end method

.method public final e(ILjava/lang/Object;Lna4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm84;->a:Ll84;

    .line 1
    check-cast p2, Lda4;

    check-cast v0, Lj84;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 2
    invoke-virtual {v0, p1}, Lj84;->q(I)V

    .line 3
    move-object p1, p2

    check-cast p1, Lt74;

    invoke-virtual {p1}, Lt74;->g()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4
    invoke-interface {p3, p1}, Lna4;->e(Ljava/lang/Object;)I

    move-result v1

    .line 5
    invoke-virtual {p1, v1}, Lt74;->h(I)V

    :cond_0
    invoke-virtual {v0, v1}, Lj84;->q(I)V

    iget-object p1, v0, Ll84;->a:Lm84;

    .line 6
    invoke-interface {p3, p2, p1}, Lna4;->i(Ljava/lang/Object;Lm84;)V

    return-void
.end method

.method public final f(ILjava/lang/Object;Lna4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm84;->a:Ll84;

    .line 1
    check-cast p2, Lda4;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Ll84;->f(II)V

    iget-object v1, v0, Ll84;->a:Lm84;

    .line 2
    invoke-interface {p3, p2, v1}, Lna4;->i(Ljava/lang/Object;Lm84;)V

    const/4 p2, 0x4

    .line 3
    invoke-virtual {v0, p1, p2}, Ll84;->f(II)V

    return-void
.end method
