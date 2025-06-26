.class public abstract Lti6;
.super Lpi6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti6$e;,
        Lti6$b;,
        Lti6$c;,
        Lti6$d;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Z


# instance fields
.field public a:Lui6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lti6;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lti6;->b:Ljava/util/logging/Logger;

    .line 2
    sget-boolean v0, Lcl6;->g:Z

    .line 3
    sput-boolean v0, Lti6;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lpi6;-><init>()V

    return-void
.end method

.method public constructor <init>(Lti6$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lpi6;-><init>()V

    return-void
.end method

.method public static A(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static B(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    invoke-static {p1, p2}, Lti6;->C(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static C(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static D(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static E(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static c(IZ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static d(ILqi6;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    .line 2
    invoke-virtual {p1}, Lqi6;->size()I

    move-result p1

    invoke-static {p1}, Lti6;->p(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static e(Lqi6;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lqi6;->size()I

    move-result p0

    invoke-static {p0}, Lti6;->p(I)I

    move-result p0

    return p0
.end method

.method public static f(ID)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static g(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lti6;->m(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static h(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static i(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static j(IF)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static k(ILak6;Lqk6;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    .line 2
    check-cast p1, Lii6;

    invoke-virtual {p1, p2}, Lii6;->m(Lqk6;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static l(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    invoke-static {p1}, Lti6;->m(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static m(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 1
    invoke-static {p0}, Lti6;->A(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static n(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    .line 2
    invoke-static {p1, p2}, Lti6;->C(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static o(Lnj6;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lnj6;->b:Lqi6;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lnj6;->b:Lqi6;

    invoke-virtual {p0}, Lqi6;->size()I

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lnj6;->a:Lak6;

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lnj6;->a:Lak6;

    invoke-interface {p0}, Lak6;->h()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 5
    :goto_0
    invoke-static {p0}, Lti6;->p(I)I

    move-result p0

    return p0
.end method

.method public static p(I)I
    .locals 1

    .line 1
    invoke-static {p0}, Lti6;->A(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static q(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static r(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static s(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    invoke-static {p1}, Lti6;->t(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static t(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->D(I)I

    move-result p0

    invoke-static {p0}, Lti6;->A(I)I

    move-result p0

    return p0
.end method

.method public static u(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    invoke-static {p1, p2}, Lti6;->v(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static v(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lti6;->E(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lti6;->C(J)I

    move-result p0

    return p0
.end method

.method public static w(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    invoke-static {p1}, Lti6;->x(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static x(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ldl6;->e(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Ldl6$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Ljj6;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3
    array-length p0, p0

    .line 4
    :goto_0
    invoke-static {p0}, Lti6;->p(I)I

    move-result p0

    return p0
.end method

.method public static y(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/lit8 p0, p0, 0x0

    .line 1
    invoke-static {p0}, Lti6;->A(I)I

    move-result p0

    return p0
.end method

.method public static z(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lti6;->y(I)I

    move-result p0

    invoke-static {p1}, Lti6;->A(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final F(Ljava/lang/String;Ldl6$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lti6;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object p2, Ljj6;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 3
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lti6;->a0(I)V

    const/4 p2, 0x0

    .line 4
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lpi6;->a([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lti6$d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    throw p1

    :catch_1
    move-exception p1

    .line 6
    new-instance p2, Lti6$d;

    invoke-direct {p2, p1}, Lti6$d;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract G()I
.end method

.method public abstract H(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract I(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract J([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract K(ILqi6;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract L(Lqi6;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract M(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract N(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract O(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract P(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract Q(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract R(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract S(ILak6;Lqk6;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract T(Lak6;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract U(ILak6;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract V(ILqi6;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract W(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract X(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract Y(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract Z(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a0(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lti6;->G()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract b0(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c0(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
