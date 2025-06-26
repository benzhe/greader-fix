.class public Luu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lav5;


# instance fields
.field public a:Lbd6;


# direct methods
.method public constructor <init>(Lbd6;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Llu5;->j(Lbd6;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NumericIncrementTransformOperation expects a NumberValue operand"

    .line 3
    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Luu5;->a:Lbd6;

    return-void
.end method


# virtual methods
.method public a(Lbd6;Lcom/google/firebase/Timestamp;)Lbd6;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Luu5;->b(Lbd6;)Lbd6;

    move-result-object p2

    .line 2
    invoke-static {p2}, Llu5;->h(Lbd6;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Luu5;->a:Lbd6;

    invoke-static {v0}, Llu5;->h(Lbd6;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p2}, Lbd6;->T()J

    move-result-wide p1

    .line 4
    iget-object v0, p0, Luu5;->a:Lbd6;

    invoke-static {v0}, Llu5;->g(Lbd6;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Luu5;->a:Lbd6;

    invoke-virtual {v0}, Lbd6;->R()D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Luu5;->a:Lbd6;

    invoke-static {v0}, Llu5;->h(Lbd6;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Luu5;->a:Lbd6;

    invoke-virtual {v0}, Lbd6;->T()J

    move-result-wide v0

    :goto_0
    add-long v2, p1, v0

    xor-long/2addr p1, v2

    xor-long/2addr v0, v2

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    cmp-long p1, v2, v0

    if-ltz p1, :cond_2

    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_1

    :cond_2
    const-wide v2, 0x7fffffffffffffffL

    .line 8
    :goto_1
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lbd6$b;->t(J)Lbd6$b;

    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    return-object p1

    :cond_3
    const-string p1, "Expected \'operand\' to be of Number type, but was "

    .line 9
    invoke-static {p1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Luu5;->a:Lbd6;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {p1, p2}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 p1, 0x0

    throw p1

    .line 12
    :cond_4
    invoke-static {p2}, Llu5;->h(Lbd6;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p2}, Lbd6;->T()J

    move-result-wide p1

    long-to-double p1, p1

    invoke-virtual {p0}, Luu5;->d()D

    move-result-wide v0

    add-double/2addr v0, p1

    .line 14
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lbd6$b;->s(D)Lbd6$b;

    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    return-object p1

    .line 15
    :cond_5
    invoke-static {p2}, Llu5;->g(Lbd6;)Z

    move-result v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Expected NumberValue to be of type DoubleValue, but was "

    .line 17
    invoke-static {v0, p1, v2}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p2}, Lbd6;->R()D

    move-result-wide p1

    invoke-virtual {p0}, Luu5;->d()D

    move-result-wide v0

    add-double/2addr v0, p1

    .line 19
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lbd6$b;->s(D)Lbd6$b;

    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    return-object p1
.end method

.method public b(Lbd6;)Lbd6;
    .locals 2

    .line 1
    invoke-static {p1}, Llu5;->j(Lbd6;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lbd6;->Z()Lbd6$b;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lbd6$b;->t(J)Lbd6$b;

    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lbd6;

    :goto_0
    return-object p1
.end method

.method public c(Lbd6;Lbd6;)Lbd6;
    .locals 0

    return-object p2
.end method

.method public final d()D
    .locals 2

    .line 1
    iget-object v0, p0, Luu5;->a:Lbd6;

    invoke-static {v0}, Llu5;->g(Lbd6;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Luu5;->a:Lbd6;

    invoke-virtual {v0}, Lbd6;->R()D

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Luu5;->a:Lbd6;

    invoke-static {v0}, Llu5;->h(Lbd6;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Luu5;->a:Lbd6;

    invoke-virtual {v0}, Lbd6;->T()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const-string v0, "Expected \'operand\' to be of Number type, but was "

    .line 5
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luu5;->a:Lbd6;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-static {v0, v1}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 v0, 0x0

    throw v0
.end method
