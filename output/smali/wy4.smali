.class public final Lwy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lsz4;


# direct methods
.method public constructor <init>(Lsz4;Z)V
    .locals 0

    iput-object p1, p0, Lwy4;->f:Lsz4;

    iput-boolean p2, p0, Lwy4;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lwy4;->f:Lsz4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 1
    invoke-virtual {v0}, Lrx4;->g()Z

    move-result v0

    iget-object v1, p0, Lwy4;->f:Lsz4;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 2
    invoke-virtual {v1}, Lrx4;->f()Z

    move-result v1

    iget-object v2, p0, Lwy4;->f:Lsz4;

    iget-object v2, v2, Lly4;->a:Lrx4;

    iget-boolean v3, p0, Lwy4;->e:Z

    .line 3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lrx4;->B:Ljava/lang/Boolean;

    .line 4
    iget-boolean v2, p0, Lwy4;->e:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lwy4;->f:Lsz4;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 5
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lqw4;->n:Low4;

    .line 7
    iget-boolean v2, p0, Lwy4;->e:Z

    .line 8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Default data collection state already set to"

    invoke-virtual {v1, v3, v2}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lwy4;->f:Lsz4;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 9
    invoke-virtual {v1}, Lrx4;->g()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lwy4;->f:Lsz4;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 10
    invoke-virtual {v1}, Lrx4;->g()Z

    move-result v1

    iget-object v2, p0, Lwy4;->f:Lsz4;

    iget-object v2, v2, Lly4;->a:Lrx4;

    invoke-virtual {v2}, Lrx4;->f()Z

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lwy4;->f:Lsz4;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 11
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 12
    iget-object v1, v1, Lqw4;->k:Low4;

    .line 13
    iget-boolean v2, p0, Lwy4;->e:Z

    .line 14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "Default data collection is different than actual status"

    .line 16
    invoke-virtual {v1, v3, v2, v0}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lwy4;->f:Lsz4;

    .line 17
    invoke-virtual {v0}, Lsz4;->v()V

    return-void
.end method
