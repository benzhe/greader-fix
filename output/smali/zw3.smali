.class public abstract Lzw3;
.super Lrw3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzw3$e;,
        Lzw3$d;,
        Lzw3$b;,
        Lzw3$a;,
        Lzw3$c;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Z


# instance fields
.field public a:Lbx3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lzw3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lzw3;->b:Ljava/util/logging/Logger;

    .line 1
    sget-boolean v0, Lh04;->h:Z

    .line 2
    sput-boolean v0, Lzw3;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrw3;-><init>()V

    return-void
.end method

.method public constructor <init>(Lax3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrw3;-><init>()V

    return-void
.end method

.method public static C(IJ)I
    .locals 0

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    invoke-static {p1, p2}, Lzw3;->H(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static F(IJ)I
    .locals 0

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    invoke-static {p1, p2}, Lzw3;->H(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static G(IJ)I
    .locals 0

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    invoke-static {p1, p2}, Lzw3;->R(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lzw3;->H(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static H(J)I
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

.method public static J(I)I
    .locals 0

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static K(II)I
    .locals 0

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    invoke-static {p1}, Lzw3;->Y(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static L(J)I
    .locals 0

    invoke-static {p0, p1}, Lzw3;->R(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lzw3;->H(J)I

    move-result p0

    return p0
.end method

.method public static M(I)I
    .locals 0

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static N(II)I
    .locals 0

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    invoke-static {p1}, Lzw3;->Z(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static O(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lj04;->a(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lm04; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lux3;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lzw3;->Z(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static P(II)I
    .locals 0

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    invoke-static {p1}, Lzw3;->b0(I)I

    move-result p1

    invoke-static {p1}, Lzw3;->Z(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static Q(I)I
    .locals 0

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static R(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static S(I)I
    .locals 0

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static T(II)I
    .locals 0

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    invoke-static {p1}, Lzw3;->Y(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static X(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lzw3;->Z(I)I

    move-result p0

    return p0
.end method

.method public static Y(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lzw3;->Z(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static Z(I)I
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

.method public static a0(I)I
    .locals 0

    invoke-static {p0}, Lzw3;->b0(I)I

    move-result p0

    invoke-static {p0}, Lzw3;->Z(I)I

    move-result p0

    return p0
.end method

.method public static b0(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static d(Lfy3;)I
    .locals 1

    invoke-virtual {p0}, Lfy3;->a()I

    move-result p0

    invoke-static {p0}, Lzw3;->Z(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static m(I)I
    .locals 0

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static n(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    invoke-static {p1}, Lzw3;->O(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static o(Lsw3;)I
    .locals 1

    invoke-virtual {p0}, Lsw3;->size()I

    move-result p0

    invoke-static {p0}, Lzw3;->Z(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static p(Lxy3;Lnz3;)I
    .locals 2

    check-cast p0, Ljw3;

    invoke-virtual {p0}, Ljw3;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p0}, Lnz3;->h(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljw3;->a(I)V

    :cond_0
    invoke-static {v0}, Lzw3;->Z(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static v(I)I
    .locals 0

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static w(I)I
    .locals 0

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static x(ILsw3;)I
    .locals 1

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    invoke-virtual {p1}, Lsw3;->size()I

    move-result p1

    invoke-static {p1}, Lzw3;->Z(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static y(ILxy3;)I
    .locals 1

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    .line 1
    invoke-interface {p1}, Lxy3;->o()I

    move-result p1

    invoke-static {p1}, Lzw3;->Z(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static z(ILxy3;Lnz3;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lzw3;->X(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    check-cast p1, Ljw3;

    invoke-virtual {p1}, Ljw3;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p2, p1}, Lnz3;->h(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljw3;->a(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract A(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract B(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract D(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract E(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract I(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract U(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract V(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract W(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract f(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract g(ILsw3;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract h(ILxy3;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract i(ILxy3;Lnz3;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract j(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final k(Ljava/lang/String;Lm04;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lzw3;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lux3;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lzw3;->V(I)V

    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lrw3;->a([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lzw3$c; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Lzw3$c;

    invoke-direct {p2, p1}, Lzw3$c;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract l()I
.end method

.method public abstract q(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract r(ILsw3;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract s(ILxy3;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract t(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract u(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
