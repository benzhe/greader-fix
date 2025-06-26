.class public final Lq77$o;
.super Ll47$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "o"
.end annotation


# instance fields
.field public final a:Lq77$n;

.field public final b:Ll47;

.field public final synthetic c:Lq77;


# direct methods
.method public constructor <init>(Lq77;Lq77$n;Ll47;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq77$o;->c:Lq77;

    invoke-direct {p0}, Ll47$e;-><init>()V

    const-string p1, "helperImpl"

    .line 2
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lq77$o;->a:Lq77$n;

    const-string p1, "resolver"

    .line 3
    invoke-static {p3, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lq77$o;->b:Ll47;

    return-void
.end method

.method public static c(Lq77$o;Lx47;)V
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lq77;->c0:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lq77$o;->c:Lq77;

    .line 3
    iget-object v3, v3, Lq77;->a:Ly37;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v5, "[{0}] Failed to resolve name. status={1}"

    .line 4
    invoke-virtual {v0, v1, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lq77$o;->c:Lq77;

    .line 6
    iget-object v1, v0, Lq77;->P:Lq77$q;

    .line 7
    sget-object v2, Lq77$q;->g:Lq77$q;

    if-eq v1, v2, :cond_0

    .line 8
    iget-object v0, v0, Lq77;->N:Lz27;

    .line 9
    sget-object v1, Lz27$a;->g:Lz27$a;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const-string v4, "Failed to resolve name: {0}"

    invoke-virtual {v0, v1, v4, v3}, Lz27;->b(Lz27$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lq77$o;->c:Lq77;

    .line 11
    iput-object v2, v0, Lq77;->P:Lq77$q;

    .line 12
    :cond_0
    iget-object v0, p0, Lq77$o;->a:Lq77$n;

    iget-object v1, p0, Lq77$o;->c:Lq77;

    .line 13
    iget-object v1, v1, Lq77;->y:Lq77$n;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, v0, Lq77$n;->a:Lm57$b;

    .line 15
    iget-object v0, v0, Lm57$b;->b:Lc47;

    .line 16
    invoke-virtual {v0, p1}, Lc47;->a(Lx47;)V

    .line 17
    invoke-virtual {p0}, Lq77$o;->d()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lx47;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lx47;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "the error status must not be OK"

    invoke-static {v0, v1}, Lc50;->t(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lq77$o;->c:Lq77;

    iget-object v0, v0, Lq77;->n:Lb57;

    new-instance v1, Lq77$o$a;

    invoke-direct {v1, p0, p1}, Lq77$o$a;-><init>(Lq77$o;Lx47;)V

    .line 3
    iget-object p1, v0, Lb57;->f:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v1, v2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Lb57;->a()V

    return-void
.end method

.method public b(Ll47$f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq77$o;->c:Lq77;

    iget-object v0, v0, Lq77;->n:Lb57;

    new-instance v1, Lq77$o$b;

    invoke-direct {v1, p0, p1}, Lq77$o$b;-><init>(Lq77$o;Ll47$f;)V

    .line 2
    iget-object p1, v0, Lb57;->f:Ljava/util/Queue;

    const-string v2, "runnable is null"

    invoke-static {v1, v2}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {v0}, Lb57;->a()V

    return-void
.end method

.method public final d()V
    .locals 10

    .line 1
    iget-object v0, p0, Lq77$o;->c:Lq77;

    .line 2
    iget-object v1, v0, Lq77;->Y:Lb57$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v1, Lb57$c;->a:Lb57$b;

    iget-boolean v4, v1, Lb57$b;->g:Z

    if-nez v4, :cond_0

    iget-boolean v1, v1, Lb57$b;->f:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v1, v0, Lq77;->Z:Ln57;

    if-nez v1, :cond_2

    .line 5
    iget-object v1, v0, Lq77;->u:Ln57$a;

    .line 6
    check-cast v1, Ll67$a;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Ll67;

    invoke-direct {v1}, Ll67;-><init>()V

    .line 9
    iput-object v1, v0, Lq77;->Z:Ln57;

    .line 10
    :cond_2
    iget-object v0, p0, Lq77$o;->c:Lq77;

    .line 11
    iget-object v0, v0, Lq77;->Z:Ln57;

    .line 12
    check-cast v0, Ll67;

    invoke-virtual {v0}, Ll67;->a()J

    move-result-wide v6

    .line 13
    iget-object v0, p0, Lq77$o;->c:Lq77;

    .line 14
    iget-object v0, v0, Lq77;->N:Lz27;

    .line 15
    sget-object v1, Lz27$a;->e:Lz27$a;

    new-array v3, v3, [Ljava/lang/Object;

    .line 16
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Scheduling DNS resolution backoff for {0} ns"

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Lz27;->b(Lz27$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lq77$o;->c:Lq77;

    iget-object v4, v0, Lq77;->n:Lb57;

    new-instance v5, Lq77$i;

    invoke-direct {v5, v0}, Lq77$i;-><init>(Lq77;)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    iget-object v1, v0, Lq77;->f:Lb67;

    .line 20
    invoke-interface {v1}, Lb67;->x0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    .line 21
    invoke-virtual/range {v4 .. v9}, Lb57;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lb57$c;

    move-result-object v1

    .line 22
    iput-object v1, v0, Lq77;->Y:Lb57$c;

    return-void
.end method
