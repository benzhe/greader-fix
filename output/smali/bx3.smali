.class public final Lbx3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv04;


# instance fields
.field public final a:Lzw3;


# direct methods
.method public constructor <init>(Lzw3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lux3;->a:Ljava/nio/charset/Charset;

    .line 2
    iput-object p1, p0, Lbx3;->a:Lzw3;

    iput-object p0, p1, Lzw3;->a:Lbx3;

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

    iget-object v0, p0, Lbx3;->a:Lzw3;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lzw3;->B(IJ)V

    return-void
.end method

.method public final b(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lbx3;->a:Lzw3;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lzw3;->I(II)V

    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lsw3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbx3;->a:Lzw3;

    check-cast p2, Lsw3;

    invoke-virtual {v0, p1, p2}, Lzw3;->r(ILsw3;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbx3;->a:Lzw3;

    check-cast p2, Lxy3;

    invoke-virtual {v0, p1, p2}, Lzw3;->s(ILxy3;)V

    return-void
.end method

.method public final d(ILjava/lang/Object;Lnz3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lbx3;->a:Lzw3;

    check-cast p2, Lxy3;

    invoke-virtual {v0, p1, p2, p3}, Lzw3;->i(ILxy3;Lnz3;)V

    return-void
.end method

.method public final e(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lbx3;->a:Lzw3;

    .line 1
    invoke-static {p2, p3}, Lzw3;->R(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lzw3;->f(IJ)V

    return-void
.end method

.method public final f(ILjava/lang/Object;Lnz3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lbx3;->a:Lzw3;

    check-cast p2, Lxy3;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lzw3;->q(II)V

    iget-object v1, v0, Lzw3;->a:Lbx3;

    invoke-interface {p3, p2, v1}, Lnz3;->f(Ljava/lang/Object;Lv04;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lzw3;->q(II)V

    return-void
.end method

.method public final g(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lbx3;->a:Lzw3;

    .line 1
    invoke-static {p2}, Lzw3;->b0(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lzw3;->D(II)V

    return-void
.end method
