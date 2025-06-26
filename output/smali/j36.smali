.class public Lj36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luy5;


# static fields
.field public static j:Z


# instance fields
.field public final a:Ly36;

.field public final b:Lz86;

.field public final c:Lm66;

.field public final d:Lk66;

.field public final e:Lo96;

.field public final f:Lr56;

.field public final g:Lr26;

.field public final h:Lj96;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ly36;Lz86;Lm66;Lk66;Lo26;Lo96;Lr56;Lr26;Lj96;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj36;->a:Ly36;

    .line 3
    iput-object p2, p0, Lj36;->b:Lz86;

    .line 4
    iput-object p3, p0, Lj36;->c:Lm66;

    .line 5
    iput-object p4, p0, Lj36;->d:Lk66;

    .line 6
    iput-object p6, p0, Lj36;->e:Lo96;

    .line 7
    iput-object p7, p0, Lj36;->f:Lr56;

    .line 8
    iput-object p8, p0, Lj36;->g:Lr26;

    .line 9
    iput-object p9, p0, Lj36;->h:Lj96;

    .line 10
    iput-object p10, p0, Lj36;->i:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    sput-boolean p1, Lj36;->j:Z

    return-void
.end method

.method public static d(Lrb7;Lzb7;)Le45;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrb7<",
            "TT;>;",
            "Lzb7;",
            ")",
            "Le45<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf45;

    invoke-direct {v0}, Lf45;-><init>()V

    .line 2
    new-instance v1, Ly26;

    invoke-direct {v1, v0}, Ly26;-><init>(Lf45;)V

    .line 3
    invoke-virtual {p0, v1}, Lrb7;->e(Ltc7;)Lrb7;

    move-result-object p0

    .line 4
    new-instance v1, Lz26;

    invoke-direct {v1, v0}, Lz26;-><init>(Lf45;)V

    .line 5
    new-instance v2, Lgg7;

    invoke-direct {v2, v1}, Lgg7;-><init>(Ljava/util/concurrent/Callable;)V

    .line 6
    invoke-virtual {p0, v2}, Lrb7;->o(Lvb7;)Lrb7;

    move-result-object p0

    .line 7
    new-instance v1, La36;

    invoke-direct {v1, v0}, La36;-><init>(Lf45;)V

    .line 8
    new-instance v2, Lng7;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v3}, Lng7;-><init>(Lvb7;Luc7;Z)V

    .line 9
    invoke-virtual {v2, p1}, Lrb7;->n(Lzb7;)Lrb7;

    move-result-object p0

    .line 10
    sget-object p1, Ldd7;->d:Ltc7;

    sget-object v1, Ldd7;->e:Ltc7;

    sget-object v2, Ldd7;->c:Lqc7;

    .line 11
    new-instance v3, Lzf7;

    invoke-direct {v3, p1, v1, v2}, Lzf7;-><init>(Ltc7;Ltc7;Lqc7;)V

    .line 12
    invoke-virtual {p0, v3}, Lrb7;->a(Ltb7;)V

    .line 13
    iget-object p0, v0, Lf45;->a:Le55;

    return-object p0
.end method


# virtual methods
.method public a()Le45;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le45<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lj36;->f()Z

    move-result v0

    const-string v1, "message impression to metrics logger"

    if-eqz v0, :cond_0

    sget-boolean v0, Lj36;->j:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to record: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ln56;->t1(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lb36;

    invoke-direct {v0, p0}, Lb36;-><init>(Lj36;)V

    .line 4
    new-instance v1, Lzd7;

    invoke-direct {v1, v0}, Lzd7;-><init>(Lqc7;)V

    .line 5
    invoke-virtual {p0}, Lj36;->c()Lhb7;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Lhb7;->b(Llb7;)Lhb7;

    move-result-object v0

    .line 7
    sget-object v1, Lc36;->a:Lc36;

    .line 8
    new-instance v2, Lzd7;

    invoke-direct {v2, v1}, Lzd7;-><init>(Lqc7;)V

    .line 9
    invoke-virtual {v0, v2}, Lhb7;->b(Llb7;)Lhb7;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lhb7;->k()Lrb7;

    move-result-object v0

    iget-object v1, p0, Lj36;->c:Lm66;

    .line 11
    iget-object v1, v1, Lm66;->a:Lzb7;

    .line 12
    invoke-static {v0, v1}, Lj36;->d(Lrb7;Lzb7;)Le45;

    move-result-object v0

    return-object v0

    .line 13
    :cond_0
    invoke-virtual {p0, v1}, Lj36;->b(Ljava/lang/String;)V

    .line 14
    new-instance v0, Le55;

    invoke-direct {v0}, Le55;-><init>()V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lj36;->h:Lj96;

    .line 2
    iget-object v0, v0, Lj96;->b:Lf96;

    .line 3
    iget-boolean v0, v0, Lf96;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Not recording: %s. Reason: Message is test message"

    .line 4
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln56;->t1(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lj36;->g:Lr26;

    invoke-virtual {v0}, Lr26;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Not recording: %s. Reason: Data collection is disabled"

    .line 6
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln56;->t1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Not recording: %s"

    .line 7
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ln56;->t1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final c()Lhb7;
    .locals 6

    .line 1
    iget-object v0, p0, Lj36;->h:Lj96;

    .line 2
    iget-object v0, v0, Lj96;->b:Lf96;

    .line 3
    iget-object v0, v0, Lf96;->a:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to record message impression in impression store for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ln56;->t1(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lj36;->a:Ly36;

    .line 6
    invoke-static {}, Lmg6;->F()Lmg6$b;

    move-result-object v2

    iget-object v3, p0, Lj36;->b:Lz86;

    .line 7
    invoke-interface {v3}, Lz86;->a()J

    move-result-wide v3

    .line 8
    invoke-virtual {v2}, Lgj6$a;->o()V

    .line 9
    iget-object v5, v2, Lgj6$a;->f:Lgj6;

    check-cast v5, Lmg6;

    invoke-static {v5, v3, v4}, Lmg6;->D(Lmg6;J)V

    .line 10
    invoke-virtual {v2}, Lgj6$a;->o()V

    .line 11
    iget-object v3, v2, Lgj6$a;->f:Lgj6;

    check-cast v3, Lmg6;

    invoke-static {v3, v0}, Lmg6;->C(Lmg6;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lgj6$a;->l()Lgj6;

    move-result-object v0

    check-cast v0, Lmg6;

    .line 13
    invoke-virtual {v1}, Ly36;->a()Lrb7;

    move-result-object v2

    sget-object v3, Ly36;->c:Lng6;

    .line 14
    invoke-virtual {v2, v3}, Lrb7;->b(Ljava/lang/Object;)Lrb7;

    move-result-object v2

    .line 15
    new-instance v3, Lp36;

    invoke-direct {v3, v1, v0}, Lp36;-><init>(Ly36;Lmg6;)V

    .line 16
    invoke-virtual {v2, v3}, Lrb7;->h(Luc7;)Lhb7;

    move-result-object v0

    .line 17
    sget-object v1, Lf36;->e:Lf36;

    .line 18
    invoke-virtual {v0, v1}, Lhb7;->e(Ltc7;)Lhb7;

    move-result-object v0

    sget-object v1, Lg36;->a:Lg36;

    .line 19
    invoke-virtual {v0, v1}, Lhb7;->d(Lqc7;)Lhb7;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lj36;->i:Ljava/lang/String;

    invoke-static {v1}, Lk56;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    iget-object v1, p0, Lj36;->d:Lk66;

    iget-object v2, p0, Lj36;->e:Lo96;

    .line 22
    invoke-virtual {v1}, Lk66;->a()Lrb7;

    move-result-object v3

    sget-object v4, Lk66;->d:La66;

    .line 23
    invoke-virtual {v3, v4}, Lrb7;->b(Ljava/lang/Object;)Lrb7;

    move-result-object v3

    .line 24
    new-instance v4, Lb66;

    invoke-direct {v4, v1, v2}, Lb66;-><init>(Lk66;Lo96;)V

    .line 25
    invoke-virtual {v3, v4}, Lrb7;->h(Luc7;)Lhb7;

    move-result-object v1

    .line 26
    sget-object v2, Lh36;->e:Lh36;

    .line 27
    invoke-virtual {v1, v2}, Lhb7;->e(Ltc7;)Lhb7;

    move-result-object v1

    sget-object v2, Li36;->a:Li36;

    .line 28
    invoke-virtual {v1, v2}, Lhb7;->d(Lqc7;)Lhb7;

    move-result-object v1

    .line 29
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v2, Ldd7;->f:Lvc7;

    .line 31
    new-instance v3, Lde7;

    invoke-direct {v3, v1, v2}, Lde7;-><init>(Llb7;Lvc7;)V

    .line 32
    invoke-virtual {v3, v0}, Lhb7;->b(Llb7;)Lhb7;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public e(Luy5$a;)Le45;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luy5$a;",
            ")",
            "Le45<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lj36;->f()Z

    move-result v0

    const-string v1, "message dismissal to metrics logger"

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to record: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ln56;->t1(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ld36;

    invoke-direct {v0, p0, p1}, Ld36;-><init>(Lj36;Luy5$a;)V

    .line 4
    new-instance p1, Lzd7;

    invoke-direct {p1, v0}, Lzd7;-><init>(Lqc7;)V

    .line 5
    sget-boolean v0, Lj36;->j:Z

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lj36;->a()Le45;

    .line 7
    :cond_0
    invoke-virtual {p1}, Lhb7;->k()Lrb7;

    move-result-object p1

    iget-object v0, p0, Lj36;->c:Lm66;

    .line 8
    iget-object v0, v0, Lm66;->a:Lzb7;

    .line 9
    invoke-static {p1, v0}, Lj36;->d(Lrb7;Lzb7;)Le45;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    invoke-virtual {p0, v1}, Lj36;->b(Ljava/lang/String;)V

    .line 11
    new-instance p1, Le55;

    invoke-direct {p1}, Le55;-><init>()V

    return-object p1
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj36;->g:Lr26;

    invoke-virtual {v0}, Lr26;->a()Z

    move-result v0

    return v0
.end method
