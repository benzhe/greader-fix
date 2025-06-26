.class public Ld77$g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld77$g;->a(Lx47;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lx47;

.field public final synthetic f:Ld77$g;


# direct methods
.method public constructor <init>(Ld77$g;Lx47;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld77$g$b;->f:Ld77$g;

    iput-object p2, p0, Ld77$g$b;->e:Lx47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Ld77$g$b;->f:Ld77$g;

    iget-object v0, v0, Ld77$g;->c:Ld77;

    .line 2
    iget-object v0, v0, Ld77;->u:Lj37;

    .line 3
    iget-object v0, v0, Lj37;->a:Li37;

    .line 4
    sget-object v1, Li37;->i:Li37;

    if-ne v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Ld77$g$b;->f:Ld77$g;

    iget-object v0, v0, Ld77$g;->c:Ld77;

    .line 6
    iget-object v0, v0, Ld77;->t:Lc87;

    .line 7
    iget-object v1, p0, Ld77$g$b;->f:Ld77$g;

    iget-object v2, v1, Ld77$g;->a:Ld67;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 8
    iget-object v0, v1, Ld77$g;->c:Ld77;

    .line 9
    iput-object v3, v0, Ld77;->t:Lc87;

    .line 10
    iget-object v0, p0, Ld77$g$b;->f:Ld77$g;

    iget-object v0, v0, Ld77$g;->c:Ld77;

    .line 11
    iget-object v0, v0, Ld77;->l:Ld77$f;

    .line 12
    invoke-virtual {v0}, Ld77$f;->b()V

    .line 13
    iget-object v0, p0, Ld77$g$b;->f:Ld77$g;

    iget-object v0, v0, Ld77$g;->c:Ld77;

    sget-object v1, Li37;->h:Li37;

    invoke-static {v0, v1}, Ld77;->h(Ld77;Li37;)V

    goto/16 :goto_3

    .line 14
    :cond_1
    iget-object v0, v1, Ld77$g;->c:Ld77;

    .line 15
    iget-object v1, v0, Ld77;->s:Ld67;

    if-ne v1, v2, :cond_8

    .line 16
    iget-object v0, v0, Ld77;->u:Lj37;

    .line 17
    iget-object v0, v0, Lj37;->a:Li37;

    .line 18
    sget-object v1, Li37;->e:Li37;

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ld77$g$b;->f:Ld77$g;

    iget-object v1, v1, Ld77$g;->c:Ld77;

    .line 19
    iget-object v1, v1, Ld77;->u:Lj37;

    .line 20
    iget-object v1, v1, Lj37;->a:Li37;

    const-string v5, "Expected state is CONNECTING, actual state is %s"

    .line 21
    invoke-static {v0, v5, v1}, Lc50;->F(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Ld77$g$b;->f:Ld77$g;

    iget-object v0, v0, Ld77$g;->c:Ld77;

    .line 23
    iget-object v0, v0, Ld77;->l:Ld77$f;

    .line 24
    iget-object v1, v0, Ld77$f;->a:Ljava/util/List;

    iget v5, v0, Ld77$f;->b:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq37;

    .line 25
    iget v5, v0, Ld77$f;->c:I

    add-int/2addr v5, v2

    iput v5, v0, Ld77$f;->c:I

    .line 26
    iget-object v1, v1, Lq37;->a:Ljava/util/List;

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v5, v1, :cond_3

    .line 28
    iget v1, v0, Ld77$f;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Ld77$f;->b:I

    .line 29
    iput v4, v0, Ld77$f;->c:I

    .line 30
    :cond_3
    iget-object v0, p0, Ld77$g$b;->f:Ld77$g;

    iget-object v0, v0, Ld77$g;->c:Ld77;

    .line 31
    iget-object v0, v0, Ld77;->l:Ld77$f;

    .line 32
    iget v1, v0, Ld77$f;->b:I

    iget-object v0, v0, Ld77$f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_7

    .line 33
    iget-object v0, p0, Ld77$g$b;->f:Ld77$g;

    iget-object v0, v0, Ld77$g;->c:Ld77;

    .line 34
    iput-object v3, v0, Ld77;->s:Ld67;

    .line 35
    iget-object v0, v0, Ld77;->l:Ld77$f;

    .line 36
    invoke-virtual {v0}, Ld77$f;->b()V

    .line 37
    iget-object v0, p0, Ld77$g$b;->f:Ld77$g;

    iget-object v0, v0, Ld77$g;->c:Ld77;

    iget-object v1, p0, Ld77$g$b;->e:Lx47;

    .line 38
    iget-object v3, v0, Ld77;->k:Lb57;

    invoke-virtual {v3}, Lb57;->d()V

    .line 39
    invoke-virtual {v1}, Lx47;->f()Z

    move-result v3

    xor-int/2addr v3, v2

    const-string v5, "The error status must not be OK"

    invoke-static {v3, v5}, Lc50;->t(ZLjava/lang/Object;)V

    .line 40
    new-instance v3, Lj37;

    sget-object v5, Li37;->g:Li37;

    invoke-direct {v3, v5, v1}, Lj37;-><init>(Li37;Lx47;)V

    .line 41
    invoke-virtual {v0, v3}, Ld77;->j(Lj37;)V

    .line 42
    iget-object v3, v0, Ld77;->n:Ln57;

    if-nez v3, :cond_5

    .line 43
    iget-object v3, v0, Ld77;->d:Ln57$a;

    check-cast v3, Ll67$a;

    .line 44
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v3, Ll67;

    invoke-direct {v3}, Ll67;-><init>()V

    .line 46
    iput-object v3, v0, Ld77;->n:Ln57;

    .line 47
    :cond_5
    iget-object v3, v0, Ld77;->n:Ln57;

    .line 48
    check-cast v3, Ll67;

    invoke-virtual {v3}, Ll67;->a()J

    move-result-wide v5

    iget-object v3, v0, Ld77;->o:Lpd5;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v11}, Lpd5;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    sub-long v9, v5, v7

    .line 49
    iget-object v3, v0, Ld77;->j:Lz27;

    sget-object v5, Lz27$a;->f:Lz27$a;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 50
    invoke-virtual {v0, v1}, Ld77;->k(Lx47;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v2

    const-string v1, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns"

    .line 51
    invoke-virtual {v3, v5, v1, v6}, Lz27;->b(Lz27$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v1, v0, Ld77;->p:Lb57$c;

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    const-string v1, "previous reconnectTask is not done"

    invoke-static {v2, v1}, Lc50;->G(ZLjava/lang/Object;)V

    .line 53
    iget-object v7, v0, Ld77;->k:Lb57;

    new-instance v8, Le77;

    invoke-direct {v8, v0}, Le77;-><init>(Ld77;)V

    iget-object v12, v0, Ld77;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v7 .. v12}, Lb57;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lb57$c;

    move-result-object v1

    iput-object v1, v0, Ld77;->p:Lb57$c;

    goto :goto_3

    .line 54
    :cond_7
    iget-object v0, p0, Ld77$g$b;->f:Ld77$g;

    iget-object v0, v0, Ld77$g;->c:Ld77;

    invoke-static {v0}, Ld77;->i(Ld77;)V

    :cond_8
    :goto_3
    return-void
.end method
