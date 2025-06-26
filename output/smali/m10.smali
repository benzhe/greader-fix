.class public final Lm10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lo10;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ServiceConnection;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public d:Landroid/os/IBinder;

.field public final e:Ln00$a;

.field public f:Landroid/content/ComponentName;

.field public final synthetic g:Lk10;


# direct methods
.method public constructor <init>(Lk10;Ln00$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm10;->g:Lk10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lm10;->e:Ln00$a;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm10;->a:Ljava/util/Map;

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lm10;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lm10;->b:I

    .line 2
    iget-object v0, p0, Lm10;->g:Lk10;

    .line 3
    iget-object v1, v0, Lk10;->f:Lx10;

    .line 4
    iget-object v2, v0, Lk10;->d:Landroid/content/Context;

    .line 5
    iget-object v0, p0, Lm10;->e:Ln00$a;

    .line 6
    iget-object v3, v0, Ln00$a;->a:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 7
    iget-boolean v3, v0, Ln00$a;->d:Z

    if-eqz v3, :cond_2

    const-string v3, "ConnectionStatusConfig"

    .line 8
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 9
    iget-object v6, v0, Ln00$a;->a:Ljava/lang/String;

    const-string v7, "serviceActionBundleKey"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Ln00$a;->e:Landroid/net/Uri;

    const-string v8, "serviceIntentCall"

    .line 11
    invoke-virtual {v6, v7, v8, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 12
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x22

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Dynamic intent resolution failed: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    :goto_0
    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "serviceResponseIntentKey"

    .line 13
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    :goto_1
    if-nez v4, :cond_2

    const-string v5, "Dynamic lookup for intent failed for action: "

    .line 14
    iget-object v6, v0, Ln00$a;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_2
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v4, :cond_4

    .line 15
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Ln00$a;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Ln00$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_3

    .line 16
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    :goto_3
    move-object v4, v0

    .line 17
    :cond_4
    iget-object v0, p0, Lm10;->e:Ln00$a;

    .line 18
    iget v6, v0, Ln00$a;->c:I

    move-object v3, p1

    move-object v5, p0

    .line 19
    invoke-virtual/range {v1 .. v6}, Lx10;->d(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lm10;->c:Z

    if-eqz p1, :cond_5

    .line 20
    iget-object p1, p0, Lm10;->g:Lk10;

    .line 21
    iget-object p1, p1, Lk10;->e:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 22
    iget-object v1, p0, Lm10;->e:Ln00$a;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lm10;->g:Lk10;

    .line 24
    iget-object v1, v0, Lk10;->e:Landroid/os/Handler;

    .line 25
    iget-wide v2, v0, Lk10;->h:J

    .line 26
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_5
    const/4 p1, 0x2

    .line 27
    iput p1, p0, Lm10;->b:I

    .line 28
    :try_start_1
    iget-object p1, p0, Lm10;->g:Lk10;

    .line 29
    iget-object v0, p1, Lk10;->f:Lx10;

    .line 30
    iget-object p1, p1, Lk10;->d:Landroid/content/Context;

    .line 31
    invoke-virtual {v0, p1, p0}, Lx10;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lm10;->g:Lk10;

    .line 2
    iget-object v0, v0, Lk10;->c:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lm10;->g:Lk10;

    .line 5
    iget-object v1, v1, Lk10;->e:Landroid/os/Handler;

    .line 6
    iget-object v2, p0, Lm10;->e:Ln00$a;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 7
    iput-object p2, p0, Lm10;->d:Landroid/os/IBinder;

    .line 8
    iput-object p1, p0, Lm10;->f:Landroid/content/ComponentName;

    .line 9
    iget-object v1, p0, Lm10;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 10
    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 11
    :cond_0
    iput v3, p0, Lm10;->b:I

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lm10;->g:Lk10;

    .line 2
    iget-object v0, v0, Lk10;->c:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lm10;->g:Lk10;

    .line 5
    iget-object v1, v1, Lk10;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lm10;->e:Ln00$a;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lm10;->d:Landroid/os/IBinder;

    .line 8
    iput-object p1, p0, Lm10;->f:Landroid/content/ComponentName;

    .line 9
    iget-object v1, p0, Lm10;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 10
    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lm10;->b:I

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
