.class public Lzy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzy$b;,
        Lzy$c;,
        Lzy$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/google/android/gms/common/api/Status;

.field public static final p:Lcom/google/android/gms/common/api/Status;

.field public static final q:Ljava/lang/Object;

.field public static r:Lzy;


# instance fields
.field public e:J

.field public final f:Landroid/content/Context;

.field public final g:Lfy;

.field public final h:Lp00;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lb00<",
            "*>;",
            "Lzy$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lb00<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lb00<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final n:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lzy;->o:Lcom/google/android/gms/common/api/Status;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lzy;->p:Lcom/google/android/gms/common/api/Status;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzy;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lfy;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    .line 2
    iput-wide v0, p0, Lzy;->e:J

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lzy;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lzy;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v0, v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lzy;->k:Ljava/util/Map;

    .line 6
    new-instance v0, Lh4;

    .line 7
    invoke-direct {v0, v2}, Lh4;-><init>(I)V

    .line 8
    iput-object v0, p0, Lzy;->l:Ljava/util/Set;

    .line 9
    new-instance v0, Lh4;

    .line 10
    invoke-direct {v0, v2}, Lh4;-><init>(I)V

    .line 11
    iput-object v0, p0, Lzy;->m:Ljava/util/Set;

    .line 12
    iput-object p1, p0, Lzy;->f:Landroid/content/Context;

    .line 13
    new-instance p1, Ltv3;

    invoke-direct {p1, p2, p0}, Ltv3;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lzy;->n:Landroid/os/Handler;

    .line 14
    iput-object p3, p0, Lzy;->g:Lfy;

    .line 15
    new-instance p2, Lp00;

    invoke-direct {p2, p3}, Lp00;-><init>(Lgy;)V

    iput-object p2, p0, Lzy;->h:Lp00;

    const/4 p2, 0x6

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lzy;
    .locals 4

    .line 1
    sget-object v0, Lzy;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lzy;->r:Lzy;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 6
    new-instance v2, Lzy;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, Lfy;->c:Ljava/lang/Object;

    sget-object v3, Lfy;->d:Lfy;

    invoke-direct {v2, p0, v1, v3}, Lzy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lfy;)V

    sput-object v2, Lzy;->r:Lzy;

    .line 8
    :cond_0
    sget-object p0, Lzy;->r:Lzy;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b(Lpy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpy<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lpy;->d:Lb00;

    .line 2
    iget-object v1, p0, Lzy;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzy$a;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lzy$a;

    invoke-direct {v1, p0, p1}, Lzy$a;-><init>(Lzy;Lpy;)V

    .line 4
    iget-object p1, p0, Lzy;->k:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-virtual {v1}, Lzy$a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lzy;->m:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {v1}, Lzy$a;->a()V

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lzy;->g:Lfy;

    iget-object v1, p0, Lzy;->f:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v2, p1, Lcom/google/android/gms/common/ConnectionResult;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v5, p1, Lcom/google/android/gms/common/ConnectionResult;->g:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/high16 v6, 0x8000000

    if-eqz v5, :cond_1

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/common/ConnectionResult;->g:Landroid/app/PendingIntent;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v5}, Lfy;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v5

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {v1, v3, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    .line 7
    iget p1, p1, Lcom/google/android/gms/common/ConnectionResult;->f:I

    .line 8
    sget v5, Lcom/google/android/gms/common/api/GoogleApiActivity;->f:I

    .line 9
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v5, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "pending_intent"

    .line 10
    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "failing_client_id"

    .line 11
    invoke-virtual {v5, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "notify_manager"

    .line 12
    invoke-virtual {v5, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    invoke-static {v1, v3, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 14
    invoke-virtual {v0, v1, p1, p2}, Lfy;->f(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-wide/32 v2, 0x493e0

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    const-string p1, "GoogleApiManager"

    const/16 v1, 0x1f

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message id: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 3
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lzy$b;

    .line 4
    iget-object v0, p0, Lzy;->k:Ljava/util/Map;

    .line 5
    iget-object v2, p1, Lzy$b;->a:Lb00;

    .line 6
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 7
    iget-object v0, p0, Lzy;->k:Ljava/util/Map;

    .line 8
    iget-object v2, p1, Lzy$b;->a:Lb00;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzy$a;

    .line 10
    iget-object v2, v0, Lzy$a;->o:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 11
    iget-object v2, v0, Lzy$a;->q:Lzy;

    .line 12
    iget-object v2, v2, Lzy;->n:Landroid/os/Handler;

    const/16 v3, 0xf

    .line 13
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 14
    iget-object v2, v0, Lzy$a;->q:Lzy;

    .line 15
    iget-object v2, v2, Lzy;->n:Landroid/os/Handler;

    const/16 v3, 0x10

    .line 16
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 17
    iget-object p1, p1, Lzy$b;->b:Lcom/google/android/gms/common/Feature;

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lzy$a;->e:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    iget-object v3, v0, Lzy$a;->e:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Liz;

    .line 20
    instance-of v6, v5, Lsz;

    if-eqz v6, :cond_0

    .line 21
    move-object v6, v5

    check-cast v6, Lsz;

    invoke-virtual {v6, v0}, Lsz;->f(Lzy$a;)[Lcom/google/android/gms/common/Feature;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 22
    invoke-static {v6, p1}, Lbi;->n([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 23
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v4, v3, :cond_e

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Liz;

    .line 25
    iget-object v6, v0, Lzy$a;->e:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 26
    new-instance v6, Lvy;

    invoke-direct {v6, p1}, Lvy;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v5, v6}, Liz;->d(Ljava/lang/RuntimeException;)V

    goto :goto_1

    .line 27
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lzy$b;

    .line 28
    iget-object v0, p0, Lzy;->k:Ljava/util/Map;

    .line 29
    iget-object v2, p1, Lzy$b;->a:Lb00;

    .line 30
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 31
    iget-object v0, p0, Lzy;->k:Ljava/util/Map;

    .line 32
    iget-object v2, p1, Lzy$b;->a:Lb00;

    .line 33
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzy$a;

    .line 34
    iget-object v2, v0, Lzy$a;->o:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_6

    .line 35
    :cond_2
    iget-boolean p1, v0, Lzy$a;->n:Z

    if-nez p1, :cond_e

    .line 36
    iget-object p1, v0, Lzy$a;->f:Lny$f;

    invoke-interface {p1}, Lny$f;->isConnected()Z

    move-result p1

    if-nez p1, :cond_3

    .line 37
    invoke-virtual {v0}, Lzy$a;->a()V

    goto/16 :goto_6

    .line 38
    :cond_3
    invoke-virtual {v0}, Lzy$a;->h()V

    goto/16 :goto_6

    .line 39
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lgz;

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lzy;->k:Ljava/util/Map;

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 42
    throw v5

    .line 43
    :cond_4
    iget-object p1, p0, Lzy;->k:Ljava/util/Map;

    .line 44
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzy$a;

    .line 45
    invoke-virtual {p1, v4}, Lzy$a;->o(Z)Z

    .line 46
    throw v5

    .line 47
    :pswitch_3
    iget-object v0, p0, Lzy;->k:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 48
    iget-object v0, p0, Lzy;->k:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzy$a;

    .line 49
    invoke-virtual {p1, v1}, Lzy$a;->o(Z)Z

    goto/16 :goto_6

    .line 50
    :pswitch_4
    iget-object v0, p0, Lzy;->k:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 51
    iget-object v0, p0, Lzy;->k:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzy$a;

    .line 52
    iget-object v0, p1, Lzy$a;->q:Lzy;

    .line 53
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 54
    invoke-static {v0}, Lbi;->e(Landroid/os/Handler;)V

    .line 55
    iget-boolean v0, p1, Lzy$a;->n:Z

    if-eqz v0, :cond_e

    .line 56
    invoke-virtual {p1}, Lzy$a;->k()V

    .line 57
    iget-object v0, p1, Lzy$a;->q:Lzy;

    .line 58
    iget-object v2, v0, Lzy;->g:Lfy;

    .line 59
    iget-object v0, v0, Lzy;->f:Landroid/content/Context;

    .line 60
    invoke-virtual {v2, v0}, Lfy;->c(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0x12

    const/16 v3, 0x8

    if-ne v0, v2, :cond_5

    .line 61
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_2

    .line 62
    :cond_5
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 63
    :goto_2
    invoke-virtual {p1, v0}, Lzy$a;->m(Lcom/google/android/gms/common/api/Status;)V

    .line 64
    iget-object p1, p1, Lzy$a;->f:Lny$f;

    invoke-interface {p1}, Lny$f;->disconnect()V

    goto/16 :goto_6

    .line 65
    :pswitch_5
    iget-object p1, p0, Lzy;->m:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb00;

    .line 66
    iget-object v2, p0, Lzy;->k:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzy$a;

    invoke-virtual {v0}, Lzy$a;->i()V

    goto :goto_3

    .line 67
    :cond_6
    iget-object p1, p0, Lzy;->m:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_6

    .line 68
    :pswitch_6
    iget-object v0, p0, Lzy;->k:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 69
    iget-object v0, p0, Lzy;->k:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzy$a;

    .line 70
    iget-object v0, p1, Lzy$a;->q:Lzy;

    .line 71
    iget-object v0, v0, Lzy;->n:Landroid/os/Handler;

    .line 72
    invoke-static {v0}, Lbi;->e(Landroid/os/Handler;)V

    .line 73
    iget-boolean v0, p1, Lzy$a;->n:Z

    if-eqz v0, :cond_e

    .line 74
    invoke-virtual {p1}, Lzy$a;->a()V

    goto/16 :goto_6

    .line 75
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lpy;

    invoke-virtual {p0, p1}, Lzy;->b(Lpy;)V

    goto/16 :goto_6

    .line 76
    :pswitch_8
    iget-object p1, p0, Lzy;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_e

    .line 77
    iget-object p1, p0, Lzy;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 78
    invoke-static {p1}, Lxy;->a(Landroid/app/Application;)V

    .line 79
    sget-object p1, Lxy;->i:Lxy;

    .line 80
    new-instance v0, Ljz;

    invoke-direct {v0, p0}, Ljz;-><init>(Lzy;)V

    .line 81
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    monitor-enter p1

    .line 83
    :try_start_0
    iget-object v4, p1, Lxy;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p1, Lxy;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    .line 86
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 87
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 88
    iget-object v4, p1, Lxy;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-nez v4, :cond_7

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-le v0, v4, :cond_7

    .line 89
    iget-object v0, p1, Lxy;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 90
    :cond_7
    iget-object p1, p1, Lxy;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_e

    .line 91
    iput-wide v2, p0, Lzy;->e:J

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    .line 92
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 93
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 94
    iget-object v2, p0, Lzy;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzy$a;

    .line 95
    iget v4, v3, Lzy$a;->l:I

    if-ne v4, v0, :cond_8

    move-object v5, v3

    :cond_9
    if-eqz v5, :cond_a

    .line 96
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x11

    iget-object v3, p0, Lzy;->g:Lfy;

    .line 97
    iget v4, p1, Lcom/google/android/gms/common/ConnectionResult;->f:I

    .line 98
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-boolean v3, Lky;->a:Z

    .line 100
    invoke-static {v4}, Lcom/google/android/gms/common/ConnectionResult;->C(I)Ljava/lang/String;

    move-result-object v3

    .line 101
    iget-object p1, p1, Lcom/google/android/gms/common/ConnectionResult;->h:Ljava/lang/String;

    const/16 v4, 0x45

    .line 102
    invoke-static {v3, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    invoke-static {p1, v4}, Ljo;->x(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "Error resolution was canceled by the user, original error message: "

    const-string v7, ": "

    invoke-static {v4, v6, v3, v7, p1}, Ljo;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 103
    invoke-virtual {v5, v0}, Lzy$a;->m(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_6

    :cond_a
    const-string p1, "GoogleApiManager"

    const/16 v2, 0x4c

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not find API instance "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while trying to fail enqueued calls."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 105
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lqz;

    .line 106
    iget-object v0, p0, Lzy;->k:Ljava/util/Map;

    iget-object v2, p1, Lqz;->c:Lpy;

    .line 107
    iget-object v2, v2, Lpy;->d:Lb00;

    .line 108
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzy$a;

    if-nez v0, :cond_b

    .line 109
    iget-object v0, p1, Lqz;->c:Lpy;

    invoke-virtual {p0, v0}, Lzy;->b(Lpy;)V

    .line 110
    iget-object v0, p0, Lzy;->k:Ljava/util/Map;

    iget-object v2, p1, Lqz;->c:Lpy;

    .line 111
    iget-object v2, v2, Lpy;->d:Lb00;

    .line 112
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzy$a;

    .line 113
    :cond_b
    invoke-virtual {v0}, Lzy$a;->b()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lzy;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p1, Lqz;->b:I

    if-eq v2, v3, :cond_c

    .line 114
    iget-object p1, p1, Lqz;->a:Liz;

    sget-object v2, Lzy;->o:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v2}, Liz;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 115
    invoke-virtual {v0}, Lzy$a;->i()V

    goto :goto_6

    .line 116
    :cond_c
    iget-object p1, p1, Lqz;->a:Liz;

    invoke-virtual {v0, p1}, Lzy$a;->d(Liz;)V

    goto :goto_6

    .line 117
    :pswitch_b
    iget-object p1, p0, Lzy;->k:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzy$a;

    .line 118
    invoke-virtual {v0}, Lzy$a;->j()V

    .line 119
    invoke-virtual {v0}, Lzy$a;->a()V

    goto :goto_4

    .line 120
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc00;

    .line 121
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    throw v5

    .line 123
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    const-wide/16 v2, 0x2710

    .line 124
    :cond_d
    iput-wide v2, p0, Lzy;->e:J

    .line 125
    iget-object p1, p0, Lzy;->n:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object p1, p0, Lzy;->k:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb00;

    .line 127
    iget-object v3, p0, Lzy;->n:Landroid/os/Handler;

    .line 128
    invoke-virtual {v3, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v4, p0, Lzy;->e:J

    .line 129
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_e
    :goto_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
