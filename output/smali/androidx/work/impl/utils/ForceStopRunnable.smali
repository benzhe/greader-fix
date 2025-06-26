.class public Landroidx/work/impl/utils/ForceStopRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String;

.field public static final h:J


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lnk;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "ForceStopRunnable"

    .line 1
    invoke-static {v0}, Lvj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/ForceStopRunnable;->g:Ljava/lang/String;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/utils/ForceStopRunnable;->h:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->e:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->f:Lnk;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 4
    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    const-string v0, "alarm"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/high16 v1, 0x8000000

    .line 2
    invoke-static {p0, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Landroidx/work/impl/utils/ForceStopRunnable;->h:J

    add-long/2addr v1, v3

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->g:Ljava/lang/String;

    const-string v2, "Performing cleanup operations."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v4}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->e:Landroid/content/Context;

    .line 4
    sget-object v1, Lal;->j:Ljava/lang/String;

    const-string v1, "jobscheduler"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v0, v1}, Lal;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 9
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "EXTRA_WORK_SPEC_ID"

    .line 10
    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 11
    :cond_1
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lal;->b(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->f:Lnk;

    .line 13
    iget-object v0, v0, Lnk;->c:Landroidx/work/impl/WorkDatabase;

    .line 14
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()Lem;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Llg;->c()V

    .line 16
    :try_start_0
    check-cast v1, Lfm;

    invoke-virtual {v1}, Lfm;->c()Ljava/util/List;

    move-result-object v2

    .line 17
    move-object v4, v2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 18
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldm;

    .line 19
    sget-object v7, Lak;->e:Lak;

    new-array v8, v5, [Ljava/lang/String;

    iget-object v9, v6, Ldm;->a:Ljava/lang/String;

    aput-object v9, v8, v3

    invoke-virtual {v1, v7, v8}, Lfm;->n(Lak;[Ljava/lang/String;)I

    .line 20
    iget-object v6, v6, Ldm;->a:Ljava/lang/String;

    const-wide/16 v7, -0x1

    invoke-virtual {v1, v6, v7, v8}, Lfm;->j(Ljava/lang/String;J)I

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {v0}, Llg;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    invoke-virtual {v0}, Llg;->g()V

    .line 23
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->f:Lnk;

    .line 24
    iget-object v0, v0, Lnk;->g:Lpm;

    .line 25
    invoke-virtual {v0}, Lpm;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "reschedule_needed"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->g:Ljava/lang/String;

    const-string v2, "Rescheduling Workers."

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v4}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 27
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->f:Lnk;

    invoke-virtual {v0}, Lnk;->d()V

    .line 28
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->f:Lnk;

    .line 29
    iget-object v0, v0, Lnk;->g:Lpm;

    .line 30
    invoke-virtual {v0}, Lpm;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "reschedule_needed"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 31
    :cond_4
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->e:Landroid/content/Context;

    const/high16 v1, 0x20000000

    invoke-static {v0, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_5

    .line 32
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->e:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/impl/utils/ForceStopRunnable;->b(Landroid/content/Context;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 33
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->g:Ljava/lang/String;

    const-string v2, "Application was force-stopped, rescheduling."

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 34
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->f:Lnk;

    invoke-virtual {v0}, Lnk;->d()V

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    .line 35
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->g:Ljava/lang/String;

    const-string v2, "Found unfinished work, scheduling it."

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 36
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->f:Lnk;

    .line 37
    iget-object v1, v0, Lnk;->b:Lpj;

    .line 38
    iget-object v2, v0, Lnk;->c:Landroidx/work/impl/WorkDatabase;

    .line 39
    iget-object v0, v0, Lnk;->e:Ljava/util/List;

    .line 40
    invoke-static {v1, v2, v0}, Ljk;->a(Lpj;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 41
    :cond_7
    :goto_3
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->f:Lnk;

    .line 42
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lnk;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_1
    iput-boolean v5, v0, Lnk;->h:Z

    .line 45
    iget-object v2, v0, Lnk;->i:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v2, :cond_8

    .line 46
    invoke-virtual {v2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v2, 0x0

    .line 47
    iput-object v2, v0, Lnk;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 48
    :cond_8
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 49
    invoke-virtual {v0}, Llg;->g()V

    .line 50
    throw v1
.end method
