.class public final synthetic Lv46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# instance fields
.field public final e:Lk56;


# direct methods
.method public constructor <init>(Lk56;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv46;->e:Lk56;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v6, p0, Lv46;->e:Lk56;

    check-cast p1, Ljava/lang/String;

    .line 1
    iget-object v0, v6, Lk56;->c:Lo26;

    .line 2
    new-instance v1, Lk26;

    invoke-direct {v1, v0}, Lk26;-><init>(Lo26;)V

    .line 3
    new-instance v2, Lgg7;

    invoke-direct {v2, v1}, Lgg7;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4
    iget-object v1, v0, Lo26;->a:Lv56;

    .line 5
    invoke-static {}, Lqg6;->H()Lik6;

    move-result-object v3

    invoke-virtual {v1, v3}, Lv56;->a(Lik6;)Lrb7;

    move-result-object v1

    .line 6
    new-instance v3, Ll26;

    invoke-direct {v3, v0}, Ll26;-><init>(Lo26;)V

    .line 7
    invoke-virtual {v1, v3}, Lrb7;->e(Ltc7;)Lrb7;

    move-result-object v1

    .line 8
    invoke-virtual {v2, v1}, Lrb7;->o(Lvb7;)Lrb7;

    move-result-object v1

    .line 9
    new-instance v2, Lm26;

    invoke-direct {v2, v0}, Lm26;-><init>(Lo26;)V

    .line 10
    invoke-virtual {v1, v2}, Lrb7;->f(Lvc7;)Lrb7;

    move-result-object v1

    .line 11
    new-instance v2, Ln26;

    invoke-direct {v2, v0}, Ln26;-><init>(Lo26;)V

    .line 12
    invoke-virtual {v1, v2}, Lrb7;->d(Ltc7;)Lrb7;

    move-result-object v0

    .line 13
    sget-object v1, Ld46;->e:Ld46;

    .line 14
    invoke-virtual {v0, v1}, Lrb7;->e(Ltc7;)Lrb7;

    move-result-object v0

    sget-object v1, Le46;->e:Le46;

    .line 15
    invoke-virtual {v0, v1}, Lrb7;->d(Ltc7;)Lrb7;

    move-result-object v0

    .line 16
    sget-object v1, Lbg7;->e:Lbg7;

    invoke-virtual {v0, v1}, Lrb7;->l(Lvb7;)Lrb7;

    move-result-object v7

    .line 17
    new-instance v8, Lf46;

    invoke-direct {v8, v6}, Lf46;-><init>(Lk56;)V

    .line 18
    new-instance v3, Lg46;

    invoke-direct {v3, v6}, Lg46;-><init>(Lk56;)V

    .line 19
    new-instance v4, Lh46;

    invoke-direct {v4, v6, p1}, Lh46;-><init>(Lk56;Ljava/lang/String;)V

    .line 20
    sget-object v5, Li46;->e:Li46;

    .line 21
    new-instance v9, Lj46;

    move-object v0, v9

    move-object v1, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lj46;-><init>(Lk56;Ljava/lang/String;Luc7;Luc7;Luc7;)V

    .line 22
    iget-object v0, v6, Lk56;->g:Ly36;

    .line 23
    invoke-virtual {v0}, Ly36;->a()Lrb7;

    move-result-object v0

    sget-object v1, Ll46;->e:Ll46;

    .line 24
    invoke-virtual {v0, v1}, Lrb7;->d(Ltc7;)Lrb7;

    move-result-object v0

    .line 25
    invoke-static {}, Lng6;->E()Lng6;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrb7;->b(Ljava/lang/Object;)Lrb7;

    move-result-object v0

    .line 26
    invoke-static {}, Lng6;->E()Lng6;

    move-result-object v1

    invoke-static {v1}, Lrb7;->i(Ljava/lang/Object;)Lrb7;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrb7;->l(Lvb7;)Lrb7;

    move-result-object v0

    .line 27
    iget-object v1, v6, Lk56;->m:Lz96;

    .line 28
    invoke-interface {v1}, Lz96;->n()Le45;

    move-result-object v1

    .line 29
    new-instance v2, La46;

    invoke-direct {v2, v1}, La46;-><init>(Le45;)V

    .line 30
    new-instance v1, Lag7;

    invoke-direct {v1, v2}, Lag7;-><init>(Lub7;)V

    .line 31
    iget-object v2, v6, Lk56;->m:Lz96;

    const/4 v3, 0x0

    .line 32
    invoke-interface {v2, v3}, Lz96;->a(Z)Le45;

    move-result-object v2

    .line 33
    new-instance v4, La46;

    invoke-direct {v4, v2}, La46;-><init>(Le45;)V

    .line 34
    new-instance v2, Lag7;

    invoke-direct {v2, v4}, Lag7;-><init>(Lub7;)V

    .line 35
    sget-object v4, Lm46;->a:Lm46;

    .line 36
    new-instance v5, Ldd7$a;

    invoke-direct {v5, v4}, Ldd7$a;-><init>(Lrc7;)V

    const/4 v4, 0x2

    new-array v10, v4, [Lvb7;

    aput-object v1, v10, v3

    const/4 v1, 0x1

    aput-object v2, v10, v1

    .line 37
    new-instance v2, Lsg7;

    invoke-direct {v2, v10, v5}, Lsg7;-><init>([Lvb7;Luc7;)V

    .line 38
    iget-object v5, v6, Lk56;->f:Lm66;

    .line 39
    iget-object v5, v5, Lm66;->a:Lzb7;

    .line 40
    invoke-virtual {v2, v5}, Lrb7;->k(Lzb7;)Lrb7;

    move-result-object v2

    .line 41
    new-instance v5, Ln46;

    invoke-direct {v5, v6, v2}, Ln46;-><init>(Lk56;Lrb7;)V

    .line 42
    iget-object v2, v6, Lk56;->k:Lq66;

    .line 43
    iget-boolean v10, v2, Lq66;->c:Z

    if-eqz v10, :cond_0

    const-string v2, "ON_FOREGROUND"

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 45
    :cond_0
    iget-boolean p1, v2, Lq66;->b:Z

    :goto_0
    if-eqz p1, :cond_1

    new-array p1, v4, [Ljava/lang/Object;

    .line 46
    iget-object v2, v6, Lk56;->k:Lq66;

    .line 47
    iget-boolean v2, v2, Lq66;->b:Z

    .line 48
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p1, v3

    iget-object v2, v6, Lk56;->k:Lq66;

    .line 49
    iget-boolean v2, v2, Lq66;->c:Z

    .line 50
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "Forcing fetch from service rather than cache. Test Device: %s | App Fresh Install: %s"

    .line 51
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p1}, Ln56;->u1(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v5}, Lrb7;->g(Luc7;)Lrb7;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v9}, Lrb7;->g(Luc7;)Lrb7;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lrb7;->p()Lmb7;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "Attempting to fetch campaigns using cache"

    .line 56
    invoke-static {p1}, Ln56;->t1(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v5}, Lrb7;->g(Luc7;)Lrb7;

    move-result-object p1

    invoke-virtual {p1, v8}, Lrb7;->e(Ltc7;)Lrb7;

    move-result-object p1

    invoke-virtual {v7, p1}, Lrb7;->o(Lvb7;)Lrb7;

    move-result-object p1

    .line 58
    invoke-virtual {p1, v9}, Lrb7;->g(Luc7;)Lrb7;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lrb7;->p()Lmb7;

    move-result-object p1

    :goto_1
    return-object p1
.end method
