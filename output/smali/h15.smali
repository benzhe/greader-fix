.class public final Lh15;
.super Lww4;
.source "SourceFile"


# instance fields
.field public final c:Lg15;

.field public d:Lhw4;

.field public volatile e:Ljava/lang/Boolean;

.field public final f:Lis4;

.field public final g:Ly15;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lis4;


# direct methods
.method public constructor <init>(Lrx4;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lww4;-><init>(Lrx4;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh15;->h:Ljava/util/List;

    new-instance v0, Ly15;

    .line 3
    iget-object v1, p1, Lrx4;->n:Lb20;

    .line 4
    invoke-direct {v0, v1}, Ly15;-><init>(Lb20;)V

    iput-object v0, p0, Lh15;->g:Ly15;

    .line 5
    new-instance v0, Lg15;

    invoke-direct {v0, p0}, Lg15;-><init>(Lh15;)V

    iput-object v0, p0, Lh15;->c:Lg15;

    new-instance v0, Lq05;

    .line 6
    invoke-direct {v0, p0, p1}, Lq05;-><init>(Lh15;Lny4;)V

    iput-object v0, p0, Lh15;->f:Lis4;

    new-instance v0, Ls05;

    .line 7
    invoke-direct {v0, p0, p1}, Ls05;-><init>(Lh15;Lny4;)V

    iput-object v0, p0, Lh15;->i:Lis4;

    return-void
.end method

.method public static q(Lh15;Landroid/content/ComponentName;)V
    .locals 2

    invoke-virtual {p0}, Lyv4;->d()V

    iget-object v0, p0, Lh15;->d:Lhw4;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lh15;->d:Lhw4;

    iget-object v0, p0, Lly4;->a:Lrx4;

    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v1, "Disconnected from device MeasurementService"

    .line 2
    invoke-virtual {v0, v1, p1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lyv4;->d()V

    invoke-virtual {p0}, Lh15;->i()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    .line 2
    invoke-virtual {p0}, Lww4;->f()V

    .line 3
    invoke-virtual {p0}, Lh15;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lh15;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 5
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 6
    invoke-virtual {v0}, Lcs4;->A()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 7
    iget-object v2, v0, Lrx4;->f:Lc35;

    .line 8
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    .line 10
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lly4;->a:Lrx4;

    .line 11
    iget-object v3, v3, Lrx4;->a:Landroid/content/Context;

    const-string v4, "com.google.android.gms.measurement.AppMeasurementService"

    .line 12
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000

    .line 13
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.measurement.START"

    .line 15
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lly4;->a:Lrx4;

    .line 16
    iget-object v4, v3, Lrx4;->a:Landroid/content/Context;

    .line 17
    iget-object v3, v3, Lrx4;->f:Lc35;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 18
    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lh15;->c:Lg15;

    .line 20
    iget-object v3, v2, Lg15;->c:Lh15;

    .line 21
    invoke-virtual {v3}, Lyv4;->d()V

    iget-object v3, v2, Lg15;->c:Lh15;

    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 22
    iget-object v3, v3, Lrx4;->a:Landroid/content/Context;

    .line 23
    invoke-static {}, Lx10;->b()Lx10;

    move-result-object v4

    monitor-enter v2

    :try_start_0
    iget-boolean v5, v2, Lg15;->a:Z

    if-eqz v5, :cond_1

    iget-object v0, v2, Lg15;->c:Lh15;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 24
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 25
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v1, "Connection attempt already in progress"

    .line 26
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    .line 27
    monitor-exit v2

    goto :goto_0

    :cond_1
    iget-object v5, v2, Lg15;->c:Lh15;

    iget-object v5, v5, Lly4;->a:Lrx4;

    .line 28
    invoke-virtual {v5}, Lrx4;->a()Lqw4;

    move-result-object v5

    .line 29
    iget-object v5, v5, Lqw4;->n:Low4;

    const-string v6, "Using local app measurement service"

    .line 30
    invoke-virtual {v5, v6}, Low4;->a(Ljava/lang/String;)V

    iput-boolean v1, v2, Lg15;->a:Z

    iget-object v1, v2, Lg15;->c:Lh15;

    .line 31
    iget-object v1, v1, Lh15;->c:Lg15;

    const/16 v5, 0x81

    .line 32
    invoke-virtual {v4, v3, v0, v1, v5}, Lx10;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 33
    monitor-exit v2

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 34
    :cond_2
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 35
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 36
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    .line 37
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lh15;->c:Lg15;

    .line 38
    iget-object v2, v0, Lg15;->c:Lh15;

    .line 39
    invoke-virtual {v2}, Lyv4;->d()V

    iget-object v2, v0, Lg15;->c:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 40
    iget-object v2, v2, Lrx4;->a:Landroid/content/Context;

    .line 41
    monitor-enter v0

    :try_start_1
    iget-boolean v3, v0, Lg15;->a:Z

    if-eqz v3, :cond_5

    iget-object v1, v0, Lg15;->c:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 42
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 43
    iget-object v1, v1, Lqw4;->n:Low4;

    const-string v2, "Connection attempt already in progress"

    .line 44
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    .line 45
    monitor-exit v0

    goto :goto_1

    :cond_5
    iget-object v3, v0, Lg15;->b:Lmw4;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lg15;->b:Lmw4;

    .line 46
    invoke-virtual {v3}, Li00;->isConnecting()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Lg15;->b:Lmw4;

    invoke-virtual {v3}, Li00;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v1, v0, Lg15;->c:Lh15;

    iget-object v1, v1, Lly4;->a:Lrx4;

    .line 47
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object v1

    .line 48
    iget-object v1, v1, Lqw4;->n:Low4;

    const-string v2, "Already awaiting connection attempt"

    .line 49
    invoke-virtual {v1, v2}, Low4;->a(Ljava/lang/String;)V

    .line 50
    monitor-exit v0

    goto :goto_1

    .line 51
    :cond_7
    new-instance v3, Lmw4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0, v0}, Lmw4;-><init>(Landroid/content/Context;Landroid/os/Looper;Li00$a;Li00$b;)V

    iput-object v3, v0, Lg15;->b:Lmw4;

    iget-object v2, v0, Lg15;->c:Lh15;

    iget-object v2, v2, Lly4;->a:Lrx4;

    .line 52
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 53
    iget-object v2, v2, Lqw4;->n:Low4;

    const-string v3, "Connecting to remote service"

    .line 54
    invoke-virtual {v2, v3}, Low4;->a(Ljava/lang/String;)V

    iput-boolean v1, v0, Lg15;->a:Z

    iget-object v1, v0, Lg15;->b:Lmw4;

    const-string v2, "null reference"

    .line 55
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    iget-object v1, v0, Lg15;->b:Lmw4;

    .line 57
    invoke-virtual {v1}, Li00;->checkAvailabilityAndConnect()V

    .line 58
    monitor-exit v0

    :goto_1
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public final k()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lh15;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final l()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    .line 2
    invoke-virtual {p0}, Lww4;->f()V

    iget-object v0, p0, Lh15;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 3
    invoke-virtual {p0}, Lyv4;->d()V

    .line 4
    invoke-virtual {p0}, Lww4;->f()V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 5
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lly4;->d()V

    invoke-virtual {v0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "use_service"

    .line 7
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 9
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_6

    .line 11
    :cond_1
    iget-object v4, p0, Lly4;->a:Lrx4;

    .line 12
    iget-object v5, v4, Lrx4;->f:Lc35;

    .line 13
    invoke-virtual {v4}, Lrx4;->b()Liw4;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Lww4;->f()V

    iget v4, v4, Liw4;->j:I

    if-ne v4, v1, :cond_2

    goto/16 :goto_3

    .line 15
    :cond_2
    iget-object v4, p0, Lly4;->a:Lrx4;

    .line 16
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 17
    iget-object v4, v4, Lqw4;->n:Low4;

    const-string v5, "Checking service availability"

    .line 18
    invoke-virtual {v4, v5}, Low4;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lly4;->a:Lrx4;

    .line 19
    invoke-virtual {v4}, Lrx4;->t()Lp25;

    move-result-object v4

    .line 20
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v5, Lgy;->b:Lgy;

    .line 22
    iget-object v4, v4, Lly4;->a:Lrx4;

    .line 23
    iget-object v4, v4, Lrx4;->a:Landroid/content/Context;

    const v6, 0xbdfcb8

    .line 24
    invoke-virtual {v5, v4, v6}, Lgy;->d(Landroid/content/Context;I)I

    move-result v4

    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_9

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    const/4 v0, 0x3

    if-eq v4, v0, :cond_5

    const/16 v0, 0x9

    if-eq v4, v0, :cond_4

    const/16 v0, 0x12

    if-eq v4, v0, :cond_3

    .line 25
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 26
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 27
    iget-object v0, v0, Lqw4;->i:Low4;

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Unexpected service status"

    invoke-virtual {v0, v4, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 29
    :cond_3
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 30
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 31
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v3, "Service updating"

    .line 32
    invoke-virtual {v0, v3}, Low4;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 33
    :cond_4
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 34
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 35
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v1, "Service invalid"

    .line 36
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_5
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 38
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 39
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v1, "Service disabled"

    .line 40
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    :cond_6
    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    .line 41
    :cond_7
    iget-object v4, p0, Lly4;->a:Lrx4;

    .line 42
    invoke-virtual {v4}, Lrx4;->a()Lqw4;

    move-result-object v4

    .line 43
    iget-object v4, v4, Lqw4;->m:Low4;

    const-string v5, "Service container out of date"

    .line 44
    invoke-virtual {v4, v5}, Low4;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lly4;->a:Lrx4;

    .line 45
    invoke-virtual {v4}, Lrx4;->t()Lp25;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Lp25;->M()I

    move-result v4

    const/16 v5, 0x4423

    if-ge v4, v5, :cond_8

    goto :goto_4

    :cond_8
    if-nez v0, :cond_6

    :goto_2
    move v3, v1

    const/4 v1, 0x0

    goto :goto_4

    .line 47
    :cond_9
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 48
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 49
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v4, "Service missing"

    .line 50
    invoke-virtual {v0, v4}, Low4;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 51
    :cond_a
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 52
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 53
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v3, "Service available"

    .line 54
    invoke-virtual {v0, v3}, Low4;->a(Ljava/lang/String;)V

    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-nez v3, :cond_b

    .line 55
    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 56
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 57
    invoke-virtual {v0}, Lcs4;->A()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 58
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 59
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v1, "No way to upload. Consider using the full version of Analytics"

    .line 60
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    if-eqz v1, :cond_c

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 61
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lly4;->d()V

    invoke-virtual {v0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_c
    :goto_5
    move v1, v3

    .line 66
    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lh15;->e:Ljava/lang/Boolean;

    :cond_d
    iget-object v0, p0, Lh15;->e:Ljava/lang/Boolean;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final n()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    .line 2
    invoke-virtual {p0}, Lww4;->f()V

    iget-object v0, p0, Lh15;->c:Lg15;

    .line 3
    iget-object v1, v0, Lg15;->b:Lmw4;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lg15;->b:Lmw4;

    .line 4
    invoke-virtual {v1}, Li00;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lg15;->b:Lmw4;

    invoke-virtual {v1}, Li00;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, v0, Lg15;->b:Lmw4;

    .line 5
    invoke-virtual {v1}, Li00;->disconnect()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lg15;->b:Lmw4;

    .line 6
    :try_start_0
    invoke-static {}, Lx10;->b()Lx10;

    move-result-object v0

    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 7
    iget-object v2, v2, Lrx4;->a:Landroid/content/Context;

    .line 8
    iget-object v3, p0, Lh15;->c:Lg15;

    .line 9
    invoke-virtual {v0, v2, v3}, Lx10;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v1, p0, Lh15;->d:Lhw4;

    return-void
.end method

.method public final p()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    .line 2
    invoke-virtual {p0}, Lww4;->f()V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 3
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 4
    sget-object v1, Lew4;->G0:Ldw4;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lh15;->l()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v0}, Lrx4;->t()Lp25;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lp25;->M()I

    move-result v0

    sget-object v4, Lew4;->H0:Ldw4;

    invoke-virtual {v4, v2}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    return v3
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    iget-object v0, v0, Lrx4;->f:Lc35;

    const/4 v0, 0x1

    return v0
.end method

.method public final s()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    iget-object v0, p0, Lh15;->g:Ly15;

    .line 2
    iget-object v1, v0, Ly15;->a:Lb20;

    .line 3
    invoke-interface {v1}, Lb20;->b()J

    move-result-wide v1

    iput-wide v1, v0, Ly15;->b:J

    .line 4
    iget-object v0, p0, Lh15;->f:Lis4;

    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 5
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 6
    sget-object v1, Lew4;->J:Ldw4;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Lis4;->b(J)V

    return-void
.end method

.method public final t(Ljava/lang/Runnable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    .line 2
    invoke-virtual {p0}, Lh15;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lh15;->h:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 5
    iget-object v2, v1, Lrx4;->g:Lcs4;

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 6
    invoke-virtual {v1}, Lrx4;->a()Lqw4;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lqw4;->f:Low4;

    const-string v0, "Discarding data. Max runnable queue size reached"

    .line 8
    invoke-virtual {p1, v0}, Low4;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lh15;->h:Ljava/util/List;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lh15;->i:Lis4;

    const-wide/32 v0, 0xea60

    .line 10
    invoke-virtual {p1, v0, v1}, Lis4;->b(J)V

    .line 11
    invoke-virtual {p0}, Lh15;->i()V

    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lqw4;->n:Low4;

    .line 4
    iget-object v1, p0, Lh15;->h:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Processing queued up service tasks"

    invoke-virtual {v0, v2, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lh15;->h:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 7
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lly4;->a:Lrx4;

    .line 9
    invoke-virtual {v2}, Lrx4;->a()Lqw4;

    move-result-object v2

    .line 10
    iget-object v2, v2, Lqw4;->f:Low4;

    const-string v3, "Task exception while flushing queue"

    .line 11
    invoke-virtual {v2, v3, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lh15;->h:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lh15;->i:Lis4;

    .line 14
    invoke-virtual {v0}, Lis4;->c()V

    return-void
.end method

.method public final v(Z)Lcom/google/android/gms/measurement/internal/zzp;
    .locals 36

    move-object/from16 v1, p0

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 1
    iget-object v2, v0, Lrx4;->f:Lc35;

    .line 2
    invoke-virtual {v0}, Lrx4;->b()Liw4;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object v6, v1, Lly4;->a:Lrx4;

    .line 3
    invoke-virtual {v6}, Lrx4;->a()Lqw4;

    move-result-object v6

    iget-object v7, v6, Lly4;->a:Lrx4;

    .line 4
    invoke-virtual {v7}, Lrx4;->q()Lex4;

    move-result-object v7

    .line 5
    iget-object v7, v7, Lex4;->d:Lcx4;

    if-nez v7, :cond_0

    goto/16 :goto_4

    .line 6
    :cond_0
    iget-object v6, v6, Lly4;->a:Lrx4;

    .line 7
    invoke-virtual {v6}, Lrx4;->q()Lex4;

    move-result-object v6

    .line 8
    iget-object v6, v6, Lex4;->d:Lcx4;

    .line 9
    iget-object v7, v6, Lcx4;->e:Lex4;

    .line 10
    invoke-virtual {v7}, Lly4;->d()V

    iget-object v7, v6, Lcx4;->e:Lex4;

    .line 11
    invoke-virtual {v7}, Lly4;->d()V

    .line 12
    iget-object v7, v6, Lcx4;->e:Lex4;

    .line 13
    invoke-virtual {v7}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v7

    iget-object v8, v6, Lcx4;->a:Ljava/lang/String;

    invoke-interface {v7, v8, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-nez v9, :cond_1

    .line 14
    invoke-virtual {v6}, Lcx4;->a()V

    move-wide v7, v3

    goto :goto_0

    .line 15
    :cond_1
    iget-object v9, v6, Lcx4;->e:Lex4;

    iget-object v9, v9, Lly4;->a:Lrx4;

    .line 16
    iget-object v9, v9, Lrx4;->n:Lb20;

    .line 17
    invoke-interface {v9}, Lb20;->a()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 18
    :goto_0
    iget-wide v9, v6, Lcx4;->d:J

    cmp-long v11, v7, v9

    if-gez v11, :cond_2

    goto :goto_1

    :cond_2
    add-long/2addr v9, v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_3

    .line 19
    invoke-virtual {v6}, Lcx4;->a()V

    :goto_1
    move-object v6, v0

    goto :goto_3

    :cond_3
    iget-object v7, v6, Lcx4;->e:Lex4;

    .line 20
    invoke-virtual {v7}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v7

    iget-object v8, v6, Lcx4;->c:Ljava/lang/String;

    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcx4;->e:Lex4;

    .line 21
    invoke-virtual {v8}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v8

    iget-object v9, v6, Lcx4;->b:Ljava/lang/String;

    invoke-interface {v8, v9, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 22
    invoke-virtual {v6}, Lcx4;->a()V

    if-eqz v7, :cond_5

    cmp-long v6, v8, v3

    if-gtz v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance v6, Landroid/util/Pair;

    .line 23
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 24
    :cond_5
    :goto_2
    sget-object v6, Lex4;->C:Landroid/util/Pair;

    :goto_3
    if-eqz v6, :cond_7

    .line 25
    sget-object v7, Lex4;->C:Landroid/util/Pair;

    if-ne v6, v7, :cond_6

    goto :goto_4

    .line 26
    :cond_6
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/2addr v7, v5

    add-int/2addr v7, v8

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, ":"

    invoke-static {v9, v0, v7, v6}, Ljo;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_4
    move-object/from16 v17, v0

    .line 27
    invoke-virtual {v2}, Lyv4;->d()V

    .line 28
    new-instance v35, Lcom/google/android/gms/measurement/internal/zzp;

    .line 29
    invoke-virtual {v2}, Liw4;->k()Ljava/lang/String;

    move-result-object v7

    .line 30
    invoke-virtual {v2}, Liw4;->l()Ljava/lang/String;

    move-result-object v8

    .line 31
    invoke-virtual {v2}, Lww4;->f()V

    iget-object v9, v2, Liw4;->d:Ljava/lang/String;

    .line 32
    invoke-virtual {v2}, Lww4;->f()V

    iget v0, v2, Liw4;->e:I

    int-to-long v10, v0

    .line 33
    invoke-virtual {v2}, Lww4;->f()V

    iget-object v0, v2, Liw4;->f:Ljava/lang/String;

    const-string v6, "null reference"

    .line 34
    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    iget-object v12, v2, Liw4;->f:Ljava/lang/String;

    iget-object v0, v2, Lly4;->a:Lrx4;

    .line 36
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 37
    invoke-virtual {v0}, Lcs4;->l()J

    .line 38
    invoke-virtual {v2}, Lww4;->f()V

    .line 39
    invoke-virtual {v2}, Lyv4;->d()V

    iget-wide v13, v2, Liw4;->g:J

    const/4 v0, 0x0

    cmp-long v15, v13, v3

    if-nez v15, :cond_b

    iget-object v3, v2, Lly4;->a:Lrx4;

    .line 40
    invoke-virtual {v3}, Lrx4;->t()Lp25;

    move-result-object v3

    iget-object v4, v2, Lly4;->a:Lrx4;

    .line 41
    iget-object v4, v4, Lrx4;->a:Landroid/content/Context;

    .line 42
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lly4;->d()V

    .line 43
    invoke-static {v13}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 45
    invoke-static {}, Lp25;->B()Ljava/security/MessageDigest;

    move-result-object v15

    const-wide/16 v18, -0x1

    if-nez v15, :cond_8

    iget-object v0, v3, Lly4;->a:Lrx4;

    .line 46
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 47
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v3, "Could not get MD5 instance"

    .line 48
    invoke-virtual {v0, v3}, Low4;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    if-eqz v14, :cond_a

    .line 49
    :try_start_0
    invoke-virtual {v3, v4, v13}, Lp25;->K(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 50
    invoke-static {v4}, Li20;->a(Landroid/content/Context;)Lh20;

    move-result-object v4

    iget-object v13, v3, Lly4;->a:Lrx4;

    .line 51
    iget-object v13, v13, Lrx4;->a:Landroid/content/Context;

    .line 52
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x40

    invoke-virtual {v4, v13, v14}, Lh20;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 53
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_9

    array-length v13, v4

    if-lez v13, :cond_9

    .line 54
    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 55
    invoke-static {v0}, Lp25;->C([B)J

    move-result-wide v18

    goto :goto_5

    :cond_9
    iget-object v0, v3, Lly4;->a:Lrx4;

    .line 56
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 57
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v4, "Could not get signatures"

    .line 58
    invoke-virtual {v0, v4}, Low4;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 59
    iget-object v3, v3, Lly4;->a:Lrx4;

    .line 60
    invoke-virtual {v3}, Lrx4;->a()Lqw4;

    move-result-object v3

    .line 61
    iget-object v3, v3, Lqw4;->f:Low4;

    const-string v4, "Package name not found"

    .line 62
    invoke-virtual {v3, v4, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    const-wide/16 v18, 0x0

    :goto_5
    move-wide/from16 v3, v18

    .line 63
    iput-wide v3, v2, Liw4;->g:J

    move-wide v15, v3

    goto :goto_6

    :cond_b
    move-wide v15, v13

    :goto_6
    iget-object v0, v2, Lly4;->a:Lrx4;

    .line 64
    invoke-virtual {v0}, Lrx4;->g()Z

    move-result v18

    iget-object v0, v2, Lly4;->a:Lrx4;

    .line 65
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v0

    .line 66
    iget-boolean v0, v0, Lex4;->u:Z

    xor-int/lit8 v19, v0, 0x1

    .line 67
    invoke-virtual {v2}, Lyv4;->d()V

    iget-object v0, v2, Lly4;->a:Lrx4;

    .line 68
    invoke-virtual {v0}, Lrx4;->g()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_7

    .line 69
    :cond_c
    sget-object v0, Lmf4;->f:Lmf4;

    .line 70
    invoke-virtual {v0}, Lmf4;->b()Lnf4;

    move-result-object v0

    invoke-interface {v0}, Lnf4;->a()Z

    .line 71
    iget-object v0, v2, Lly4;->a:Lrx4;

    .line 72
    iget-object v0, v0, Lrx4;->g:Lcs4;

    .line 73
    sget-object v3, Lew4;->k0:Ldw4;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v2, Lly4;->a:Lrx4;

    .line 74
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 75
    iget-object v0, v0, Lqw4;->n:Low4;

    const-string v3, "Disabled IID for tests."

    .line 76
    invoke-virtual {v0, v3}, Low4;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    :try_start_1
    iget-object v0, v2, Lly4;->a:Lrx4;

    .line 77
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v3, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    :try_start_2
    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v4, v3, v13

    const-string v4, "getInstance"

    .line 80
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, v2, Lly4;->a:Lrx4;

    .line 81
    iget-object v5, v5, Lrx4;->a:Landroid/content/Context;

    const/4 v13, 0x0

    aput-object v5, v4, v13

    const/4 v5, 0x0

    .line 82
    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v3, :cond_f

    goto :goto_7

    :cond_f
    :try_start_3
    const-string v4, "getFirebaseInstanceId"

    new-array v5, v13, [Ljava/lang/Class;

    .line 83
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v13, [Ljava/lang/Object;

    .line 84
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    .line 85
    :catch_1
    iget-object v0, v2, Lly4;->a:Lrx4;

    .line 86
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 87
    iget-object v0, v0, Lqw4;->k:Low4;

    const-string v3, "Failed to retrieve Firebase Instance Id"

    .line 88
    invoke-virtual {v0, v3}, Low4;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 89
    :catch_2
    iget-object v0, v2, Lly4;->a:Lrx4;

    .line 90
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 91
    iget-object v0, v0, Lqw4;->j:Low4;

    const-string v3, "Failed to obtain Firebase Analytics instance"

    .line 92
    invoke-virtual {v0, v3}, Low4;->a(Ljava/lang/String;)V

    :catch_3
    :goto_7
    const/4 v0, 0x0

    :goto_8
    move-object/from16 v20, v0

    .line 93
    iget-object v0, v2, Lly4;->a:Lrx4;

    .line 94
    invoke-virtual {v0}, Lrx4;->q()Lex4;

    move-result-object v3

    .line 95
    iget-object v3, v3, Lex4;->j:Lbx4;

    invoke-virtual {v3}, Lbx4;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v13, 0x0

    cmp-long v21, v4, v13

    if-nez v21, :cond_10

    iget-wide v3, v0, Lrx4;->H:J

    goto :goto_9

    .line 97
    :cond_10
    iget-wide v4, v0, Lrx4;->H:J

    .line 98
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_9
    move-wide/from16 v23, v3

    .line 99
    invoke-virtual {v2}, Lww4;->f()V

    iget v0, v2, Liw4;->j:I

    iget-object v3, v2, Lly4;->a:Lrx4;

    .line 100
    iget-object v3, v3, Lrx4;->g:Lcs4;

    .line 101
    invoke-virtual {v3}, Lcs4;->w()Z

    move-result v26

    iget-object v3, v2, Lly4;->a:Lrx4;

    .line 102
    invoke-virtual {v3}, Lrx4;->q()Lex4;

    move-result-object v3

    .line 103
    invoke-virtual {v3}, Lly4;->d()V

    invoke-virtual {v3}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "deferred_analytics_collection"

    const/4 v5, 0x0

    .line 104
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 105
    invoke-virtual {v2}, Lww4;->f()V

    iget-object v3, v2, Liw4;->l:Ljava/lang/String;

    iget-object v4, v2, Lly4;->a:Lrx4;

    .line 106
    iget-object v4, v4, Lrx4;->g:Lcs4;

    const-string v5, "google_analytics_default_allow_ad_personalization_signals"

    .line 107
    invoke-virtual {v4, v5}, Lcs4;->u(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_11

    const/4 v4, 0x0

    goto :goto_a

    .line 108
    :cond_11
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_a
    move-object/from16 v29, v4

    .line 109
    iget-wide v4, v2, Liw4;->h:J

    iget-object v13, v2, Liw4;->i:Ljava/util/List;

    .line 110
    invoke-static {}, Lae4;->b()Z

    iget-object v14, v2, Lly4;->a:Lrx4;

    .line 111
    iget-object v14, v14, Lrx4;->g:Lcs4;

    .line 112
    sget-object v1, Lew4;->i0:Ldw4;

    move-object/from16 v21, v13

    const/4 v13, 0x0

    invoke-virtual {v14, v13, v1}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 113
    invoke-virtual {v2}, Lww4;->f()V

    iget-object v1, v2, Liw4;->m:Ljava/lang/String;

    .line 114
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    iget-object v1, v2, Liw4;->m:Ljava/lang/String;

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :goto_b
    move-object/from16 v33, v1

    .line 116
    invoke-static {}, Lpc4;->b()Z

    iget-object v1, v2, Lly4;->a:Lrx4;

    .line 117
    iget-object v1, v1, Lrx4;->g:Lcs4;

    .line 118
    sget-object v6, Lew4;->E0:Ldw4;

    const/4 v13, 0x0

    .line 119
    invoke-virtual {v1, v13, v6}, Lcs4;->s(Ljava/lang/String;Ldw4;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v2, Lly4;->a:Lrx4;

    .line 120
    invoke-virtual {v1}, Lrx4;->q()Lex4;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lex4;->s()Lds4;

    move-result-object v1

    invoke-virtual {v1}, Lds4;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_13
    const-string v1, ""

    :goto_c
    move-object/from16 v34, v1

    const-wide/32 v13, 0x9088

    move-object/from16 v1, v21

    const-wide/16 v21, 0x0

    move-object/from16 v6, v35

    move/from16 v25, v0

    move-object/from16 v28, v3

    move-wide/from16 v30, v4

    move-object/from16 v32, v1

    .line 122
    invoke-direct/range {v6 .. v34}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v35
.end method

.method public final w()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    .line 2
    invoke-virtual {p0}, Lww4;->f()V

    iget-object v0, p0, Lh15;->d:Lhw4;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x(Lhw4;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Lyv4;->d()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lww4;->f()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lh15;->r()Z

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 4
    iget-object v0, v0, Lrx4;->g:Lcs4;

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/16 v0, 0x64

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x3e9

    if-ge v7, v8, :cond_1b

    if-ne v0, v5, :cond_1b

    .line 5
    new-instance v8, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 7
    invoke-virtual {v0}, Lrx4;->v()Lkw4;

    move-result-object v9

    const-string v10, "rowid"

    const-string v11, "Error reading entries from local database"

    .line 8
    invoke-virtual {v9}, Lyv4;->d()V

    iget-boolean v0, v9, Lkw4;->d:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v0, v9, Lly4;->a:Lrx4;

    .line 11
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    const-string v14, "google_app_measurement_local.db"

    .line 12
    invoke-virtual {v0, v14}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v14, 0x5

    const/4 v12, 0x5

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_13

    const/4 v14, 0x1

    .line 13
    :try_start_0
    invoke-virtual {v9}, Lkw4;->l()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_16
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-nez v5, :cond_1

    :try_start_1
    iput-boolean v14, v9, Lkw4;->d:Z

    :goto_2
    move/from16 v17, v7

    goto/16 :goto_1a

    .line 14
    :cond_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "3"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    const-string v17, "messages"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v18

    const-string v19, "type=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, "rowid desc"

    const-string v24, "1"

    move-object/from16 v16, v5

    .line 15
    invoke-virtual/range {v16 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 16
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const-wide/16 v25, -0x1

    if-eqz v0, :cond_2

    .line 17
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 18
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    move-wide/from16 v16, v25

    :goto_3
    cmp-long v0, v16, v25

    if-eqz v0, :cond_3

    const-string v0, "rowid<?"

    const/4 v14, 0x1

    new-array v6, v14, [Ljava/lang/String;

    .line 19
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v6, v16

    move-object/from16 v19, v0

    move-object/from16 v20, v6

    goto :goto_4

    :cond_3
    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_4
    const-string v0, "type"

    const-string v6, "entry"

    filled-new-array {v10, v0, v6}, [Ljava/lang/String;

    move-result-object v18

    const-string v17, "messages"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v23, "rowid asc"

    const/16 v6, 0x64

    .line 20
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v16, v5

    .line 21
    invoke-virtual/range {v16 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_11
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 22
    :goto_5
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v14, 0x0

    .line 23
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    const/4 v14, 0x1

    .line 24
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    const/4 v14, 0x2

    move-object/from16 v16, v10

    .line 25
    :try_start_6
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    if-nez v0, :cond_4

    .line 26
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 27
    :try_start_7
    array-length v0, v10
    :try_end_7
    .catch Lz00; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move/from16 v17, v7

    const/4 v7, 0x0

    :try_start_8
    invoke-virtual {v14, v10, v7, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 28
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 29
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzas;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzas;
    :try_end_8
    .catch Lz00; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 30
    :try_start_9
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_8

    .line 31
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move/from16 v17, v7

    goto :goto_6

    :catch_0
    move/from16 v17, v7

    .line 32
    :catch_1
    :try_start_a
    iget-object v0, v9, Lly4;->a:Lrx4;

    .line 33
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 34
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v7, "Failed to load event from local database"

    .line 35
    invoke-virtual {v0, v7}, Low4;->a(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 36
    :try_start_b
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_b

    :goto_6
    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    .line 37
    throw v0

    :cond_4
    move/from16 v17, v7

    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    .line 38
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b .. :try_end_b} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_b .. :try_end_b} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 39
    :try_start_c
    array-length v0, v10

    const/4 v14, 0x0

    invoke-virtual {v7, v10, v14, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 40
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzkr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzkr;
    :try_end_c
    .catch Lz00; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 42
    :try_start_d
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d .. :try_end_d} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_d .. :try_end_d} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    .line 43
    :catch_2
    :try_start_e
    iget-object v0, v9, Lly4;->a:Lrx4;

    .line 44
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 45
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v10, "Failed to load user property from local database"

    .line 46
    invoke-virtual {v0, v10}, Low4;->a(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 47
    :try_start_f
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_8

    .line 48
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 49
    :goto_8
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 50
    throw v0

    :cond_5
    if-ne v0, v14, :cond_6

    .line 51
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_f .. :try_end_f} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_f .. :try_end_f} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 52
    :try_start_10
    array-length v0, v10

    const/4 v14, 0x0

    invoke-virtual {v7, v10, v14, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 53
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaa;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 55
    invoke-interface {v0, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzaa;
    :try_end_10
    .catch Lz00; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 56
    :try_start_11
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_a

    .line 57
    :catch_3
    :try_start_12
    iget-object v0, v9, Lly4;->a:Lrx4;

    .line 58
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 59
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v10, "Failed to load conditional user property from local database"

    .line 60
    invoke-virtual {v0, v10}, Low4;->a(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 61
    :try_start_13
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_8

    .line 62
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 63
    :goto_a
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 64
    throw v0

    :cond_6
    const/4 v7, 0x3

    if-ne v0, v7, :cond_7

    .line 65
    iget-object v0, v9, Lly4;->a:Lrx4;

    .line 66
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 67
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v7, "Skipping app launch break"

    .line 68
    invoke-virtual {v0, v7}, Low4;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_7
    iget-object v0, v9, Lly4;->a:Lrx4;

    .line 69
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 70
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v7, "Unknown record type in local database"

    .line 71
    invoke-virtual {v0, v7}, Low4;->a(Ljava/lang/String;)V

    :cond_8
    :goto_b
    move-object/from16 v10, v16

    move/from16 v7, v17

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move/from16 v17, v7

    goto :goto_c

    :catch_5
    move/from16 v17, v7

    goto :goto_e

    :catch_6
    move-exception v0

    move/from16 v17, v7

    goto :goto_d

    :cond_9
    move/from16 v17, v7

    move-object/from16 v16, v10

    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    .line 72
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    const/4 v10, 0x0

    :try_start_14
    aput-object v7, v0, v10

    const-string v7, "messages"

    const-string v14, "rowid <= ?"

    .line 73
    invoke-virtual {v5, v7, v14, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 74
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_a

    iget-object v0, v9, Lly4;->a:Lrx4;

    .line 75
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 76
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v7, "Fewer entries removed from local database than expected"

    .line 77
    invoke-virtual {v0, v7}, Low4;->a(Ljava/lang/String;)V

    .line 78
    :cond_a
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 79
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_14 .. :try_end_14} :catch_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 81
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_1b

    :catch_7
    move-exception v0

    goto/16 :goto_15

    :catch_8
    move-exception v0

    goto :goto_12

    :catch_9
    move-exception v0

    :goto_c
    const/4 v10, 0x0

    goto/16 :goto_15

    :catch_a
    move-exception v0

    :goto_d
    const/4 v10, 0x0

    goto :goto_12

    :catch_b
    move-exception v0

    move/from16 v17, v7

    move-object/from16 v16, v10

    goto :goto_c

    :catch_c
    move/from16 v17, v7

    move-object/from16 v16, v10

    :catch_d
    :goto_e
    const/4 v10, 0x0

    goto :goto_10

    :catch_e
    move-exception v0

    move/from16 v17, v7

    move-object/from16 v16, v10

    goto :goto_d

    :catchall_4
    move-exception v0

    move/from16 v17, v7

    move-object/from16 v16, v10

    const/4 v10, 0x0

    goto :goto_f

    :catchall_5
    move-exception v0

    move/from16 v17, v7

    move-object/from16 v16, v10

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_f
    if-eqz v14, :cond_b

    .line 82
    :try_start_15
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_b
    throw v0
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_15 .. :try_end_15} :catch_10
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_15 .. :try_end_15} :catch_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_f
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :catch_f
    move-exception v0

    goto :goto_14

    :catch_10
    move-exception v0

    goto :goto_11

    :catchall_6
    move-exception v0

    goto :goto_13

    :catch_11
    move-exception v0

    move/from16 v17, v7

    move-object/from16 v16, v10

    const/4 v10, 0x0

    goto :goto_14

    :catch_12
    move/from16 v17, v7

    move-object/from16 v16, v10

    const/4 v10, 0x0

    :catch_13
    const/4 v6, 0x0

    :catch_14
    :goto_10
    move-object v7, v11

    goto :goto_16

    :catch_15
    move-exception v0

    move/from16 v17, v7

    move-object/from16 v16, v10

    const/4 v10, 0x0

    :goto_11
    const/4 v6, 0x0

    :goto_12
    move-object v7, v11

    goto :goto_17

    :catchall_7
    move-exception v0

    const/4 v5, 0x0

    :goto_13
    const/4 v12, 0x0

    goto/16 :goto_19

    :catch_16
    move-exception v0

    move/from16 v17, v7

    move-object/from16 v16, v10

    const/4 v10, 0x0

    const/4 v5, 0x0

    :goto_14
    const/4 v6, 0x0

    :goto_15
    if-eqz v5, :cond_c

    .line 84
    :try_start_16
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 85
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_c
    iget-object v7, v9, Lly4;->a:Lrx4;

    .line 86
    invoke-virtual {v7}, Lrx4;->a()Lqw4;

    move-result-object v7

    .line 87
    iget-object v7, v7, Lqw4;->f:Low4;

    .line 88
    invoke-virtual {v7, v11, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x1

    iput-boolean v7, v9, Lkw4;->d:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    if-eqz v6, :cond_d

    .line 89
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d
    move-object v7, v11

    if-eqz v5, :cond_10

    goto :goto_18

    :catch_17
    move/from16 v17, v7

    move-object/from16 v16, v10

    const/4 v10, 0x0

    move-object v7, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_16
    int-to-long v10, v12

    .line 90
    :try_start_17
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    add-int/lit8 v12, v12, 0x14

    if-eqz v6, :cond_e

    .line 91
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v5, :cond_10

    goto :goto_18

    :catch_18
    move-exception v0

    move/from16 v17, v7

    move-object/from16 v16, v10

    move-object v7, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 92
    :goto_17
    :try_start_18
    iget-object v10, v9, Lly4;->a:Lrx4;

    .line 93
    invoke-virtual {v10}, Lrx4;->a()Lqw4;

    move-result-object v10

    .line 94
    iget-object v10, v10, Lqw4;->f:Low4;

    .line 95
    invoke-virtual {v10, v7, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v10, 0x1

    iput-boolean v10, v9, Lkw4;->d:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    if-eqz v6, :cond_f

    .line 96
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v5, :cond_10

    .line 97
    :goto_18
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_10
    add-int/lit8 v15, v15, 0x1

    move-object v11, v7

    move-object/from16 v10, v16

    move/from16 v7, v17

    const/16 v5, 0x64

    const/4 v6, 0x0

    const/4 v14, 0x5

    goto/16 :goto_1

    :catchall_8
    move-exception v0

    move-object v12, v6

    :goto_19
    if-eqz v12, :cond_11

    .line 98
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v5, :cond_12

    .line 99
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 100
    :cond_12
    throw v0

    :cond_13
    move/from16 v17, v7

    .line 101
    iget-object v0, v9, Lly4;->a:Lrx4;

    .line 102
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 103
    iget-object v0, v0, Lqw4;->i:Low4;

    const-string v5, "Failed to read events from database in reasonable time"

    .line 104
    invoke-virtual {v0, v5}, Low4;->a(Ljava/lang/String;)V

    :goto_1a
    const/4 v12, 0x0

    goto :goto_1c

    :cond_14
    move/from16 v17, v7

    :goto_1b
    move-object v12, v13

    :goto_1c
    if-eqz v12, :cond_15

    .line 105
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    move v5, v0

    goto :goto_1d

    :cond_15
    const/4 v5, 0x0

    :goto_1d
    const/16 v6, 0x64

    if-eqz v3, :cond_16

    if-ge v5, v6, :cond_16

    .line 107
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_1e
    if-ge v9, v7, :cond_1a

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 108
    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    .line 109
    instance-of v10, v0, Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v10, :cond_17

    .line 110
    :try_start_19
    check-cast v0, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-interface {v2, v0, v4}, Lhw4;->I6(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_1f

    :catch_19
    move-exception v0

    .line 111
    iget-object v10, v1, Lly4;->a:Lrx4;

    .line 112
    invoke-virtual {v10}, Lrx4;->a()Lqw4;

    move-result-object v10

    .line 113
    iget-object v10, v10, Lqw4;->f:Low4;

    const-string v11, "Failed to send event to the service"

    .line 114
    invoke-virtual {v10, v11, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1f

    .line 115
    :cond_17
    instance-of v10, v0, Lcom/google/android/gms/measurement/internal/zzkr;

    if-eqz v10, :cond_18

    .line 116
    :try_start_1a
    check-cast v0, Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-interface {v2, v0, v4}, Lhw4;->w4(Lcom/google/android/gms/measurement/internal/zzkr;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception v0

    .line 117
    iget-object v10, v1, Lly4;->a:Lrx4;

    .line 118
    invoke-virtual {v10}, Lrx4;->a()Lqw4;

    move-result-object v10

    .line 119
    iget-object v10, v10, Lqw4;->f:Low4;

    const-string v11, "Failed to send user property to the service"

    .line 120
    invoke-virtual {v10, v11, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1f

    .line 121
    :cond_18
    instance-of v10, v0, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v10, :cond_19

    .line 122
    :try_start_1b
    check-cast v0, Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-interface {v2, v0, v4}, Lhw4;->x2(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v0

    .line 123
    iget-object v10, v1, Lly4;->a:Lrx4;

    .line 124
    invoke-virtual {v10}, Lrx4;->a()Lqw4;

    move-result-object v10

    .line 125
    iget-object v10, v10, Lqw4;->f:Low4;

    const-string v11, "Failed to send conditional user property to the service"

    .line 126
    invoke-virtual {v10, v11, v0}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1f

    .line 127
    :cond_19
    iget-object v0, v1, Lly4;->a:Lrx4;

    .line 128
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 129
    iget-object v0, v0, Lqw4;->f:Low4;

    const-string v10, "Discarding data. Unrecognized parcel type."

    .line 130
    invoke-virtual {v0, v10}, Low4;->a(Ljava/lang/String;)V

    :goto_1f
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_1a
    add-int/lit8 v7, v17, 0x1

    move v0, v5

    const/16 v5, 0x64

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_1b
    return-void
.end method

.method public final y(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    .line 2
    invoke-virtual {p0}, Lww4;->f()V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 3
    iget-object v1, v0, Lrx4;->f:Lc35;

    .line 4
    invoke-virtual {v0}, Lrx4;->v()Lkw4;

    move-result-object v0

    .line 5
    iget-object v1, v0, Lly4;->a:Lrx4;

    .line 6
    invoke-virtual {v1}, Lrx4;->t()Lp25;

    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Lp25;->L(Landroid/os/Parcelable;)[B

    move-result-object v1

    .line 8
    array-length v2, v1

    const/high16 v3, 0x20000

    if-le v2, v3, :cond_0

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 9
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lqw4;->g:Low4;

    const-string v1, "Conditional user property too long for local database. Sending directly to service"

    .line 11
    invoke-virtual {v0, v1}, Low4;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 12
    invoke-virtual {v0, v2, v1}, Lkw4;->n(I[B)Z

    move-result v0

    move v4, v0

    .line 13
    :goto_0
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 14
    invoke-direct {v5, p1}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;)V

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lh15;->v(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v3

    new-instance v0, Lx05;

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    .line 16
    invoke-direct/range {v1 .. v6}, Lx05;-><init>(Lh15;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzaa;)V

    invoke-virtual {p0, v0}, Lh15;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final z(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lyv4;->d()V

    .line 2
    invoke-virtual {p0}, Lww4;->f()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lh15;->v(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    new-instance v1, Ll05;

    .line 4
    invoke-direct {v1, p0, p1, v0}, Ll05;-><init>(Lh15;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-virtual {p0, v1}, Lh15;->t(Ljava/lang/Runnable;)V

    return-void
.end method
