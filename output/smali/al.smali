.class public Lal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lik;


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Landroid/app/job/JobScheduler;

.field public final g:Lnk;

.field public final h:Lnm;

.field public final i:Lzk;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobScheduler"

    .line 1
    invoke-static {v0}, Lvj;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lal;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnk;)V
    .locals 2

    const-string v0, "jobscheduler"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v1, Lzk;

    invoke-direct {v1, p1}, Lzk;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lal;->e:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lal;->g:Lnk;

    .line 5
    iput-object v0, p0, Lal;->f:Landroid/app/job/JobScheduler;

    .line 6
    new-instance p2, Lnm;

    invoke-direct {p2, p1}, Lnm;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lal;->h:Lnm;

    .line 7
    iput-object v1, p0, Lal;->i:Lzk;

    return-void
.end method

.method public static b(Landroid/app/job/JobScheduler;I)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v1, Lal;->j:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "Exception while trying to cancel job (%d)"

    .line 5
    invoke-static {v2, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Throwable;

    aput-object p0, v2, v5

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Lvj;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/job/JobScheduler;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lal;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 4
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "EXTRA_WORK_SPEC_ID"

    .line 5
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/job/JobScheduler;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v1

    sget-object v2, Lal;->j:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "getAllPendingJobs() is not reliable on this device."

    invoke-virtual {v1, v2, p1, v3}, Lvj;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    .line 6
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public varargs a([Ldm;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lal;->g:Lnk;

    .line 2
    iget-object v0, v0, Lnk;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, p1, v3

    .line 4
    invoke-virtual {v0}, Llg;->c()V

    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()Lem;

    move-result-object v5

    iget-object v6, v4, Ldm;->a:Ljava/lang/String;

    check-cast v5, Lfm;

    invoke-virtual {v5, v6}, Lfm;->h(Ljava/lang/String;)Ldm;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "Skipping scheduling "

    if-nez v5, :cond_0

    .line 6
    :try_start_1
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v5

    sget-object v7, Lal;->j:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Ldm;->a:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " because it\'s no longer in the DB"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Throwable;

    invoke-virtual {v5, v7, v4, v6}, Lvj;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {v0}, Llg;->j()V

    goto/16 :goto_3

    .line 8
    :cond_0
    iget-object v5, v5, Ldm;->b:Lak;

    sget-object v7, Lak;->e:Lak;

    if-eq v5, v7, :cond_1

    .line 9
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v5

    sget-object v7, Lal;->j:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Ldm;->a:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " because it is no longer enqueued"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Throwable;

    invoke-virtual {v5, v7, v4, v6}, Lvj;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {v0}, Llg;->j()V

    goto/16 :goto_3

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->l()Lyl;

    move-result-object v5

    iget-object v6, v4, Ldm;->a:Ljava/lang/String;

    .line 12
    check-cast v5, Lzl;

    invoke-virtual {v5, v6}, Lzl;->a(Ljava/lang/String;)Lxl;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 13
    iget v6, v5, Lxl;->b:I

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lal;->h:Lnm;

    iget-object v7, p0, Lal;->g:Lnk;

    .line 14
    iget-object v7, v7, Lnk;->b:Lpj;

    .line 15
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lal;->g:Lnk;

    .line 16
    iget-object v7, v7, Lnk;->b:Lpj;

    .line 17
    iget v7, v7, Lpj;->e:I

    .line 18
    invoke-virtual {v6, v2, v7}, Lnm;->c(II)I

    move-result v6

    :goto_1
    if-nez v5, :cond_3

    .line 19
    new-instance v5, Lxl;

    iget-object v7, v4, Ldm;->a:Ljava/lang/String;

    invoke-direct {v5, v7, v6}, Lxl;-><init>(Ljava/lang/String;I)V

    .line 20
    iget-object v7, p0, Lal;->g:Lnk;

    .line 21
    iget-object v7, v7, Lnk;->c:Landroidx/work/impl/WorkDatabase;

    .line 22
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->l()Lyl;

    move-result-object v7

    .line 23
    check-cast v7, Lzl;

    invoke-virtual {v7, v5}, Lzl;->b(Lxl;)V

    .line 24
    :cond_3
    invoke-virtual {p0, v4, v6}, Lal;->f(Ldm;I)V

    .line 25
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-ne v5, v7, :cond_6

    .line 26
    iget-object v5, p0, Lal;->e:Landroid/content/Context;

    iget-object v7, p0, Lal;->f:Landroid/app/job/JobScheduler;

    iget-object v8, v4, Ldm;->a:Ljava/lang/String;

    invoke-static {v5, v7, v8}, Lal;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 27
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_4

    .line 28
    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 29
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 30
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    .line 31
    :cond_5
    iget-object v5, p0, Lal;->h:Lnm;

    iget-object v6, p0, Lal;->g:Lnk;

    .line 32
    iget-object v6, v6, Lnk;->b:Lpj;

    .line 33
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lal;->g:Lnk;

    .line 34
    iget-object v6, v6, Lnk;->b:Lpj;

    .line 35
    iget v6, v6, Lpj;->e:I

    .line 36
    invoke-virtual {v5, v2, v6}, Lnm;->c(II)I

    move-result v5

    .line 37
    :goto_2
    invoke-virtual {p0, v4, v5}, Lal;->f(Ldm;I)V

    .line 38
    :cond_6
    invoke-virtual {v0}, Llg;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_3
    invoke-virtual {v0}, Llg;->g()V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Llg;->g()V

    .line 40
    throw p1

    :cond_7
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lal;->e:Landroid/content/Context;

    iget-object v1, p0, Lal;->f:Landroid/app/job/JobScheduler;

    invoke-static {v0, v1, p1}, Lal;->c(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    iget-object v2, p0, Lal;->f:Landroid/app/job/JobScheduler;

    invoke-static {v2, v1}, Lal;->b(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lal;->g:Lnk;

    .line 6
    iget-object v0, v0, Lnk;->c:Landroidx/work/impl/WorkDatabase;

    .line 7
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->l()Lyl;

    move-result-object v0

    .line 8
    check-cast v0, Lzl;

    invoke-virtual {v0, p1}, Lzl;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public f(Ldm;I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lal;->i:Lzk;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Ldm;->j:Lqj;

    .line 4
    iget-object v2, v1, Lqj;->a:Lwj;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x1a

    const/16 v9, 0x18

    if-eqz v3, :cond_5

    if-eq v3, v6, :cond_4

    if-eq v3, v4, :cond_3

    if-eq v3, v5, :cond_1

    const/4 v10, 0x4

    if-eq v3, v10, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_2

    goto :goto_2

    .line 7
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v9, :cond_2

    const/4 v10, 0x3

    goto :goto_2

    .line 8
    :cond_2
    :goto_0
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v3

    sget-object v10, Lzk;->b:Ljava/lang/String;

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v2, v11, v7

    const-string v2, "API version too low. Cannot convert network type value %s"

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v11, v7, [Ljava/lang/Throwable;

    invoke-virtual {v3, v10, v2, v11}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    const/4 v10, 0x2

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    .line 9
    :goto_2
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 10
    iget-object v3, p1, Ldm;->a:Ljava/lang/String;

    const-string v11, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v2, v11, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ldm;->d()Z

    move-result v3

    const-string v11, "EXTRA_IS_PERIODIC"

    invoke-virtual {v2, v11, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    iget-object v0, v0, Lzk;->a:Landroid/content/ComponentName;

    invoke-direct {v3, p2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 13
    invoke-virtual {v3, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 14
    iget-boolean v3, v1, Lqj;->b:Z

    .line 15
    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 16
    iget-boolean v3, v1, Lqj;->c:Z

    .line 17
    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 19
    iget-boolean v2, v1, Lqj;->c:Z

    if-nez v2, :cond_7

    .line 20
    iget-object v2, p1, Ldm;->l:Loj;

    sget-object v3, Loj;->f:Loj;

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    .line 21
    :goto_3
    iget-wide v10, p1, Ldm;->m:J

    invoke-virtual {v0, v10, v11, v2}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 22
    :cond_7
    invoke-virtual {p1}, Ldm;->a()J

    move-result-wide v2

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v2, v10

    const-wide/16 v10, 0x0

    .line 24
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 25
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_a

    .line 27
    iget-object v2, v1, Lqj;->h:Lrj;

    invoke-virtual {v2}, Lrj;->a()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_a

    .line 28
    iget-object v2, v1, Lqj;->h:Lrj;

    .line 29
    iget-object v2, v2, Lrj;->a:Ljava/util/Set;

    .line 30
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrj$a;

    .line 31
    iget-boolean v9, v3, Lrj$a;->b:Z

    .line 32
    new-instance v10, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 33
    iget-object v3, v3, Lrj$a;->a:Landroid/net/Uri;

    .line 34
    invoke-direct {v10, v3, v9}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    .line 35
    invoke-virtual {v0, v10}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    goto :goto_5

    .line 36
    :cond_9
    iget-wide v2, v1, Lqj;->f:J

    .line 37
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 38
    iget-wide v2, v1, Lqj;->g:J

    .line 39
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 40
    :cond_a
    invoke-virtual {v0, v7}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 41
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_b

    .line 42
    iget-boolean v2, v1, Lqj;->d:Z

    .line 43
    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 44
    iget-boolean v1, v1, Lqj;->e:Z

    .line 45
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 46
    :cond_b
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 47
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v1

    sget-object v2, Lal;->j:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v8, p1, Ldm;->a:Ljava/lang/String;

    aput-object v8, v3, v7

    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v6

    const-string p2, "Scheduling work ID %s Job ID %s"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v3, v7, [Ljava/lang/Throwable;

    .line 49
    invoke-virtual {v1, v2, p2, v3}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 50
    :try_start_0
    iget-object p2, p0, Lal;->f:Landroid/app/job/JobScheduler;

    invoke-virtual {p2, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p2

    .line 51
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v1, Lal;->j:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v7

    const-string p1, "Unable to schedule %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v6, [Ljava/lang/Throwable;

    aput-object p2, v2, v7

    invoke-virtual {v0, v1, p1, v2}, Lvj;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_6
    return-void

    :catch_0
    move-exception p1

    .line 52
    iget-object p2, p0, Lal;->e:Landroid/content/Context;

    iget-object v0, p0, Lal;->f:Landroid/app/job/JobScheduler;

    invoke-static {p2, v0}, Lal;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 53
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_7

    :cond_c
    const/4 p2, 0x0

    .line 54
    :goto_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v7

    iget-object p2, p0, Lal;->g:Lnk;

    .line 56
    iget-object p2, p2, Lnk;->c:Landroidx/work/impl/WorkDatabase;

    .line 57
    invoke-virtual {p2}, Landroidx/work/impl/WorkDatabase;->n()Lem;

    move-result-object p2

    check-cast p2, Lfm;

    invoke-virtual {p2}, Lfm;->d()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v6

    iget-object p2, p0, Lal;->g:Lnk;

    .line 58
    iget-object p2, p2, Lnk;->b:Lpj;

    .line 59
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_d

    .line 60
    iget p2, p2, Lpj;->f:I

    div-int/2addr p2, v4

    goto :goto_8

    .line 61
    :cond_d
    iget p2, p2, Lpj;->f:I

    .line 62
    :goto_8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    const-string p2, "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d."

    .line 63
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-static {}, Lvj;->c()Lvj;

    move-result-object v0

    sget-object v1, Lal;->j:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p2, v2}, Lvj;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
