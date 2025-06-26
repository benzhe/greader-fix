.class public final Lvo1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio1;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lcom/google/android/gms/ads/internal/zzb;

.field public final f:Lfx0;

.field public final g:Landroid/content/Context;

.field public final h:Lns1;

.field public final i:Lpp2;

.field public final j:Lsy1;

.field public final k:Ljava/util/concurrent/Executor;

.field public final l:Ld23;

.field public final m:Lcom/google/android/gms/internal/ads/zzbar;

.field public final n:Ljq2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ld23;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzb;Lfx0;Lsy1;Ljq2;Lns1;Lpp2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lvo1;->g:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lvo1;->k:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lvo1;->l:Ld23;

    .line 5
    iput-object p4, p0, Lvo1;->m:Lcom/google/android/gms/internal/ads/zzbar;

    .line 6
    iput-object p5, p0, Lvo1;->e:Lcom/google/android/gms/ads/internal/zzb;

    .line 7
    iput-object p6, p0, Lvo1;->f:Lfx0;

    .line 8
    iput-object p7, p0, Lvo1;->j:Lsy1;

    .line 9
    iput-object p8, p0, Lvo1;->n:Ljq2;

    .line 10
    iput-object p9, p0, Lvo1;->h:Lns1;

    .line 11
    iput-object p10, p0, Lvo1;->i:Lpp2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lio1;

    invoke-direct {v0, p0}, Lio1;-><init>(Lvo1;)V

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, v0, Lio1;->c:Landroid/content/Context;

    iget-object v4, v0, Lio1;->h:Lcom/google/android/gms/internal/ads/zzbar;

    sget-object v1, Ly40;->R1:Lo40;

    .line 4
    sget-object v3, Los3;->j:Los3;

    iget-object v3, v3, Los3;->f:Lu40;

    .line 5
    invoke-virtual {v3, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    iget-object v3, v0, Lio1;->g:Ld23;

    iget-object v5, v0, Lio1;->b:Lcom/google/android/gms/ads/internal/zzb;

    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v7

    new-instance v8, Lex0;

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lex0;-><init>(Landroid/content/Context;Ld23;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzb;Ljava/lang/String;)V

    sget-object v1, Lms0;->e:Lzv2;

    .line 8
    invoke-static {v7, v8, v1}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v1

    .line 9
    new-instance v2, Llo1;

    invoke-direct {v2, v0}, Llo1;-><init>(Lio1;)V

    iget-object v3, v0, Lio1;->f:Ljava/util/concurrent/Executor;

    .line 10
    invoke-static {v1, v2, v3}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v1

    iput-object v1, v0, Lio1;->l:Law2;

    const-string v2, "NativeJavascriptExecutor.initializeEngine"

    .line 11
    invoke-static {v1, v2}, Lc50;->e2(Law2;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
