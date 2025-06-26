.class public final Lzu2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Law2;

.field public final synthetic f:I

.field public final synthetic g:Lwu2;


# direct methods
.method public constructor <init>(Lwu2;Law2;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzu2;->g:Lwu2;

    iput-object p2, p0, Lzu2;->e:Law2;

    iput p3, p0, Lzu2;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lzu2;->e:Law2;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lzu2;->g:Lwu2;

    .line 3
    iput-object v0, v1, Lwu2;->p:Lit2;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lsu2;->cancel(Z)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lzu2;->g:Lwu2;

    iget v2, p0, Lzu2;->f:I

    iget-object v3, p0, Lzu2;->e:Law2;

    .line 6
    invoke-virtual {v1, v2, v3}, Lwu2;->E(ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    iget-object v1, p0, Lzu2;->g:Lwu2;

    invoke-static {v1, v0}, Lwu2;->I(Lwu2;Lit2;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lzu2;->g:Lwu2;

    invoke-static {v2, v0}, Lwu2;->I(Lwu2;Lit2;)V

    .line 9
    throw v1
.end method
