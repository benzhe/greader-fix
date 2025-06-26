.class public abstract Lhp;
.super Lap;
.source "SourceFile"


# static fields
.field public static final g:Ljava/math/BigInteger;

.field public static final h:Ljava/math/BigInteger;

.field public static final i:Ljava/math/BigInteger;

.field public static final j:Ljava/math/BigInteger;

.field public static final k:Ljava/math/BigDecimal;

.field public static final l:Ljava/math/BigDecimal;


# instance fields
.field public f:Lbp;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-wide/32 v0, -0x80000000

    .line 1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lhp;->g:Ljava/math/BigInteger;

    const-wide/32 v1, 0x7fffffff

    .line 2
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Lhp;->h:Ljava/math/BigInteger;

    const-wide/high16 v2, -0x8000000000000000L

    .line 3
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lhp;->i:Ljava/math/BigInteger;

    const-wide v3, 0x7fffffffffffffffL

    .line 4
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lhp;->j:Ljava/math/BigInteger;

    .line 5
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v4, Lhp;->k:Ljava/math/BigDecimal;

    .line 6
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v2, Lhp;->l:Ljava/math/BigDecimal;

    .line 7
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 8
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lap;-><init>(I)V

    return-void
.end method

.method public static final k(I)Ljava/lang/String;
    .locals 5

    int-to-char v0, p0

    .line 1
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    const-string v2, ")"

    if-eqz v1, :cond_0

    const-string v0, "(CTRL-CHAR, code "

    .line 2
    invoke-static {v0, p0, v2}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0xff

    const-string v3, "\' (code "

    const-string v4, "\'"

    if-le p0, v1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / 0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lap;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhp;->D(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhp;->f:Lbp;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lhp;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "Numeric value (%s) out of range of long (%d - %s)"

    .line 3
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 4
    new-instance v2, Lip;

    invoke-direct {v2, p0, p1, v0, v1}, Lip;-><init>(Lap;Ljava/lang/String;Lbp;Ljava/lang/Class;)V

    throw v2
.end method

.method public E(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lhp;->k(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Unexpected character (%s) in numeric value"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ": "

    .line 2
    invoke-static {p1, v0, p2}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lzo;

    invoke-direct {p2, p0, p1}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 4
    throw p2
.end method

.method public i()Lap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhp;->f:Lbp;

    sget-object v1, Lbp;->l:Lbp;

    if-eq v0, v1, :cond_0

    sget-object v1, Lbp;->n:Lbp;

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lap;->g()Lbp;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3
    invoke-virtual {p0}, Lhp;->m()V

    return-object p0

    .line 4
    :cond_2
    iget-boolean v3, v2, Lbp;->i:Z

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_3
    iget-boolean v3, v2, Lbp;->j:Z

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1

    return-object p0

    .line 6
    :cond_4
    sget-object v3, Lbp;->k:Lbp;

    if-eq v2, v3, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Not enough content available for `skipChildren()`: non-blocking parser? (%s)"

    .line 8
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Lzo;

    invoke-direct {v1, p0, v0}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 10
    throw v1
.end method

.method public abstract m()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;
        }
    .end annotation
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    return-object p1

    :cond_0
    const-string v1, "-"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "[Integer with %d digits]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    return-object p1

    :cond_0
    const-string v1, "-"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "[number with %d characters]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/String;Lbp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;
        }
    .end annotation

    .line 1
    new-instance v0, Lmp;

    const-string v1, "Unexpected end-of-input"

    invoke-static {v1, p1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1}, Lmp;-><init>(Lap;Lbp;Ljava/lang/String;)V

    throw v0
.end method

.method public w(Lbp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;
        }
    .end annotation

    .line 1
    sget-object v0, Lbp;->r:Lbp;

    if-eq p1, v0, :cond_2

    .line 2
    sget-object v0, Lbp;->s:Lbp;

    if-eq p1, v0, :cond_1

    sget-object v0, Lbp;->t:Lbp;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, " in a value"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, " in a Number value"

    goto :goto_1

    :cond_2
    const-string v0, " in a String value"

    .line 3
    :goto_1
    invoke-virtual {p0, v0, p1}, Lhp;->t(Ljava/lang/String;Lbp;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public x(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;
        }
    .end annotation

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    invoke-static {p1}, Lhp;->k(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Unexpected character (%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string v0, ": "

    .line 2
    invoke-static {p1, v0, p2}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    new-instance p2, Lzo;

    invoke-direct {p2, p0, p1}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 4
    throw p2

    :cond_1
    const-string p1, " in "

    .line 5
    invoke-static {p1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lhp;->f:Lbp;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lhp;->f:Lbp;

    invoke-virtual {p0, p1, p2}, Lhp;->t(Ljava/lang/String;Lbp;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public y(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;
        }
    .end annotation

    int-to-char p1, p1

    const-string v0, "Illegal character ("

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lhp;->k(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): only regular white space (\\r, \\n, \\t) is allowed between tokens"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lzo;

    invoke-direct {v0, p0, p1}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 3
    throw v0
.end method
