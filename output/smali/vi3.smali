.class public final Lvi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyi3;
.implements Lzi3;


# instance fields
.field public final e:Landroid/net/Uri;

.field public final f:Lhk3;

.field public final g:Ljg3;

.field public final h:I

.field public final i:Landroid/os/Handler;

.field public final j:Lti3;

.field public final k:Lue3;

.field public final l:I

.field public m:Lyi3;

.field public n:Lse3;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lhk3;Ljg3;ILandroid/os/Handler;Lti3;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lvi3;->e:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lvi3;->f:Lhk3;

    .line 4
    iput-object p3, p0, Lvi3;->g:Ljg3;

    .line 5
    iput p4, p0, Lvi3;->h:I

    .line 6
    iput-object p5, p0, Lvi3;->i:Landroid/os/Handler;

    .line 7
    iput-object p6, p0, Lvi3;->j:Lti3;

    .line 8
    iput p7, p0, Lvi3;->l:I

    .line 9
    new-instance p1, Lue3;

    invoke-direct {p1}, Lue3;-><init>()V

    iput-object p1, p0, Lvi3;->k:Lue3;

    return-void
.end method


# virtual methods
.method public final a(Lde3;ZLyi3;)V
    .locals 2

    .line 1
    iput-object p3, p0, Lvi3;->m:Lyi3;

    .line 2
    new-instance p1, Llj3;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p2, 0x0

    invoke-direct {p1, v0, v1, p2}, Llj3;-><init>(JZ)V

    iput-object p1, p0, Lvi3;->n:Lse3;

    const/4 p2, 0x0

    .line 3
    invoke-interface {p3, p1, p2}, Lyi3;->f(Lse3;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(ILik3;)Lxi3;
    .locals 10

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Lc50;->j(Z)V

    .line 2
    new-instance p1, Lmi3;

    iget-object v1, p0, Lvi3;->e:Landroid/net/Uri;

    iget-object v0, p0, Lvi3;->f:Lhk3;

    invoke-interface {v0}, Lhk3;->a()Lek3;

    move-result-object v2

    iget-object v0, p0, Lvi3;->g:Ljg3;

    .line 3
    invoke-interface {v0}, Ljg3;->a()[Lig3;

    move-result-object v3

    iget v4, p0, Lvi3;->h:I

    iget-object v5, p0, Lvi3;->i:Landroid/os/Handler;

    iget-object v6, p0, Lvi3;->j:Lti3;

    iget v9, p0, Lvi3;->l:I

    move-object v0, p1

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lmi3;-><init>(Landroid/net/Uri;Lek3;[Lig3;ILandroid/os/Handler;Lti3;Lyi3;Lik3;I)V

    return-object p1
.end method

.method public final c(Lxi3;)V
    .locals 4

    .line 1
    check-cast p1, Lmi3;

    .line 2
    iget-object v0, p1, Lmi3;->n:Lsi3;

    .line 3
    iget-object v1, p1, Lmi3;->m:Lqk3;

    new-instance v2, Lni3;

    invoke-direct {v2, p1, v0}, Lni3;-><init>(Lmi3;Lsi3;)V

    .line 4
    iget-object v0, v1, Lqk3;->b:Lrk3;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Lrk3;->b(Z)V

    .line 6
    :cond_0
    iget-object v0, v1, Lqk3;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, v1, Lqk3;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 8
    iget-object v0, p1, Lmi3;->r:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-boolean v3, p1, Lmi3;->K:Z

    return-void
.end method

.method public final d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lvi3;->m:Lyi3;

    return-void
.end method

.method public final f(Lse3;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p2, p0, Lvi3;->k:Lue3;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, p2, v0}, Lse3;->e(ILue3;Z)Lue3;

    move-result-object p2

    .line 3
    iget-wide v1, p2, Lue3;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 4
    :cond_0
    iget-boolean p2, p0, Lvi3;->o:Z

    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iput-object p1, p0, Lvi3;->n:Lse3;

    .line 6
    iput-boolean v0, p0, Lvi3;->o:Z

    .line 7
    iget-object p2, p0, Lvi3;->m:Lyi3;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lyi3;->f(Lse3;Ljava/lang/Object;)V

    return-void
.end method
