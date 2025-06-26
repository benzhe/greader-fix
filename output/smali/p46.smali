.class public final synthetic Lp46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# instance fields
.field public final e:Lk56;

.field public final f:Lng6;


# direct methods
.method public constructor <init>(Lk56;Lng6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp46;->e:Lk56;

    iput-object p2, p0, Lp46;->f:Lng6;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lp46;->e:Lk56;

    iget-object v1, p0, Lp46;->f:Lng6;

    check-cast p1, Lm56;

    .line 1
    iget-object v0, v0, Lk56;->e:Lh26;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Fetching campaigns from service."

    .line 3
    invoke-static {v2}, Ln56;->u1(Ljava/lang/String;)V

    .line 4
    iget-object v2, v0, Lh26;->e:Lw56;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    iget-object v2, v2, Lw56;->a:Landroid/app/Application;

    invoke-static {v2}, Lg35;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lhy; {:try_start_0 .. :try_end_0} :catch_1
    .catch Liy; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 7
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_1
    iget-object v2, v0, Lh26;->a:Lhz5;

    .line 9
    invoke-interface {v2}, Lhz5;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln36;

    .line 10
    invoke-static {}, Lpg6;->H()Lpg6$b;

    move-result-object v3

    iget-object v4, v0, Lh26;->b:Lpe5;

    .line 11
    invoke-virtual {v4}, Lpe5;->a()V

    .line 12
    iget-object v4, v4, Lpe5;->c:Lve5;

    .line 13
    iget-object v4, v4, Lve5;->e:Ljava/lang/String;

    .line 14
    invoke-virtual {v3}, Lgj6$a;->o()V

    .line 15
    iget-object v5, v3, Lgj6$a;->f:Lgj6;

    check-cast v5, Lpg6;

    invoke-static {v5, v4}, Lpg6;->C(Lpg6;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Lng6;->D()Ljava/util/List;

    move-result-object v1

    .line 17
    invoke-virtual {v3}, Lgj6$a;->o()V

    .line 18
    iget-object v4, v3, Lgj6$a;->f:Lgj6;

    check-cast v4, Lpg6;

    invoke-static {v4, v1}, Lpg6;->D(Lpg6;Ljava/lang/Iterable;)V

    .line 19
    invoke-static {}, Lme5;->G()Lme5$a;

    move-result-object v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 22
    iget-object v5, v1, Lgj6$a;->f:Lgj6;

    check-cast v5, Lme5;

    invoke-static {v5, v4}, Lme5;->E(Lme5;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 25
    iget-object v5, v1, Lgj6$a;->f:Lgj6;

    check-cast v5, Lme5;

    invoke-static {v5, v4}, Lme5;->F(Lme5;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 28
    iget-object v5, v1, Lgj6$a;->f:Lgj6;

    check-cast v5, Lme5;

    invoke-static {v5, v4}, Lme5;->D(Lme5;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 29
    :try_start_1
    iget-object v6, v0, Lh26;->c:Landroid/app/Application;

    .line 30
    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v0, Lh26;->c:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 31
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v6

    const-string v7, "Error finding versionName : "

    .line 32
    invoke-static {v7}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FIAM.Headless"

    .line 33
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 34
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 35
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 36
    iget-object v7, v1, Lgj6$a;->f:Lgj6;

    check-cast v7, Lme5;

    invoke-static {v7, v6}, Lme5;->C(Lme5;Ljava/lang/String;)V

    .line 37
    :cond_0
    invoke-virtual {v1}, Lgj6$a;->l()Lgj6;

    move-result-object v1

    check-cast v1, Lme5;

    .line 38
    invoke-virtual {v3}, Lgj6$a;->o()V

    .line 39
    iget-object v6, v3, Lgj6$a;->f:Lgj6;

    check-cast v6, Lpg6;

    invoke-static {v6, v1}, Lpg6;->E(Lpg6;Lme5;)V

    .line 40
    invoke-static {}, Log6;->F()Log6$b;

    move-result-object v1

    iget-object v6, v0, Lh26;->b:Lpe5;

    .line 41
    invoke-virtual {v6}, Lpe5;->a()V

    .line 42
    iget-object v6, v6, Lpe5;->c:Lve5;

    .line 43
    iget-object v6, v6, Lve5;->b:Ljava/lang/String;

    .line 44
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 45
    iget-object v7, v1, Lgj6$a;->f:Lgj6;

    check-cast v7, Log6;

    invoke-static {v7, v6}, Log6;->C(Log6;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lm56;->a()Ljava/lang/String;

    move-result-object v6

    .line 47
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 48
    iget-object v7, v1, Lgj6$a;->f:Lgj6;

    check-cast v7, Log6;

    invoke-static {v7, v6}, Log6;->D(Log6;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lm56;->b()Lea6;

    move-result-object p1

    invoke-virtual {p1}, Lea6;->a()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {v1}, Lgj6$a;->o()V

    .line 51
    iget-object v6, v1, Lgj6$a;->f:Lgj6;

    check-cast v6, Log6;

    invoke-static {v6, p1}, Log6;->E(Log6;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Log6;

    .line 53
    invoke-virtual {v3}, Lgj6$a;->o()V

    .line 54
    iget-object v1, v3, Lgj6$a;->f:Lgj6;

    check-cast v1, Lpg6;

    invoke-static {v1, p1}, Lpg6;->F(Lpg6;Log6;)V

    .line 55
    invoke-virtual {v3}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lpg6;

    .line 56
    iget-object v1, v2, Ln36;->a:Lsg6$a;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    iget-object v3, v1, Lxa7;->a:Ly27;

    iget-object v6, v1, Lxa7;->b:Lx27;

    .line 58
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v7, Lm37;->h:Lm37$b;

    const-string v8, "units"

    .line 60
    invoke-static {v2, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    new-instance v8, Lm37;

    const-wide/16 v9, 0x7530

    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v9

    const/4 v2, 0x1

    invoke-direct {v8, v7, v9, v10, v2}, Lm37;-><init>(Lm37$c;JZ)V

    .line 62
    new-instance v7, Lx27;

    invoke-direct {v7, v6}, Lx27;-><init>(Lx27;)V

    .line 63
    iput-object v8, v7, Lx27;->a:Lm37;

    .line 64
    invoke-virtual {v1, v3, v7}, Lsg6$a;->a(Ly27;Lx27;)Lxa7;

    move-result-object v1

    .line 65
    check-cast v1, Lsg6$a;

    .line 66
    iget-object v3, v1, Lxa7;->a:Ly27;

    .line 67
    sget-object v6, Lsg6;->a:Lj47;

    if-nez v6, :cond_2

    .line 68
    const-class v7, Lsg6;

    monitor-enter v7

    .line 69
    :try_start_2
    sget-object v6, Lsg6;->a:Lj47;

    if-nez v6, :cond_1

    .line 70
    invoke-static {}, Lj47;->b()Lj47$b;

    move-result-object v6

    sget-object v8, Lj47$d;->e:Lj47$d;

    .line 71
    iput-object v8, v6, Lj47$b;->c:Lj47$d;

    const-string v8, "google.internal.firebase.inappmessaging.v1.sdkserving.InAppMessagingSdkServing"

    const-string v9, "FetchEligibleCampaigns"

    .line 72
    invoke-static {v8, v9}, Lj47;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 73
    iput-object v8, v6, Lj47$b;->d:Ljava/lang/String;

    .line 74
    iput-boolean v2, v6, Lj47$b;->e:Z

    .line 75
    invoke-static {}, Lpg6;->G()Lpg6;

    move-result-object v8

    .line 76
    sget-object v9, Lua7;->a:Lyi6;

    .line 77
    new-instance v9, Lua7$a;

    invoke-direct {v9, v8}, Lua7$a;-><init>(Lak6;)V

    .line 78
    iput-object v9, v6, Lj47$b;->a:Lj47$c;

    .line 79
    invoke-static {}, Lqg6;->D()Lqg6;

    move-result-object v8

    .line 80
    new-instance v9, Lua7$a;

    invoke-direct {v9, v8}, Lua7$a;-><init>(Lak6;)V

    .line 81
    iput-object v9, v6, Lj47$b;->b:Lj47$c;

    .line 82
    invoke-virtual {v6}, Lj47$b;->a()Lj47;

    move-result-object v6

    sput-object v6, Lsg6;->a:Lj47;

    .line 83
    :cond_1
    monitor-exit v7

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 84
    :cond_2
    :goto_3
    iget-object v1, v1, Lxa7;->b:Lx27;

    .line 85
    sget-object v7, Lya7;->a:Ljava/util/logging/Logger;

    .line 86
    new-instance v7, Lya7$c;

    invoke-direct {v7}, Lya7$c;-><init>()V

    .line 87
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v8, Lx27;

    invoke-direct {v8, v1}, Lx27;-><init>(Lx27;)V

    .line 89
    iput-object v7, v8, Lx27;->b:Ljava/util/concurrent/Executor;

    .line 90
    invoke-virtual {v3, v6, v8}, Ly27;->h(Lj47;Lx27;)La37;

    move-result-object v1

    .line 91
    :try_start_3
    invoke-static {v1, p1}, Lya7;->b(La37;Ljava/lang/Object;)Lie5;

    move-result-object p1

    .line 92
    :goto_4
    move-object v3, p1

    check-cast v3, Lge5;

    invoke-virtual {v3}, Lge5;->isDone()Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_3

    .line 93
    :try_start_4
    invoke-virtual {v7}, Lya7$c;->d()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v3

    :try_start_5
    const-string v4, "Thread interrupted"

    .line 94
    invoke-virtual {v1, v4, v3}, La37;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v4, 0x1

    goto :goto_4

    :catch_4
    move-exception p1

    goto :goto_5

    :catch_5
    move-exception p1

    goto :goto_6

    .line 95
    :cond_3
    :try_start_6
    invoke-static {p1}, Lya7;->c(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_4

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 97
    :cond_4
    check-cast p1, Lqg6;

    .line 98
    invoke-virtual {p1}, Lqg6;->E()J

    move-result-wide v1

    iget-object v3, v0, Lh26;->d:Lz86;

    invoke-interface {v3}, Lz86;->a()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    add-long/2addr v8, v3

    cmp-long v3, v1, v8

    if-ltz v3, :cond_5

    .line 99
    invoke-virtual {p1}, Lqg6;->E()J

    move-result-wide v1

    iget-object v3, v0, Lh26;->d:Lz86;

    invoke-interface {v3}, Lz86;->a()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x3

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    add-long/2addr v8, v3

    cmp-long v3, v1, v8

    if-lez v3, :cond_6

    .line 100
    :cond_5
    invoke-virtual {p1}, Lgj6;->A()Lgj6$a;

    move-result-object p1

    check-cast p1, Lqg6$b;

    iget-object v0, v0, Lh26;->d:Lz86;

    .line 101
    invoke-interface {v0}, Lz86;->a()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 102
    invoke-virtual {p1}, Lgj6$a;->o()V

    .line 103
    iget-object v0, p1, Lgj6$a;->f:Lgj6;

    check-cast v0, Lqg6;

    invoke-static {v0, v2, v3}, Lqg6;->C(Lqg6;J)V

    .line 104
    invoke-virtual {p1}, Lgj6$a;->l()Lgj6;

    move-result-object p1

    check-cast p1, Lqg6;

    :cond_6
    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_6
    move-exception p1

    move v2, v4

    .line 105
    :goto_5
    :try_start_7
    invoke-static {v1, p1}, Lya7;->a(La37;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v5

    :catch_7
    move-exception p1

    move v2, v4

    .line 106
    :goto_6
    :try_start_8
    invoke-static {v1, p1}, Lya7;->a(La37;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v5

    :catchall_2
    move-exception p1

    move v4, v2

    :goto_7
    if-eqz v4, :cond_7

    .line 107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_7
    throw p1
.end method
