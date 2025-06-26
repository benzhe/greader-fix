.class public final synthetic Ln46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# instance fields
.field public final e:Lk56;

.field public final f:Lrb7;


# direct methods
.method public constructor <init>(Lk56;Lrb7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln46;->e:Lk56;

    iput-object p2, p0, Ln46;->f:Lrb7;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ln46;->e:Lk56;

    iget-object v1, p0, Ln46;->f:Lrb7;

    check-cast p1, Lng6;

    .line 1
    iget-object v2, v0, Lk56;->n:Lr26;

    invoke-virtual {v2}, Lr26;->a()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p1, "Automatic data collection is disabled, not attempting campaign fetch from service."

    .line 2
    invoke-static {p1}, Ln56;->u1(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lk56;->a()Lqg6;

    move-result-object p1

    .line 4
    new-instance v0, Lkg7;

    invoke-direct {v0, p1}, Lkg7;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Lo46;->e:Lo46;

    .line 6
    invoke-virtual {v1, v2}, Lrb7;->f(Lvc7;)Lrb7;

    move-result-object v1

    .line 7
    new-instance v2, Lp46;

    invoke-direct {v2, v0, p1}, Lp46;-><init>(Lk56;Lng6;)V

    .line 8
    invoke-virtual {v1, v2}, Lrb7;->j(Luc7;)Lrb7;

    move-result-object p1

    .line 9
    invoke-static {}, Lk56;->a()Lqg6;

    move-result-object v1

    .line 10
    new-instance v2, Lkg7;

    invoke-direct {v2, v1}, Lkg7;-><init>(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p1, v2}, Lrb7;->o(Lvb7;)Lrb7;

    move-result-object p1

    sget-object v1, Lq46;->e:Lq46;

    .line 12
    invoke-virtual {p1, v1}, Lrb7;->e(Ltc7;)Lrb7;

    move-result-object p1

    .line 13
    new-instance v1, Lr46;

    invoke-direct {v1, v0}, Lr46;-><init>(Lk56;)V

    .line 14
    invoke-virtual {p1, v1}, Lrb7;->e(Ltc7;)Lrb7;

    move-result-object p1

    iget-object v1, v0, Lk56;->j:Lg26;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v2, Ls46;

    invoke-direct {v2, v1}, Ls46;-><init>(Lg26;)V

    .line 17
    invoke-virtual {p1, v2}, Lrb7;->e(Ltc7;)Lrb7;

    move-result-object p1

    iget-object v0, v0, Lk56;->k:Lq66;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v1, Lt46;

    invoke-direct {v1, v0}, Lt46;-><init>(Lq66;)V

    .line 20
    invoke-virtual {p1, v1}, Lrb7;->e(Ltc7;)Lrb7;

    move-result-object p1

    sget-object v0, Lu46;->e:Lu46;

    .line 21
    invoke-virtual {p1, v0}, Lrb7;->d(Ltc7;)Lrb7;

    move-result-object p1

    .line 22
    sget-object v0, Lbg7;->e:Lbg7;

    invoke-virtual {p1, v0}, Lrb7;->l(Lvb7;)Lrb7;

    move-result-object v0

    :goto_0
    return-object v0
.end method
