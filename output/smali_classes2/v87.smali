.class public final Lv87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb37;


# static fields
.field public static final d:Lx27$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx27$a<",
            "Ls87$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lx27$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx27$a<",
            "Lw67$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lb87;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Z

.field public volatile c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "internal-retry-policy"

    .line 1
    invoke-static {v0}, Lx27$a;->a(Ljava/lang/String;)Lx27$a;

    move-result-object v0

    sput-object v0, Lv87;->d:Lx27$a;

    const-string v0, "internal-hedging-policy"

    .line 2
    invoke-static {v0}, Lx27$a;->a(Ljava/lang/String;)Lx27$a;

    move-result-object v0

    sput-object v0, Lv87;->e:Lx27$a;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lv87;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-boolean p1, p0, Lv87;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lj47;Lx27;Ly27;)La37;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lj47<",
            "TReqT;TRespT;>;",
            "Lx27;",
            "Ly27;",
            ")",
            "La37<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lv87;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 2
    iget-boolean v0, p0, Lv87;->c:Z

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0, p1}, Lv87;->b(Lj47;)Lb87$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Ls87;->f:Ls87;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lb87$a;->e:Ls87;

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lv87;->b(Lj47;)Lb87$a;

    move-result-object v2

    if-nez v2, :cond_1

    .line 6
    sget-object v2, Lw67;->d:Lw67;

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lb87$a;->f:Lw67;

    .line 7
    :goto_1
    sget-object v3, Ls87;->f:Ls87;

    .line 8
    invoke-virtual {v0, v3}, Ls87;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lw67;->d:Lw67;

    invoke-virtual {v2, v3}, Lw67;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    const-string v4, "Can not apply both retry and hedging policy for the method \'%s\'"

    .line 9
    invoke-static {v3, v4, p1}, Lsd5;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 10
    sget-object v3, Lv87;->d:Lx27$a;

    new-instance v4, Lv87$d;

    invoke-direct {v4, p0, v0}, Lv87$d;-><init>(Lv87;Ls87;)V

    .line 11
    invoke-virtual {p2, v3, v4}, Lx27;->e(Lx27$a;Ljava/lang/Object;)Lx27;

    move-result-object p2

    sget-object v0, Lv87;->e:Lx27$a;

    new-instance v3, Lv87$c;

    invoke-direct {v3, p0, v2}, Lv87$c;-><init>(Lv87;Lw67;)V

    .line 12
    invoke-virtual {p2, v0, v3}, Lx27;->e(Lx27$a;Ljava/lang/Object;)Lx27;

    move-result-object p2

    goto :goto_4

    .line 13
    :cond_4
    sget-object v0, Lv87;->d:Lx27$a;

    new-instance v2, Lv87$b;

    invoke-direct {v2, p0, p1}, Lv87$b;-><init>(Lv87;Lj47;)V

    .line 14
    invoke-virtual {p2, v0, v2}, Lx27;->e(Lx27$a;Ljava/lang/Object;)Lx27;

    move-result-object p2

    sget-object v0, Lv87;->e:Lx27$a;

    new-instance v2, Lv87$a;

    invoke-direct {v2, p0, p1}, Lv87$a;-><init>(Lv87;Lj47;)V

    .line 15
    invoke-virtual {p2, v0, v2}, Lx27;->e(Lx27$a;Ljava/lang/Object;)Lx27;

    move-result-object p2

    .line 16
    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Lv87;->b(Lj47;)Lb87$a;

    move-result-object v0

    if-nez v0, :cond_6

    .line 17
    invoke-virtual {p3, p1, p2}, Ly27;->h(Lj47;Lx27;)La37;

    move-result-object p1

    return-object p1

    .line 18
    :cond_6
    iget-object v2, v0, Lb87$a;->a:Ljava/lang/Long;

    if-eqz v2, :cond_8

    .line 19
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    sget-object v5, Lm37;->h:Lm37$b;

    const-string v6, "units"

    .line 21
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    new-instance v6, Lm37;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {v6, v5, v2, v3, v1}, Lm37;-><init>(Lm37$c;JZ)V

    .line 23
    iget-object v1, p2, Lx27;->a:Lm37;

    if-eqz v1, :cond_7

    .line 24
    invoke-virtual {v6, v1}, Lm37;->k(Lm37;)I

    move-result v1

    if-gez v1, :cond_8

    .line 25
    :cond_7
    new-instance v1, Lx27;

    invoke-direct {v1, p2}, Lx27;-><init>(Lx27;)V

    .line 26
    iput-object v6, v1, Lx27;->a:Lm37;

    move-object p2, v1

    .line 27
    :cond_8
    iget-object v1, v0, Lb87$a;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 29
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v1, Lx27;

    invoke-direct {v1, p2}, Lx27;-><init>(Lx27;)V

    .line 31
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, v1, Lx27;->h:Ljava/lang/Boolean;

    goto :goto_5

    .line 32
    :cond_9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v1, Lx27;

    invoke-direct {v1, p2}, Lx27;-><init>(Lx27;)V

    .line 34
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, v1, Lx27;->h:Ljava/lang/Boolean;

    :goto_5
    move-object p2, v1

    .line 35
    :cond_a
    iget-object v1, v0, Lb87$a;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 36
    iget-object v2, p2, Lx27;->i:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    .line 37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lb87$a;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 38
    invoke-virtual {p2, v1}, Lx27;->c(I)Lx27;

    move-result-object p2

    goto :goto_6

    .line 39
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lx27;->c(I)Lx27;

    move-result-object p2

    .line 40
    :cond_c
    :goto_6
    iget-object v1, v0, Lb87$a;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 41
    iget-object v2, p2, Lx27;->j:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    .line 42
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Lb87$a;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 43
    invoke-virtual {p2, v0}, Lx27;->d(I)Lx27;

    move-result-object p2

    goto :goto_7

    .line 44
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lx27;->d(I)Lx27;

    move-result-object p2

    .line 45
    :cond_e
    :goto_7
    invoke-virtual {p3, p1, p2}, Ly27;->h(Lj47;Lx27;)La37;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lj47;)Lb87$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj47<",
            "**>;)",
            "Lb87$a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv87;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb87;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lb87;->a:Ljava/util/Map;

    .line 3
    iget-object v2, p1, Lj47;->b:Ljava/lang/String;

    .line 4
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb87$a;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p1, Lj47;->c:Ljava/lang/String;

    .line 6
    iget-object v0, v0, Lb87;->b:Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lb87$a;

    :cond_1
    return-object v1
.end method

.method public c(Lj47;)Ls87;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj47<",
            "**>;)",
            "Ls87;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lv87;->b(Lj47;)Lb87$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ls87;->f:Ls87;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lb87$a;->e:Ls87;

    :goto_0
    return-object p1
.end method
