.class public final Lzm3;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public e:Z

.field public f:Z

.field public final g:Ljava/lang/Object;

.field public final h:Lwm3;

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:Ljava/lang/String;

.field public final r:Z

.field public final s:Z

.field public final t:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lwm3;

    invoke-direct {v0}, Lwm3;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lzm3;->e:Z

    .line 4
    iput-boolean v1, p0, Lzm3;->f:Z

    .line 5
    iput-object v0, p0, Lzm3;->h:Lwm3;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lzm3;->g:Ljava/lang/Object;

    .line 7
    sget-object v0, Ll60;->d:Le60;

    invoke-virtual {v0}, Le60;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lzm3;->j:I

    .line 8
    sget-object v0, Ll60;->a:Le60;

    invoke-virtual {v0}, Le60;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lzm3;->k:I

    .line 9
    sget-object v0, Ll60;->e:Le60;

    invoke-virtual {v0}, Le60;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lzm3;->l:I

    .line 10
    sget-object v0, Ll60;->c:Le60;

    invoke-virtual {v0}, Le60;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lzm3;->m:I

    .line 11
    sget-object v0, Ly40;->L:Lo40;

    .line 12
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 13
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzm3;->n:I

    .line 15
    sget-object v0, Ly40;->M:Lo40;

    .line 16
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 17
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzm3;->o:I

    .line 19
    sget-object v0, Ly40;->N:Lo40;

    .line 20
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 21
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lzm3;->p:I

    .line 23
    sget-object v0, Ll60;->f:Le60;

    invoke-virtual {v0}, Le60;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lzm3;->i:I

    .line 24
    sget-object v0, Ly40;->P:Lo40;

    .line 25
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 26
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lzm3;->q:Ljava/lang/String;

    .line 28
    sget-object v0, Ly40;->Q:Lo40;

    .line 29
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 30
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lzm3;->r:Z

    .line 32
    sget-object v0, Ly40;->R:Lo40;

    .line 33
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 34
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lzm3;->s:Z

    .line 36
    sget-object v0, Ly40;->S:Lo40;

    .line 37
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 38
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lzm3;->t:Z

    const-string v0, "ContentFetchTask"

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static b()Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lvm3;

    move-result-object v1

    invoke-virtual {v1}, Lvm3;->b()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "activity"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const-string v3, "keyguard"

    .line 3
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_5

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    .line 5
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 6
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v6, :cond_3

    .line 7
    iget v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v2, v4, :cond_5

    .line 8
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "power"

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_1
    return v0

    :catchall_0
    move-exception v1

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v2

    .line 12
    iget-object v3, v2, Lor0;->e:Landroid/content/Context;

    iget-object v2, v2, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v3, v2}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v2

    const-string v3, "ContentFetchTask.isInForeground"

    .line 13
    invoke-interface {v2, v1, v3}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Ltm3;)Ldn3;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ldn3;

    invoke-direct {p1, v0, v0}, Ldn3;-><init>(II)V

    return-object p1

    .line 2
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    .line 4
    instance-of v1, p1, Landroid/widget/TextView;

    const/4 v9, 0x1

    if-eqz v1, :cond_2

    instance-of v1, p1, Landroid/widget/EditText;

    if-nez v1, :cond_2

    .line 5
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 6
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v8, p1

    move-object v2, p2

    .line 10
    invoke-virtual/range {v2 .. v8}, Ltm3;->c(Ljava/lang/String;ZFFFF)V

    .line 11
    new-instance p1, Ldn3;

    invoke-direct {p1, v9, v0}, Ldn3;-><init>(II)V

    return-object p1

    .line 12
    :cond_1
    new-instance p1, Ldn3;

    invoke-direct {p1, v0, v0}, Ldn3;-><init>(II)V

    return-object p1

    .line 13
    :cond_2
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    instance-of v1, p1, Lxw0;

    if-nez v1, :cond_3

    .line 14
    check-cast p1, Landroid/webkit/WebView;

    .line 15
    iget-object v1, p2, Ltm3;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 16
    :try_start_0
    iget v2, p2, Ltm3;->m:I

    add-int/2addr v2, v9

    iput v2, p2, Ltm3;->m:I

    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    new-instance v1, Lbn3;

    invoke-direct {v1, p0, p2, p1, v4}, Lbn3;-><init>(Lzm3;Ltm3;Landroid/webkit/WebView;Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 19
    new-instance p1, Ldn3;

    invoke-direct {p1, v0, v9}, Ldn3;-><init>(II)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 21
    :cond_3
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 22
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lzm3;->a(Landroid/view/View;Ltm3;)Ldn3;

    move-result-object v3

    .line 25
    iget v4, v3, Ldn3;->a:I

    add-int/2addr v1, v4

    .line 26
    iget v3, v3, Ldn3;->b:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_4
    new-instance p1, Ldn3;

    invoke-direct {p1, v1, v2}, Ldn3;-><init>(II)V

    return-object p1

    .line 28
    :cond_5
    new-instance p1, Ldn3;

    invoke-direct {p1, v0, v0}, Ldn3;-><init>(II)V

    return-object p1
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lzm3;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lzm3;->f:Z

    const/16 v2, 0x2a

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ContentFetchThread: paused, mPause = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final run()V
    .locals 5

    .line 1
    :goto_0
    :try_start_0
    invoke-static {}, Lzm3;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lvm3;

    move-result-object v0

    invoke-virtual {v0}, Lvm3;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ContentFetchThread: no activity. Sleeping."

    .line 3
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lzm3;->c()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 5
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v2

    const-string v3, "ContentFetchTask.extractContent"

    .line 8
    iget-object v4, v2, Lor0;->e:Landroid/content/Context;

    iget-object v2, v2, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v4, v2}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v2

    .line 9
    invoke-interface {v2, v0, v3}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Failed getting root view of activity. Content not extracted."

    .line 10
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 11
    new-instance v0, Lcn3;

    invoke-direct {v0, p0, v1}, Lcn3;-><init>(Lzm3;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    const-string v0, "ContentFetchTask: sleeping"

    .line 12
    invoke-static {v0}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lzm3;->c()V

    .line 14
    :cond_3
    :goto_2
    iget v0, p0, Lzm3;->i:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    .line 15
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lor0;

    move-result-object v1

    const-string v2, "ContentFetchTask.run"

    .line 17
    iget-object v3, v1, Lor0;->e:Landroid/content/Context;

    iget-object v1, v1, Lor0;->f:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-static {v3, v1}, Lxl0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)Lbm0;

    move-result-object v1

    .line 18
    invoke-interface {v1, v0, v2}, Lbm0;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    .line 19
    invoke-static {v1, v0}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :goto_3
    iget-object v0, p0, Lzm3;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :catch_3
    :goto_4
    :try_start_3
    iget-boolean v1, p0, Lzm3;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    :try_start_4
    const-string v1, "ContentFetchTask: waiting"

    .line 22
    invoke-static {v1}, Lis0;->zzdz(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lzm3;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 24
    :cond_4
    :try_start_5
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method
