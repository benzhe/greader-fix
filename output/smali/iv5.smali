.class public abstract Liv5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liv5$b;,
        Liv5$c;,
        Liv5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        "CallbackT::",
        "Luw5;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "TCallbackT;>;"
    }
.end annotation


# static fields
.field public static final l:J

.field public static final m:J

.field public static final n:J

.field public static final o:J


# instance fields
.field public a:Lex5$b;

.field public final b:Law5;

.field public final c:Lj47;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj47<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field public final d:Liv5$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liv5<",
            "TReqT;TRespT;TCallbackT;>.b;"
        }
    .end annotation
.end field

.field public final e:Lex5;

.field public final f:Lex5$d;

.field public g:Ltw5;

.field public h:J

.field public i:La37;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La37<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field public final j:Lpx5;

.field public final k:Luw5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Liv5;->l:J

    .line 2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sput-wide v4, Liv5;->m:J

    .line 3
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Liv5;->n:J

    const-wide/16 v1, 0xa

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Liv5;->o:J

    return-void
.end method

.method public constructor <init>(Law5;Lj47;Lex5;Lex5$d;Lex5$d;Luw5;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law5;",
            "Lj47<",
            "TReqT;TRespT;>;",
            "Lex5;",
            "Lex5$d;",
            "Lex5$d;",
            "TCallbackT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ltw5;->e:Ltw5;

    iput-object v0, p0, Liv5;->g:Ltw5;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Liv5;->h:J

    .line 4
    iput-object p1, p0, Liv5;->b:Law5;

    .line 5
    iput-object p2, p0, Liv5;->c:Lj47;

    .line 6
    iput-object p3, p0, Liv5;->e:Lex5;

    .line 7
    iput-object p5, p0, Liv5;->f:Lex5$d;

    .line 8
    iput-object p6, p0, Liv5;->k:Luw5;

    .line 9
    new-instance p1, Liv5$b;

    invoke-direct {p1, p0}, Liv5$b;-><init>(Liv5;)V

    iput-object p1, p0, Liv5;->d:Liv5$b;

    .line 10
    new-instance p1, Lpx5;

    sget-wide v3, Liv5;->l:J

    sget-wide v7, Liv5;->m:J

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v8}, Lpx5;-><init>(Lex5;Lex5$d;JDJ)V

    iput-object p1, p0, Liv5;->j:Lpx5;

    return-void
.end method


# virtual methods
.method public final a(Ltw5;Lx47;)V
    .locals 10

    .line 1
    sget-object v0, Lqx5$a;->e:Lqx5$a;

    invoke-virtual {p0}, Liv5;->d()Z

    move-result v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Only started streams should be closed."

    invoke-static {v1, v4, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v1, Ltw5;->h:Ltw5;

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1

    sget-object v4, Lx47;->f:Lx47;

    .line 3
    invoke-virtual {p2, v4}, Lx47;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Can\'t provide an error when not in an error state."

    .line 4
    invoke-static {v4, v6, v5}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v4, p0, Liv5;->e:Lex5;

    invoke-virtual {v4}, Lex5;->d()V

    .line 6
    sget-object v4, Lqv5;->d:Ljava/util/Set;

    .line 7
    iget-object v4, p2, Lx47;->a:Lx47$b;

    .line 8
    iget-object v4, p2, Lx47;->c:Ljava/lang/Throwable;

    .line 9
    instance-of v5, v4, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "no ciphers available"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    :cond_2
    iget-object v4, p0, Liv5;->a:Lex5$b;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v4}, Lex5$b;->a()V

    .line 12
    iput-object v5, p0, Liv5;->a:Lex5$b;

    .line 13
    :cond_3
    iget-object v4, p0, Liv5;->j:Lpx5;

    .line 14
    iget-object v6, v4, Lpx5;->h:Lex5$b;

    if-eqz v6, :cond_4

    .line 15
    invoke-virtual {v6}, Lex5$b;->a()V

    .line 16
    iput-object v5, v4, Lpx5;->h:Lex5$b;

    .line 17
    :cond_4
    iget-wide v6, p0, Liv5;->h:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Liv5;->h:J

    .line 18
    iget-object v4, p2, Lx47;->a:Lx47$b;

    .line 19
    sget-object v6, Lx47$b;->g:Lx47$b;

    if-ne v4, v6, :cond_5

    .line 20
    iget-object v4, p0, Liv5;->j:Lpx5;

    const-wide/16 v6, 0x0

    .line 21
    iput-wide v6, v4, Lpx5;->f:J

    goto :goto_2

    .line 22
    :cond_5
    sget-object v6, Lx47$b;->o:Lx47$b;

    if-ne v4, v6, :cond_6

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Object;

    .line 24
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "(%x) Using maximum backoff delay to prevent overloading the backend."

    .line 25
    invoke-static {v0, v4, v7, v6}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v4, p0, Liv5;->j:Lpx5;

    .line 27
    iget-wide v6, v4, Lpx5;->e:J

    iput-wide v6, v4, Lpx5;->f:J

    goto :goto_2

    .line 28
    :cond_6
    sget-object v6, Lx47$b;->w:Lx47$b;

    if-ne v4, v6, :cond_7

    .line 29
    iget-object v4, p0, Liv5;->b:Law5;

    .line 30
    iget-object v4, v4, Law5;->b:Lop5;

    invoke-virtual {v4}, Lop5;->b()V

    goto :goto_2

    .line 31
    :cond_7
    sget-object v6, Lx47$b;->u:Lx47$b;

    if-ne v4, v6, :cond_9

    .line 32
    iget-object v4, p2, Lx47;->c:Ljava/lang/Throwable;

    .line 33
    instance-of v6, v4, Ljava/net/UnknownHostException;

    if-nez v6, :cond_8

    .line 34
    instance-of v4, v4, Ljava/net/ConnectException;

    if-eqz v4, :cond_9

    .line 35
    :cond_8
    iget-object v4, p0, Liv5;->j:Lpx5;

    sget-wide v6, Liv5;->o:J

    .line 36
    iput-wide v6, v4, Lpx5;->e:J

    :cond_9
    :goto_2
    if-eq p1, v1, :cond_a

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    .line 38
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v6, "(%x) Performing stream teardown"

    .line 39
    invoke-static {v0, v1, v6, v4}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0}, Liv5;->h()V

    .line 41
    :cond_a
    iget-object v1, p0, Liv5;->i:La37;

    if-eqz v1, :cond_c

    .line 42
    invoke-virtual {p2}, Lx47;->f()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 44
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "(%x) Closing stream client-side"

    .line 45
    invoke-static {v0, v1, v2, v3}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Liv5;->i:La37;

    invoke-virtual {v0}, La37;->b()V

    .line 47
    :cond_b
    iput-object v5, p0, Liv5;->i:La37;

    .line 48
    :cond_c
    iput-object p1, p0, Liv5;->g:Ltw5;

    .line 49
    iget-object p1, p0, Liv5;->k:Luw5;

    invoke-interface {p1, p2}, Luw5;->e(Lx47;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Liv5;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Can only inhibit backoff after in a stopped state"

    invoke-static {v0, v2, v1}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Liv5;->e:Lex5;

    invoke-virtual {v0}, Lex5;->d()V

    .line 3
    sget-object v0, Ltw5;->e:Ltw5;

    iput-object v0, p0, Liv5;->g:Ltw5;

    .line 4
    iget-object v0, p0, Liv5;->j:Lpx5;

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, v0, Lpx5;->f:J

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Liv5;->e:Lex5;

    invoke-virtual {v0}, Lex5;->d()V

    .line 2
    iget-object v0, p0, Liv5;->g:Ltw5;

    sget-object v1, Ltw5;->g:Ltw5;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Liv5;->e:Lex5;

    invoke-virtual {v0}, Lex5;->d()V

    .line 2
    iget-object v0, p0, Liv5;->g:Ltw5;

    sget-object v1, Ltw5;->f:Ltw5;

    if-eq v0, v1, :cond_1

    sget-object v1, Ltw5;->g:Ltw5;

    if-eq v0, v1, :cond_1

    sget-object v1, Ltw5;->i:Ltw5;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public e()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Liv5;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liv5;->a:Lex5$b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Liv5;->e:Lex5;

    iget-object v1, p0, Liv5;->f:Lex5$d;

    sget-wide v2, Liv5;->n:J

    iget-object v4, p0, Liv5;->d:Liv5$b;

    .line 3
    invoke-virtual {v0, v1, v2, v3, v4}, Lex5;->b(Lex5$d;JLjava/lang/Runnable;)Lex5$b;

    move-result-object v0

    iput-object v0, p0, Liv5;->a:Lex5$b;

    :cond_0
    return-void
.end method

.method public abstract f(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation
.end method

.method public g()V
    .locals 15

    .line 1
    iget-object v0, p0, Liv5;->e:Lex5;

    invoke-virtual {v0}, Lex5;->d()V

    .line 2
    iget-object v0, p0, Liv5;->i:La37;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Last call still set"

    invoke-static {v0, v4, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Liv5;->a:Lex5$b;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Idle timer still set"

    invoke-static {v0, v4, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Liv5;->g:Ltw5;

    sget-object v3, Ltw5;->h:Ltw5;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_7

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "Should only perform backoff in an error state"

    .line 5
    invoke-static {v0, v5, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    sget-object v0, Ltw5;->i:Ltw5;

    iput-object v0, p0, Liv5;->g:Ltw5;

    .line 7
    iget-object v0, p0, Liv5;->j:Lpx5;

    .line 8
    new-instance v3, Lhv5;

    invoke-direct {v3, p0}, Lhv5;-><init>(Liv5;)V

    .line 9
    iget-object v5, v0, Lpx5;->h:Lex5$b;

    if-eqz v5, :cond_3

    .line 10
    invoke-virtual {v5}, Lex5$b;->a()V

    .line 11
    iput-object v4, v0, Lpx5;->h:Lex5$b;

    .line 12
    :cond_3
    iget-wide v4, v0, Lpx5;->f:J

    .line 13
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v6, v8

    iget-wide v8, v0, Lpx5;->f:J

    long-to-double v8, v8

    mul-double v6, v6, v8

    double-to-long v6, v6

    add-long/2addr v4, v6

    .line 14
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-wide v8, v0, Lpx5;->g:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    sub-long v10, v4, v6

    .line 15
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 16
    iget-wide v12, v0, Lpx5;->f:J

    cmp-long v14, v12, v8

    if-lez v14, :cond_4

    .line 17
    const-class v8, Lpx5;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 18
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v2

    iget-wide v12, v0, Lpx5;->f:J

    .line 19
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x2

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x3

    .line 21
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v1

    .line 22
    sget-object v1, Lqx5$a;->e:Lqx5$a;

    const-string v2, "Backing off for %d ms (base delay: %d ms, delay with jitter: %d ms, last attempt: %d ms ago)"

    invoke-static {v1, v8, v2, v9}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :cond_4
    iget-object v1, v0, Lpx5;->a:Lex5;

    iget-object v2, v0, Lpx5;->b:Lex5$d;

    .line 24
    new-instance v4, Lox5;

    invoke-direct {v4, v0, v3}, Lox5;-><init>(Lpx5;Ljava/lang/Runnable;)V

    .line 25
    invoke-virtual {v1, v2, v10, v11, v4}, Lex5;->b(Lex5$d;JLjava/lang/Runnable;)Lex5$b;

    move-result-object v1

    iput-object v1, v0, Lpx5;->h:Lex5$b;

    .line 26
    iget-wide v1, v0, Lpx5;->f:J

    long-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double v1, v1, v3

    double-to-long v1, v1

    iput-wide v1, v0, Lpx5;->f:J

    .line 27
    iget-wide v3, v0, Lpx5;->c:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_5

    .line 28
    iput-wide v3, v0, Lpx5;->f:J

    goto :goto_3

    .line 29
    :cond_5
    iget-wide v3, v0, Lpx5;->e:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_6

    .line 30
    iput-wide v3, v0, Lpx5;->f:J

    .line 31
    :cond_6
    :goto_3
    iget-wide v1, v0, Lpx5;->d:J

    iput-wide v1, v0, Lpx5;->e:J

    return-void

    .line 32
    :cond_7
    sget-object v3, Ltw5;->e:Ltw5;

    if-ne v0, v3, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "Already started"

    invoke-static {v0, v5, v3}, Lbx5;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    new-instance v0, Liv5$a;

    iget-wide v5, p0, Liv5;->h:J

    invoke-direct {v0, p0, v5, v6}, Liv5$a;-><init>(Liv5;J)V

    .line 34
    new-instance v3, Liv5$c;

    invoke-direct {v3, p0, v0}, Liv5$c;-><init>(Liv5;Liv5$a;)V

    .line 35
    iget-object v0, p0, Liv5;->b:Law5;

    iget-object v5, p0, Liv5;->c:Lj47;

    .line 36
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [La37;

    aput-object v4, v1, v2

    .line 37
    iget-object v2, v0, Law5;->c:Liw5;

    .line 38
    iget-object v4, v2, Liw5;->a:Le45;

    iget-object v6, v2, Liw5;->b:Lex5;

    .line 39
    iget-object v6, v6, Lex5;->a:Lex5$c;

    .line 40
    new-instance v7, Lbw5;

    invoke-direct {v7, v2, v5}, Lbw5;-><init>(Liw5;Lj47;)V

    .line 41
    invoke-virtual {v4, v6, v7}, Le45;->j(Ljava/util/concurrent/Executor;Lw35;)Le45;

    move-result-object v2

    .line 42
    iget-object v4, v0, Law5;->a:Lex5;

    .line 43
    iget-object v4, v4, Lex5;->a:Lex5$c;

    .line 44
    new-instance v5, Lwv5;

    invoke-direct {v5, v0, v1, v3}, Lwv5;-><init>(Law5;[La37;Lkw5;)V

    .line 45
    invoke-virtual {v2, v4, v5}, Le45;->c(Ljava/util/concurrent/Executor;Lz35;)Le45;

    .line 46
    new-instance v3, Lzv5;

    invoke-direct {v3, v0, v1, v2}, Lzv5;-><init>(Law5;[La37;Le45;)V

    .line 47
    iput-object v3, p0, Liv5;->i:La37;

    .line 48
    sget-object v0, Ltw5;->f:Ltw5;

    iput-object v0, p0, Liv5;->g:Ltw5;

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Liv5;->e:Lex5;

    invoke-virtual {v0}, Lex5;->d()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 4
    sget-object v2, Lqx5$a;->e:Lqx5$a;

    const-string v3, "(%x) Stream sending: %s"

    invoke-static {v2, v0, v3, v1}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Liv5;->a:Lex5$b;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lex5$b;->a()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Liv5;->a:Lex5$b;

    .line 8
    :cond_0
    iget-object v0, p0, Liv5;->i:La37;

    invoke-virtual {v0, p1}, La37;->d(Ljava/lang/Object;)V

    return-void
.end method
