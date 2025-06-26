.class public final Lxu4;
.super Lyv4;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public d:J


# direct methods
.method public constructor <init>(Lrx4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lyv4;-><init>(Lrx4;)V

    .line 2
    new-instance p1, Lf4;

    invoke-direct {p1}, Lf4;-><init>()V

    iput-object p1, p0, Lxu4;->c:Ljava/util/Map;

    new-instance p1, Lf4;

    .line 3
    invoke-direct {p1}, Lf4;-><init>()V

    iput-object p1, p0, Lxu4;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/String;J)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v1, Lyr4;

    .line 4
    invoke-direct {v1, p0, p1, p2, p3}, Lyr4;-><init>(Lxu4;Ljava/lang/String;J)V

    .line 5
    invoke-virtual {v0, v1}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 7
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lqw4;->f:Low4;

    const-string p2, "Ad unit id must be a non-empty string"

    .line 9
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ljava/lang/String;J)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v0}, Lrx4;->m()Lox4;

    move-result-object v0

    new-instance v1, Lvs4;

    .line 4
    invoke-direct {v1, p0, p1, p2, p3}, Lvs4;-><init>(Lxu4;Ljava/lang/String;J)V

    .line 5
    invoke-virtual {v0, v1}, Lox4;->q(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 7
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lqw4;->f:Low4;

    const-string p2, "Ad unit id must be a non-empty string"

    .line 9
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final h(J)V
    .locals 5

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->y()Lh05;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lh05;->p(Z)La05;

    move-result-object v0

    iget-object v1, p0, Lxu4;->b:Ljava/util/Map;

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lxu4;->b:Ljava/util/Map;

    .line 4
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, p1, v3

    .line 5
    invoke-virtual {p0, v2, v3, v4, v0}, Lxu4;->k(Ljava/lang/String;JLa05;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lxu4;->b:Ljava/util/Map;

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lxu4;->d:J

    sub-long v1, p1, v1

    .line 7
    invoke-virtual {p0, v1, v2, v0}, Lxu4;->i(JLa05;)V

    .line 8
    :cond_1
    invoke-virtual {p0, p1, p2}, Lxu4;->l(J)V

    return-void
.end method

.method public final i(JLa05;)V
    .locals 3

    if-nez p3, :cond_0

    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lqw4;->n:Low4;

    const-string p2, "Not logging ad exposure. No active activity"

    .line 3
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    iget-object p3, p0, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {p3}, Lrx4;->a()Lqw4;

    move-result-object p3

    .line 5
    iget-object p3, p3, Lqw4;->n:Low4;

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Not logging ad exposure. Less than 1000 ms. exposure"

    invoke-virtual {p3, p2, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_xt"

    .line 8
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p1, 0x1

    .line 9
    invoke-static {p3, v0, p1}, Lh05;->r(La05;Landroid/os/Bundle;Z)V

    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {p1}, Lrx4;->s()Lsz4;

    move-result-object p1

    const-string p2, "am"

    const-string p3, "_xa"

    .line 11
    invoke-virtual {p1, p2, p3, v0}, Lsz4;->A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final k(Ljava/lang/String;JLa05;)V
    .locals 3

    if-nez p4, :cond_0

    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lqw4;->n:Low4;

    const-string p2, "Not logging ad unit exposure. No active activity"

    .line 3
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {p1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lqw4;->n:Low4;

    .line 6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Not logging ad unit exposure. Less than 1000 ms. exposure"

    invoke-virtual {p1, p3, p2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_ai"

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_xt"

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p1, 0x1

    .line 10
    invoke-static {p4, v0, p1}, Lh05;->r(La05;Landroid/os/Bundle;Z)V

    iget-object p1, p0, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {p1}, Lrx4;->s()Lsz4;

    move-result-object p1

    const-string p2, "am"

    const-string p3, "_xu"

    .line 12
    invoke-virtual {p1, p2, p3, v0}, Lsz4;->A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final l(J)V
    .locals 4

    iget-object v0, p0, Lxu4;->b:Ljava/util/Map;

    .line 1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lxu4;->b:Ljava/util/Map;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lxu4;->b:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iput-wide p1, p0, Lxu4;->d:J

    :cond_1
    return-void
.end method
