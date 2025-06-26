.class public abstract Lgp;
.super Lhp;
.source "SourceFile"


# instance fields
.field public A:J

.field public B:D

.field public C:Ljava/math/BigInteger;

.field public D:Ljava/math/BigDecimal;

.field public E:Z

.field public F:I

.field public final m:Llp;

.field public n:Z

.field public o:I

.field public p:I

.field public q:J

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Lrp;

.field public w:Lbp;

.field public final x:Laq;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Llp;I)V
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Lhp;-><init>(I)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lgp;->r:I

    .line 3
    iput v0, p0, Lgp;->t:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lgp;->y:I

    .line 5
    iput-object p1, p0, Lgp;->m:Llp;

    .line 6
    new-instance v2, Laq;

    iget-object p1, p1, Llp;->c:Lwp;

    invoke-direct {v2, p1}, Laq;-><init>(Lwp;)V

    .line 7
    iput-object v2, p0, Lgp;->x:Laq;

    .line 8
    sget-object p1, Lap$a;->s:Lap$a;

    .line 9
    iget p1, p1, Lap$a;->f:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 10
    new-instance p1, Lqp;

    invoke-direct {p1, p0}, Lqp;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move-object v2, p1

    .line 11
    new-instance p1, Lrp;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lrp;-><init>(Lrp;Lqp;III)V

    .line 12
    iput-object p1, p0, Lgp;->v:Lrp;

    return-void
.end method


# virtual methods
.method public abstract F()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public I()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lap$a;->u:Lap$a;

    iget v1, p0, Lap;->e:I

    invoke-virtual {v0, v1}, Lap$a;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lgp;->m:Llp;

    .line 3
    iget-object v0, v0, Llp;->a:Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract L()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public Q(IC)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgp;->v:Lrp;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    int-to-char p1, p1

    .line 2
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-virtual {v0}, Lrp;->f()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-virtual {p0}, Lgp;->I()Ljava/lang/Object;

    move-result-object v3

    .line 3
    new-instance p1, Lyo;

    iget v6, v0, Lrp;->g:I

    iget v7, v0, Lrp;->h:I

    const-wide/16 v4, -0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lyo;-><init>(Ljava/lang/Object;JII)V

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const-string p1, "Unexpected close marker \'%s\': expected \'%c\' (for %s starting at %s)"

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Lzo;

    invoke-direct {p2, p0, p1}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 6
    throw p2
.end method

.method public S(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lhp;->f:Lbp;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p2}, Lhp;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/high16 p2, -0x80000000

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const p2, 0x7fffffff

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, v1, v0

    const-string p2, "Numeric value (%s) out of range of int (%d - %s)"

    .line 3
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 4
    new-instance v1, Lip;

    invoke-direct {v1, p0, p2, p1, v0}, Lip;-><init>(Lap;Ljava/lang/String;Lbp;Ljava/lang/Class;)V

    throw v1

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lhp;->D(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public Z(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;
        }
    .end annotation

    .line 1
    sget-object v0, Lap$a;->l:Lap$a;

    invoke-virtual {p0, v0}, Lap;->f(Lap$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    int-to-char p1, p1

    const-string v0, "Illegal unquoted character ("

    .line 2
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lhp;->k(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): has to be escaped using backslash to be included in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lzo;

    invoke-direct {p2, p0, p1}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 4
    throw p2
.end method

.method public final a0(Ljava/lang/String;D)Lbp;
    .locals 3

    .line 1
    iget-object v0, p0, Lgp;->x:Laq;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Laq;->b:[C

    const/4 v2, -0x1

    .line 3
    iput v2, v0, Laq;->c:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Laq;->d:I

    .line 5
    iput-object p1, v0, Laq;->j:Ljava/lang/String;

    .line 6
    iput-object v1, v0, Laq;->k:[C

    .line 7
    iget-boolean p1, v0, Laq;->f:Z

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {v0}, Laq;->b()V

    .line 9
    :cond_0
    iput v2, v0, Laq;->i:I

    .line 10
    iput-wide p2, p0, Lgp;->B:D

    const/16 p1, 0x8

    .line 11
    iput p1, p0, Lgp;->y:I

    .line 12
    sget-object p1, Lbp;->t:Lbp;

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 2
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

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lgp;->v:Lrp;

    .line 3
    iget-object v0, v0, Lrp;->c:Lrp;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lrp;->f:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lgp;->v:Lrp;

    .line 6
    iget-object v0, v0, Lrp;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lgp;->y:I

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1d

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_15

    .line 2
    iget-object v0, p0, Lhp;->f:Lbp;

    sget-object v3, Lbp;->s:Lbp;

    const-string v4, "2.2250738585072012e-308"

    const-string v5, ")"

    const-string v6, "Malformed numeric value ("

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v0, v3, :cond_12

    .line 3
    iget v0, p0, Lgp;->F:I

    const/16 v3, 0x9

    if-gt v0, v3, :cond_3

    .line 4
    iget-object v0, p0, Lgp;->x:Laq;

    iget-boolean v3, p0, Lgp;->E:Z

    .line 5
    iget v4, v0, Laq;->c:I

    if-ltz v4, :cond_1

    iget-object v5, v0, Laq;->b:[C

    if-eqz v5, :cond_1

    if-eqz v3, :cond_0

    add-int/2addr v4, v8

    .line 6
    iget v0, v0, Laq;->d:I

    sub-int/2addr v0, v8

    invoke-static {v5, v4, v0}, Lop;->a([CII)I

    move-result v0

    goto :goto_0

    .line 7
    :cond_0
    iget v0, v0, Laq;->d:I

    invoke-static {v5, v4, v0}, Lop;->a([CII)I

    move-result v0

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 8
    iget-object v3, v0, Laq;->h:[C

    iget v0, v0, Laq;->i:I

    sub-int/2addr v0, v8

    invoke-static {v3, v8, v0}, Lop;->a([CII)I

    move-result v0

    :goto_0
    neg-int v0, v0

    goto :goto_1

    .line 9
    :cond_2
    iget-object v3, v0, Laq;->h:[C

    iget v0, v0, Laq;->i:I

    invoke-static {v3, v7, v0}, Lop;->a([CII)I

    move-result v0

    .line 10
    :goto_1
    iput v0, p0, Lgp;->z:I

    .line 11
    iput v8, p0, Lgp;->y:I

    goto/16 :goto_9

    :cond_3
    const/16 v3, 0x12

    if-gt v0, v3, :cond_9

    .line 12
    iget-object v3, p0, Lgp;->x:Laq;

    iget-boolean v4, p0, Lgp;->E:Z

    .line 13
    iget v5, v3, Laq;->c:I

    if-ltz v5, :cond_5

    iget-object v6, v3, Laq;->b:[C

    if-eqz v6, :cond_5

    if-eqz v4, :cond_4

    add-int/2addr v5, v8

    .line 14
    iget v3, v3, Laq;->d:I

    sub-int/2addr v3, v8

    invoke-static {v6, v5, v3}, Lop;->b([CII)J

    move-result-wide v3

    goto :goto_2

    .line 15
    :cond_4
    iget v3, v3, Laq;->d:I

    invoke-static {v6, v5, v3}, Lop;->b([CII)J

    move-result-wide v3

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    .line 16
    iget-object v4, v3, Laq;->h:[C

    iget v3, v3, Laq;->i:I

    sub-int/2addr v3, v8

    invoke-static {v4, v8, v3}, Lop;->b([CII)J

    move-result-wide v3

    :goto_2
    neg-long v3, v3

    goto :goto_3

    .line 17
    :cond_6
    iget-object v4, v3, Laq;->h:[C

    iget v3, v3, Laq;->i:I

    invoke-static {v4, v7, v3}, Lop;->b([CII)J

    move-result-wide v3

    :goto_3
    const/16 v5, 0xa

    if-ne v0, v5, :cond_8

    .line 18
    iget-boolean v0, p0, Lgp;->E:Z

    if-eqz v0, :cond_7

    const-wide/32 v5, -0x80000000

    cmp-long v0, v3, v5

    if-ltz v0, :cond_8

    long-to-int v0, v3

    .line 19
    iput v0, p0, Lgp;->z:I

    .line 20
    iput v8, p0, Lgp;->y:I

    goto/16 :goto_9

    :cond_7
    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_8

    long-to-int v0, v3

    .line 21
    iput v0, p0, Lgp;->z:I

    .line 22
    iput v8, p0, Lgp;->y:I

    goto/16 :goto_9

    .line 23
    :cond_8
    iput-wide v3, p0, Lgp;->A:J

    .line 24
    iput v1, p0, Lgp;->y:I

    goto/16 :goto_9

    .line 25
    :cond_9
    iget-object v0, p0, Lgp;->x:Laq;

    invoke-virtual {v0}, Laq;->d()Ljava/lang/String;

    move-result-object v0

    .line 26
    :try_start_0
    iget v3, p0, Lgp;->F:I

    .line 27
    iget-object v4, p0, Lgp;->x:Laq;

    invoke-virtual {v4}, Laq;->i()[C

    move-result-object v4

    .line 28
    iget-object v8, p0, Lgp;->x:Laq;

    invoke-virtual {v8}, Laq;->j()I

    move-result v8

    .line 29
    iget-boolean v9, p0, Lgp;->E:Z

    if-eqz v9, :cond_a

    add-int/lit8 v8, v8, 0x1

    :cond_a
    if-eqz v9, :cond_b

    .line 30
    sget-object v9, Lop;->a:Ljava/lang/String;

    goto :goto_4

    :cond_b
    sget-object v9, Lop;->b:Ljava/lang/String;

    .line 31
    :goto_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_c

    goto :goto_6

    :cond_c
    if-le v3, v10, :cond_d

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v10, :cond_f

    add-int v11, v8, v3

    .line 32
    aget-char v11, v4, v11

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sub-int/2addr v11, v12

    if-eqz v11, :cond_e

    if-gez v11, :cond_10

    goto :goto_6

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_f
    :goto_6
    const/4 v7, 0x1

    :cond_10
    :goto_7
    if-eqz v7, :cond_11

    .line 33
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lgp;->A:J

    .line 34
    iput v1, p0, Lgp;->y:I

    goto :goto_9

    .line 35
    :cond_11
    invoke-virtual {p0, v1, v0}, Lgp;->S(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    throw v2

    :catch_0
    move-exception v1

    .line 36
    invoke-static {v6}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lhp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v2, Lzo;

    invoke-direct {v2, p0, v0, v1}, Lzo;-><init>(Lap;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    throw v2

    .line 39
    :cond_12
    sget-object v3, Lbp;->t:Lbp;

    if-ne v0, v3, :cond_14

    .line 40
    :try_start_1
    iget-object v0, p0, Lgp;->x:Laq;

    .line 41
    invoke-virtual {v0}, Laq;->d()Ljava/lang/String;

    move-result-object v0

    .line 42
    sget-object v3, Lop;->a:Ljava/lang/String;

    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-wide/16 v3, 0x1

    goto :goto_8

    .line 44
    :cond_13
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 45
    :goto_8
    iput-wide v3, p0, Lgp;->B:D

    const/16 v0, 0x8

    .line 46
    iput v0, p0, Lgp;->y:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    .line 47
    invoke-static {v6}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgp;->x:Laq;

    invoke-virtual {v2}, Laq;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lhp;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v2, Lzo;

    invoke-direct {v2, p0, v1, v0}, Lzo;-><init>(Lap;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    throw v2

    :cond_14
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v7

    const-string v0, "Current token (%s) not numeric, can not use numeric value accessors"

    .line 50
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Lzo;

    invoke-direct {v1, p0, v0}, Lzo;-><init>(Lap;Ljava/lang/String;)V

    .line 52
    throw v1

    .line 53
    :cond_15
    :goto_9
    iget v0, p0, Lgp;->y:I

    and-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_1d

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_16

    .line 54
    iget v0, p0, Lgp;->z:I

    int-to-long v2, v0

    iput-wide v2, p0, Lgp;->A:J

    goto :goto_a

    :cond_16
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_18

    .line 55
    sget-object v0, Lhp;->i:Ljava/math/BigInteger;

    iget-object v3, p0, Lgp;->C:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_17

    sget-object v0, Lhp;->j:Ljava/math/BigInteger;

    iget-object v3, p0, Lgp;->C:Ljava/math/BigInteger;

    .line 56
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_17

    .line 57
    iget-object v0, p0, Lgp;->C:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lgp;->A:J

    goto :goto_a

    .line 58
    :cond_17
    invoke-virtual {p0}, Lhp;->C()V

    throw v2

    :cond_18
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_1a

    .line 59
    iget-wide v3, p0, Lgp;->B:D

    const-wide/high16 v5, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, v3, v5

    if-ltz v0, :cond_19

    const-wide/high16 v5, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, v3, v5

    if-gtz v0, :cond_19

    double-to-long v2, v3

    .line 60
    iput-wide v2, p0, Lgp;->A:J

    goto :goto_a

    .line 61
    :cond_19
    invoke-virtual {p0}, Lhp;->C()V

    throw v2

    :cond_1a
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1c

    .line 62
    sget-object v0, Lhp;->k:Ljava/math/BigDecimal;

    iget-object v3, p0, Lgp;->D:Ljava/math/BigDecimal;

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_1b

    sget-object v0, Lhp;->l:Ljava/math/BigDecimal;

    iget-object v3, p0, Lgp;->D:Ljava/math/BigDecimal;

    .line 63
    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_1b

    .line 64
    iget-object v0, p0, Lgp;->D:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lgp;->A:J

    .line 65
    :goto_a
    iget v0, p0, Lgp;->y:I

    or-int/2addr v0, v1

    iput v0, p0, Lgp;->y:I

    goto :goto_b

    .line 66
    :cond_1b
    invoke-virtual {p0}, Lhp;->C()V

    throw v2

    .line 67
    :cond_1c
    sget v0, Lcq;->a:I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: this code path should never get executed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1d
    :goto_b
    iget-wide v0, p0, Lgp;->A:J

    return-wide v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lgp;->n:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lgp;->o:I

    iget v1, p0, Lgp;->p:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lgp;->o:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lgp;->n:Z

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lgp;->F()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lgp;->L()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgp;->L()V

    .line 6
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final d0(ZI)Lbp;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lgp;->E:Z

    .line 2
    iput p2, p0, Lgp;->F:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lgp;->y:I

    .line 4
    sget-object p1, Lbp;->s:Lbp;

    return-object p1
.end method

.method public m()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lzo;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgp;->v:Lrp;

    invoke-virtual {v0}, Lrp;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lgp;->v:Lrp;

    invoke-virtual {v0}, Lrp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Array"

    goto :goto_0

    :cond_0
    const-string v0, "Object"

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 3
    iget-object v2, p0, Lgp;->v:Lrp;

    .line 4
    invoke-virtual {p0}, Lgp;->I()Ljava/lang/Object;

    move-result-object v4

    .line 5
    new-instance v9, Lyo;

    iget v7, v2, Lrp;->g:I

    iget v8, v2, Lrp;->h:I

    const-wide/16 v5, -0x1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lyo;-><init>(Ljava/lang/Object;JII)V

    aput-object v9, v1, v0

    const-string v0, ": expected close marker for %s (start marker at %s)"

    .line 6
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lhp;->t(Ljava/lang/String;Lbp;)V

    throw v1

    :cond_1
    return-void
.end method
