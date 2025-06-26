.class public final Lzu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzv1;


# static fields
.field public static final f:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lau1;

.field public final b:Lzv2;

.field public final c:Lll2;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Ldy1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Received error HTTP response code: (.*)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lzu1;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lll2;Lau1;Lzv2;Ljava/util/concurrent/ScheduledExecutorService;Ldy1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzu1;->c:Lll2;

    .line 3
    iput-object p2, p0, Lzu1;->a:Lau1;

    .line 4
    iput-object p3, p0, Lzu1;->b:Lzv2;

    .line 5
    iput-object p4, p0, Lzu1;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p5, p0, Lzu1;->e:Ldy1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzauj;)Law2;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzauj;",
            ")",
            "Law2<",
            "Lhl2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzu1;->a:Lau1;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzauj;->h:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lyv1;

    sget-object v2, Ldm2;->e:Ldm2;

    invoke-direct {v1, v2}, Lyv1;-><init>(Ldm2;)V

    .line 6
    new-instance v2, Lvv2$a;

    invoke-direct {v2, v1}, Lvv2$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Lau1;->a:Lzv2;

    new-instance v2, Ldu1;

    invoke-direct {v2, v0, p1}, Ldu1;-><init>(Lau1;Lcom/google/android/gms/internal/ads/zzauj;)V

    .line 8
    invoke-interface {v1, v2}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object v1

    .line 9
    const-class v2, Ljava/util/concurrent/ExecutionException;

    sget-object v3, Lcu1;->a:Lcv2;

    iget-object v4, v0, Lau1;->b:Lzv2;

    .line 10
    invoke-static {v1, v2, v3, v4}, Lvt2;->n(Law2;Ljava/lang/Class;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object v2

    .line 11
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 12
    const-class v3, Lyv1;

    new-instance v4, Lfu1;

    invoke-direct {v4, v0, p1, v1}, Lfu1;-><init>(Lau1;Lcom/google/android/gms/internal/ads/zzauj;I)V

    iget-object p1, v0, Lau1;->b:Lzv2;

    .line 13
    invoke-static {v2, v3, v4, p1}, Lvt2;->n(Law2;Ljava/lang/Class;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p1

    .line 14
    new-instance v0, Lcv1;

    invoke-direct {v0, p0}, Lcv1;-><init>(Lzu1;)V

    iget-object v1, p0, Lzu1;->b:Lzv2;

    .line 15
    invoke-static {p1, v0, v1}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p1

    .line 16
    sget-object v0, Ly40;->g3:Lo40;

    .line 17
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 18
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    sget-object v0, Ly40;->h3:Lo40;

    .line 21
    sget-object v1, Los3;->j:Los3;

    iget-object v1, v1, Los3;->f:Lu40;

    .line 22
    invoke-virtual {v1, v0}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lzu1;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    invoke-static {p1, v0, v1, v2, v3}, Lvt2;->d(Law2;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Law2;

    move-result-object p1

    .line 25
    const-class v0, Ljava/util/concurrent/TimeoutException;

    sget-object v1, Lbv1;->a:Lcv2;

    .line 26
    sget-object v2, Lms0;->f:Lzv2;

    .line 27
    invoke-static {p1, v0, v1, v2}, Lvt2;->n(Law2;Ljava/lang/Class;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p1

    .line 28
    :cond_1
    new-instance v0, Lev1;

    invoke-direct {v0, p0}, Lev1;-><init>(Lzu1;)V

    .line 29
    sget-object v1, Lms0;->f:Lzv2;

    .line 30
    new-instance v2, Lsv2;

    invoke-direct {v2, p1, v0}, Lsv2;-><init>(Ljava/util/concurrent/Future;Lrv2;)V

    move-object v0, p1

    check-cast v0, Lsu2;

    invoke-virtual {v0, v2, v1}, Lsu2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method
