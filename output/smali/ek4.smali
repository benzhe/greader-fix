.class public final Lek4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvn4;


# instance fields
.field public final a:Lck4;


# direct methods
.method public constructor <init>(Lck4;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lrk4;->a:Ljava/nio/charset/Charset;

    .line 3
    iput-object p1, p0, Lek4;->a:Lck4;

    .line 4
    iput-object p0, p1, Lck4;->a:Lek4;

    return-void
.end method


# virtual methods
.method public final a(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lek4;->a:Lck4;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lck4;->y(IJ)V

    return-void
.end method

.method public final b(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lek4;->a:Lck4;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lck4;->F(II)V

    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lvj4;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lek4;->a:Lck4;

    check-cast p2, Lvj4;

    invoke-virtual {v0, p1, p2}, Lck4;->s(ILvj4;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lek4;->a:Lck4;

    check-cast p2, Lam4;

    invoke-virtual {v0, p1, p2}, Lck4;->h(ILam4;)V

    return-void
.end method

.method public final d(ILjava/lang/Object;Lom4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lek4;->a:Lck4;

    check-cast p2, Lam4;

    invoke-virtual {v0, p1, p2, p3}, Lck4;->i(ILam4;Lom4;)V

    return-void
.end method

.method public final e(ILjava/lang/Object;Lom4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lek4;->a:Lck4;

    check-cast p2, Lam4;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, p1, v1}, Lck4;->e(II)V

    .line 3
    iget-object v1, v0, Lck4;->a:Lek4;

    invoke-interface {p3, p2, v1}, Lom4;->g(Ljava/lang/Object;Lvn4;)V

    const/4 p2, 0x4

    .line 4
    invoke-virtual {v0, p1, p2}, Lck4;->e(II)V

    return-void
.end method

.method public final f(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lek4;->a:Lck4;

    .line 2
    invoke-static {p2, p3}, Lck4;->Q(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lck4;->f(IJ)V

    return-void
.end method

.method public final g(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lek4;->a:Lck4;

    .line 2
    invoke-static {p2}, Lck4;->U(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lck4;->x(II)V

    return-void
.end method
