.class public final Lcom/google/android/gms/measurement/AppMeasurementService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lm15;


# instance fields
.field public e:Ln15;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln15<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/job/JobParameters;Z)V
    .locals 0
    .param p1    # Landroid/app/job/JobParameters;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 1
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final b()Ln15;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln15<",
            "Lcom/google/android/gms/measurement/AppMeasurementService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->e:Ln15;

    if-nez v0, :cond_0

    new-instance v0, Ln15;

    .line 1
    invoke-direct {v0, p0}, Ln15;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->e:Ln15;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService;->e:Ln15;

    return-object v0
.end method

.method public final c(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method

.method public final f0(Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/legacy/content/WakefulBroadcastReceiver;->a:Landroid/util/SparseArray;

    const-string v0, "androidx.contentpager.content.wakelockid"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Landroidx/legacy/content/WakefulBroadcastReceiver;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    monitor-exit v0

    goto :goto_0

    :cond_1
    const-string v1, "WakefulBroadcastReceiv."

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active wake lock id #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Ln15;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ln15;->c()Lqw4;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lqw4;->f:Low4;

    const-string v0, "onBind called with null intent"

    .line 5
    invoke-virtual {p1, v0}, Low4;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.google.android.gms.measurement.START"

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lky4;

    iget-object p1, v0, Ln15;->a:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lj25;->v(Landroid/content/Context;)Lj25;

    move-result-object p1

    .line 9
    invoke-direct {v1, p1}, Lky4;-><init>(Lj25;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Ln15;->c()Lqw4;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v2, "onBind received unknown action"

    .line 12
    invoke-virtual {v0, v2, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Ln15;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ln15;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, v1}, Lrx4;->d(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;Ljava/lang/Long;)Lrx4;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v1, "Local AppMeasurementService is starting up"

    .line 7
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Ln15;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ln15;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, v1}, Lrx4;->d(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;Ljava/lang/Long;)Lrx4;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v1, "Local AppMeasurementService is shutting down"

    .line 6
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    .line 7
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Ln15;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln15;->b(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Ln15;

    move-result-object p2

    .line 2
    iget-object v0, p2, Ln15;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, v1}, Lrx4;->d(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzy;Ljava/lang/Long;)Lrx4;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    if-nez p1, :cond_0

    .line 5
    iget-object p1, v0, Lqw4;->i:Low4;

    const-string p2, "AppMeasurementService started with null intent"

    .line 6
    invoke-virtual {p1, p2}, Low4;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, v0, Lqw4;->n:Low4;

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Local AppMeasurementService called. startId, action"

    invoke-virtual {v2, v4, v3, v1}, Low4;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lj15;

    .line 11
    invoke-direct {v1, p2, p3, v0, p1}, Lj15;-><init>(Ln15;ILqw4;Landroid/content/Intent;)V

    .line 12
    iget-object p1, p2, Ln15;->a:Landroid/content/Context;

    .line 13
    invoke-static {p1}, Lj25;->v(Landroid/content/Context;)Lj25;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lj25;->m()Lox4;

    move-result-object p2

    new-instance p3, Ll15;

    invoke-direct {p3, p1, v1}, Ll15;-><init>(Lj25;Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {p2, p3}, Lox4;->q(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/AppMeasurementService;->b()Ln15;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln15;->a(Landroid/content/Intent;)Z

    const/4 p1, 0x1

    return p1
.end method
