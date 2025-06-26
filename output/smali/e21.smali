.class public final Le21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lua1;


# instance fields
.field public final e:Lzl2;


# direct methods
.method public constructor <init>(Lzl2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le21;->e:Lzl2;

    return-void
.end method


# virtual methods
.method public final r(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Le21;->e:Lzl2;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lpl2; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-object p1, p1, Lzl2;->a:Lig0;

    invoke-interface {p1}, Lig0;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    :try_start_2
    new-instance v0, Lpl2;

    invoke-direct {v0, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Lpl2; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "Cannot invoke onPause for the mediation adapter."

    .line 5
    invoke-static {v0, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final s(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Le21;->e:Lzl2;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lpl2; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-object p1, p1, Lzl2;->a:Lig0;

    invoke-interface {p1}, Lig0;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 4
    :try_start_2
    new-instance v0, Lpl2;

    invoke-direct {v0, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Lpl2; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "Cannot invoke onDestroy for the mediation adapter."

    .line 5
    invoke-static {v0, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final x(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Le21;->e:Lzl2;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lpl2; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    iget-object v0, v0, Lzl2;->a:Lig0;

    invoke-interface {v0}, Lig0;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 4
    :try_start_2
    iget-object v0, p0, Le21;->e:Lzl2;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lpl2; {:try_start_2 .. :try_end_2} :catch_0

    .line 6
    :try_start_3
    iget-object v0, v0, Lzl2;->a:Lig0;

    .line 7
    new-instance v1, Ly20;

    invoke-direct {v1, p1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-interface {v0, v1}, Lig0;->R3(Lx20;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    :try_start_4
    new-instance v0, Lpl2;

    invoke-direct {v0, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 10
    new-instance v0, Lpl2;

    invoke-direct {v0, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Lpl2; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "Cannot invoke onResume for the mediation adapter."

    .line 11
    invoke-static {v0, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
