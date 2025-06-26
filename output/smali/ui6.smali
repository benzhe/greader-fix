.class public final Lui6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhl6;


# instance fields
.field public final a:Lti6;


# direct methods
.method public constructor <init>(Lti6;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljj6;->a:Ljava/nio/charset/Charset;

    .line 3
    iput-object p1, p0, Lui6;->a:Lti6;

    .line 4
    iput-object p0, p1, Lti6;->a:Lui6;

    return-void
.end method


# virtual methods
.method public a(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lui6;->a:Lti6;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lti6;->O(IJ)V

    return-void
.end method

.method public b(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lui6;->a:Lti6;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lti6;->M(II)V

    return-void
.end method

.method public c(ILjava/lang/Object;Lqk6;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lui6;->a:Lti6;

    check-cast p2, Lak6;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, p1, v1}, Lti6;->Y(II)V

    .line 3
    iget-object v1, v0, Lti6;->a:Lui6;

    invoke-interface {p3, p2, v1}, Lqk6;->e(Ljava/lang/Object;Lhl6;)V

    const/4 p2, 0x4

    .line 4
    invoke-virtual {v0, p1, p2}, Lti6;->Y(II)V

    return-void
.end method

.method public d(ILjava/lang/Object;Lqk6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lui6;->a:Lti6;

    check-cast p2, Lak6;

    invoke-virtual {v0, p1, p2, p3}, Lti6;->S(ILak6;Lqk6;)V

    return-void
.end method

.method public final e(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lqi6;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lui6;->a:Lti6;

    check-cast p2, Lqi6;

    invoke-virtual {v0, p1, p2}, Lti6;->V(ILqi6;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lui6;->a:Lti6;

    check-cast p2, Lak6;

    invoke-virtual {v0, p1, p2}, Lti6;->U(ILak6;)V

    :goto_0
    return-void
.end method

.method public f(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lui6;->a:Lti6;

    .line 2
    invoke-static {p2}, Lti6;->D(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lti6;->Z(II)V

    return-void
.end method

.method public g(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lui6;->a:Lti6;

    .line 2
    invoke-static {p2, p3}, Lti6;->E(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lti6;->b0(IJ)V

    return-void
.end method
