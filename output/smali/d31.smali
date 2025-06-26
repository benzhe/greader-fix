.class public final Ld31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lem3;


# instance fields
.field public e:Lxw0;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Lo21;

.field public final h:Lb20;

.field public i:Z

.field public j:Z

.field public k:Ls21;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo21;Lb20;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ld31;->i:Z

    .line 3
    iput-boolean v0, p0, Ld31;->j:Z

    .line 4
    new-instance v0, Ls21;

    invoke-direct {v0}, Ls21;-><init>()V

    iput-object v0, p0, Ld31;->k:Ls21;

    .line 5
    iput-object p1, p0, Ld31;->f:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p2, p0, Ld31;->g:Lo21;

    .line 7
    iput-object p3, p0, Ld31;->h:Lb20;

    return-void
.end method


# virtual methods
.method public final c0(Lfm3;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld31;->k:Ls21;

    iget-boolean v1, p0, Ld31;->j:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p1, Lfm3;->j:Z

    :goto_0
    iput-boolean v1, v0, Ls21;->a:Z

    .line 2
    iget-object v1, p0, Ld31;->h:Lb20;

    invoke-interface {v1}, Lb20;->b()J

    move-result-wide v1

    iput-wide v1, v0, Ls21;->c:J

    .line 3
    iget-object v0, p0, Ld31;->k:Ls21;

    iput-object p1, v0, Ls21;->e:Lfm3;

    .line 4
    iget-boolean p1, p0, Ld31;->i:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Ld31;->d()V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Ld31;->g:Lo21;

    iget-object v1, p0, Ld31;->k:Ls21;

    invoke-virtual {v0, v1}, Lo21;->a(Ls21;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ld31;->e:Lxw0;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Ld31;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Lc31;

    invoke-direct {v2, p0, v0}, Lc31;-><init>(Ld31;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call video active view js"

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
