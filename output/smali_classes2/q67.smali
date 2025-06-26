.class public abstract Lq67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld67;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ld67;
.end method

.method public b(Lx47;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq67;->a()Ld67;

    move-result-object v0

    invoke-interface {v0, p1}, Lc87;->b(Lx47;)V

    return-void
.end method

.method public c(Lx47;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq67;->a()Ld67;

    move-result-object v0

    invoke-interface {v0, p1}, Lc87;->c(Lx47;)V

    return-void
.end method

.method public d(Lc87$a;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq67;->a()Ld67;

    move-result-object v0

    invoke-interface {v0, p1}, Lc87;->d(Lc87$a;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public e()Ly37;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq67;->a()Ld67;

    move-result-object v0

    invoke-interface {v0}, Lx37;->e()Ly37;

    move-result-object v0

    return-object v0
.end method

.method public f(La67$a;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq67;->a()Ld67;

    move-result-object v0

    invoke-interface {v0, p1, p2}, La67;->f(La67$a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    invoke-virtual {p0}, Lq67;->a()Ld67;

    move-result-object v1

    const-string v2, "delegate"

    .line 2
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 3
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
