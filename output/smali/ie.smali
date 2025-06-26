.class public Lie;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/media/MediaBrowserServiceCompat$i;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/os/IBinder;

.field public final synthetic h:Landroid/os/Bundle;

.field public final synthetic i:Landroidx/media/MediaBrowserServiceCompat$h;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat$h;Landroidx/media/MediaBrowserServiceCompat$i;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lie;->i:Landroidx/media/MediaBrowserServiceCompat$h;

    iput-object p2, p0, Lie;->e:Landroidx/media/MediaBrowserServiceCompat$i;

    iput-object p3, p0, Lie;->f:Ljava/lang/String;

    iput-object p4, p0, Lie;->g:Landroid/os/IBinder;

    iput-object p5, p0, Lie;->h:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lie;->e:Landroidx/media/MediaBrowserServiceCompat$i;

    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$j;

    invoke-virtual {v0}, Landroidx/media/MediaBrowserServiceCompat$j;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lie;->i:Landroidx/media/MediaBrowserServiceCompat$h;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$h;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Lf4;

    invoke-virtual {v1, v0}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$a;

    if-nez v0, :cond_0

    const-string v0, "addSubscription for callback that isn\'t registered id="

    .line 3
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lie;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBServiceCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lie;->i:Landroidx/media/MediaBrowserServiceCompat$h;

    iget-object v8, v1, Landroidx/media/MediaBrowserServiceCompat$h;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v9, p0, Lie;->f:Ljava/lang/String;

    iget-object v1, p0, Lie;->g:Landroid/os/IBinder;

    iget-object v10, p0, Lie;->h:Landroid/os/Bundle;

    .line 5
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, v0, Landroidx/media/MediaBrowserServiceCompat$a;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls9;

    .line 9
    iget-object v5, v4, Ls9;->a:Ljava/lang/Object;

    if-ne v1, v5, :cond_2

    iget-object v4, v4, Ls9;->b:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 10
    invoke-static {v10, v4}, Ld0$h;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 11
    :cond_3
    new-instance v3, Ls9;

    invoke-direct {v3, v1, v10}, Ls9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, v0, Landroidx/media/MediaBrowserServiceCompat$a;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    .line 13
    new-instance v11, Lce;

    move-object v1, v11

    move-object v2, v8

    move-object v3, v9

    move-object v4, v0

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v7}, Lce;-><init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroidx/media/MediaBrowserServiceCompat$a;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    if-nez v10, :cond_4

    .line 14
    invoke-virtual {v8, v9, v11}, Landroidx/media/MediaBrowserServiceCompat;->c(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$g;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {v8, v9, v11}, Landroidx/media/MediaBrowserServiceCompat;->d(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$g;)V

    .line 16
    :goto_0
    invoke-virtual {v11}, Landroidx/media/MediaBrowserServiceCompat$g;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {v8}, Landroidx/media/MediaBrowserServiceCompat;->g()V

    :goto_1
    return-void

    .line 18
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-static {v2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$a;->a:Ljava/lang/String;

    const-string v3, " id="

    invoke-static {v2, v0, v3, v9}, Ljo;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
