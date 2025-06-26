.class public final Ld63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lga3;


# instance fields
.field public final a:Lb63;


# direct methods
.method public constructor <init>(Lb63;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lu63;->a:Ljava/nio/charset/Charset;

    .line 3
    iput-object p1, p0, Ld63;->a:Lb63;

    .line 4
    iput-object p0, p1, Lb63;->a:Ld63;

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

    .line 1
    iget-object v0, p0, Ld63;->a:Lb63;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lb63;->i(II)V

    return-void
.end method

.method public final b(ILjava/lang/Object;Lw83;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld63;->a:Lb63;

    check-cast p2, Le83;

    invoke-virtual {v0, p1, p2, p3}, Lb63;->f(ILe83;Lw83;)V

    return-void
.end method

.method public final c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld63;->a:Lb63;

    .line 2
    invoke-static {p2}, Lb63;->K(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lb63;->h(II)V

    return-void
.end method

.method public final d(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld63;->a:Lb63;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lb63;->Q(IJ)V

    return-void
.end method

.method public final e(ILjava/lang/Object;Lw83;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld63;->a:Lb63;

    check-cast p2, Le83;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, p1, v1}, Lb63;->b(II)V

    .line 3
    iget-object v1, v0, Lb63;->a:Ld63;

    invoke-interface {p3, p2, v1}, Lw83;->f(Ljava/lang/Object;Lga3;)V

    const/4 p2, 0x4

    .line 4
    invoke-virtual {v0, p1, p2}, Lb63;->b(II)V

    return-void
.end method

.method public final f(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lk53;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld63;->a:Lb63;

    check-cast p2, Lk53;

    invoke-virtual {v0, p1, p2}, Lb63;->r(ILk53;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ld63;->a:Lb63;

    check-cast p2, Le83;

    invoke-virtual {v0, p1, p2}, Lb63;->e(ILe83;)V

    return-void
.end method

.method public final g(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld63;->a:Lb63;

    .line 2
    invoke-static {p2, p3}, Lb63;->B(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lb63;->M(IJ)V

    return-void
.end method
