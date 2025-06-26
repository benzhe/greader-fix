.class public final synthetic Llj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lkj1;


# direct methods
.method public constructor <init>(Lkj1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj1;->e:Lkj1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Llj1;->e:Lkj1;

    .line 1
    iget-object v1, v0, Lkj1;->j:Lek1;

    invoke-interface {v1}, Lek1;->destroy()V

    .line 2
    iget-object v0, v0, Lkj1;->i:Lwj1;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lwj1;->i:Lxw0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Lxw0;->destroy()V

    .line 6
    iput-object v2, v0, Lwj1;->i:Lxw0;

    .line 7
    :cond_0
    iget-object v1, v0, Lwj1;->j:Lxw0;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1}, Lxw0;->destroy()V

    .line 9
    iput-object v2, v0, Lwj1;->j:Lxw0;

    .line 10
    :cond_1
    iput-object v2, v0, Lwj1;->k:Lx20;

    .line 11
    iget-object v1, v0, Lwj1;->r:Lm4;

    invoke-virtual {v1}, Lm4;->clear()V

    .line 12
    iget-object v1, v0, Lwj1;->s:Lm4;

    invoke-virtual {v1}, Lm4;->clear()V

    .line 13
    iput-object v2, v0, Lwj1;->b:Lsu3;

    .line 14
    iput-object v2, v0, Lwj1;->c:Lm70;

    .line 15
    iput-object v2, v0, Lwj1;->d:Landroid/view/View;

    .line 16
    iput-object v2, v0, Lwj1;->e:Ljava/util/List;

    .line 17
    iput-object v2, v0, Lwj1;->h:Landroid/os/Bundle;

    .line 18
    iput-object v2, v0, Lwj1;->l:Landroid/view/View;

    .line 19
    iput-object v2, v0, Lwj1;->m:Lx20;

    .line 20
    iput-object v2, v0, Lwj1;->o:Lu70;

    .line 21
    iput-object v2, v0, Lwj1;->p:Lu70;

    .line 22
    iput-object v2, v0, Lwj1;->q:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
