.class public final Lbd3;
.super Lid3;
.source "SourceFile"


# instance fields
.field public final l:Z


# direct methods
.method public constructor <init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;I)V
    .locals 7

    const/16 v6, 0x3d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lid3;-><init>(Lxb3;Ljava/lang/String;Ljava/lang/String;Lgl1$b;II)V

    .line 2
    iget-object p1, p1, Lxb3;->q:Lcom/google/android/gms/internal/ads/zzfa;

    .line 3
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzfa;->a:Z

    .line 4
    iput-boolean p1, p0, Lbd3;->l:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lid3;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lid3;->e:Lxb3;

    .line 2
    iget-object v2, v2, Lxb3;->a:Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 3
    iget-boolean v4, p0, Lbd3;->l:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lid3;->h:Lgl1$b;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v4, p0, Lid3;->h:Lgl1$b;

    .line 6
    iget-boolean v5, v4, Ls63$b;->g:Z

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v4}, Ls63$b;->o()V

    .line 8
    iput-boolean v3, v4, Ls63$b;->g:Z

    .line 9
    :cond_0
    iget-object v3, v4, Ls63$b;->f:Ls63;

    check-cast v3, Lgl1;

    invoke-static {v3, v0, v1}, Lgl1;->K(Lgl1;J)V

    .line 10
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
