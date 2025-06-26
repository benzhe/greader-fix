.class public Lje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/media/MediaBrowserServiceCompat$i;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/os/IBinder;

.field public final synthetic h:Landroidx/media/MediaBrowserServiceCompat$h;


# direct methods
.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat$h;Landroidx/media/MediaBrowserServiceCompat$i;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lje;->h:Landroidx/media/MediaBrowserServiceCompat$h;

    iput-object p2, p0, Lje;->e:Landroidx/media/MediaBrowserServiceCompat$i;

    iput-object p3, p0, Lje;->f:Ljava/lang/String;

    iput-object p4, p0, Lje;->g:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lje;->e:Landroidx/media/MediaBrowserServiceCompat$i;

    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$j;

    invoke-virtual {v0}, Landroidx/media/MediaBrowserServiceCompat$j;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lje;->h:Landroidx/media/MediaBrowserServiceCompat$h;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$h;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Lf4;

    invoke-virtual {v1, v0}, Lm4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$a;

    const-string v1, "MBServiceCompat"

    if-nez v0, :cond_0

    const-string v0, "removeSubscription for callback that isn\'t registered id="

    .line 3
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lje;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v2, p0, Lje;->h:Landroidx/media/MediaBrowserServiceCompat$h;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat$h;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v3, p0, Lje;->f:Ljava/lang/String;

    iget-object v4, p0, Lje;->g:Landroid/os/IBinder;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 6
    :try_start_0
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v6, v0, Landroidx/media/MediaBrowserServiceCompat$a;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_4

    .line 8
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 9
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 10
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls9;

    iget-object v8, v8, Ls9;->a:Ljava/lang/Object;

    if-ne v4, v8, :cond_2

    .line 11
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    const/4 v5, 0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 13
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_4
    :goto_1
    invoke-virtual {v2}, Landroidx/media/MediaBrowserServiceCompat;->h()V

    if-nez v5, :cond_5

    const-string v0, "removeSubscription called for "

    .line 15
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lje;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which is not subscribed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 16
    invoke-virtual {v2}, Landroidx/media/MediaBrowserServiceCompat;->h()V

    .line 17
    throw v0
.end method
