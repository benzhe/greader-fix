.class public final Lli3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lmi3;


# direct methods
.method public constructor <init>(Lmi3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lli3;->e:Lmi3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lli3;->e:Lmi3;

    .line 2
    iget-boolean v1, v0, Lmi3;->K:Z

    if-nez v1, :cond_6

    iget-boolean v1, v0, Lmi3;->w:Z

    if-nez v1, :cond_6

    iget-object v1, v0, Lmi3;->u:Lmg3;

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lmi3;->v:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v1, v0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 4
    iget-object v4, v0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhj3;

    invoke-virtual {v4}, Lhj3;->l()Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v3, v0, Lmi3;->o:Lwk3;

    .line 6
    monitor-enter v3

    .line 7
    :try_start_0
    iput-boolean v2, v3, Lwk3;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v3

    .line 9
    new-array v3, v1, [Lkj3;

    .line 10
    new-array v4, v1, [Z

    iput-object v4, v0, Lmi3;->D:[Z

    .line 11
    new-array v4, v1, [Z

    iput-object v4, v0, Lmi3;->C:[Z

    .line 12
    iget-object v4, v0, Lmi3;->u:Lmg3;

    invoke-interface {v4}, Lmg3;->g()J

    move-result-wide v4

    iput-wide v4, v0, Lmi3;->B:J

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v1, :cond_5

    .line 13
    iget-object v6, v0, Lmi3;->s:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhj3;

    invoke-virtual {v6}, Lhj3;->l()Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v6

    .line 14
    new-instance v7, Lkj3;

    new-array v8, v5, [Lcom/google/android/gms/internal/ads/zzht;

    aput-object v6, v8, v2

    invoke-direct {v7, v8}, Lkj3;-><init>([Lcom/google/android/gms/internal/ads/zzht;)V

    aput-object v7, v3, v4

    .line 15
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzht;->j:Ljava/lang/String;

    .line 16
    invoke-static {v6}, Lc50;->m3(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Lc50;->l3(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 17
    :cond_4
    :goto_2
    iget-object v6, v0, Lmi3;->D:[Z

    aput-boolean v5, v6, v4

    .line 18
    iget-boolean v6, v0, Lmi3;->E:Z

    or-int/2addr v5, v6

    iput-boolean v5, v0, Lmi3;->E:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 19
    :cond_5
    new-instance v1, Lnj3;

    invoke-direct {v1, v3}, Lnj3;-><init>([Lkj3;)V

    iput-object v1, v0, Lmi3;->A:Lnj3;

    .line 20
    iput-boolean v5, v0, Lmi3;->w:Z

    .line 21
    iget-object v1, v0, Lmi3;->j:Lyi3;

    new-instance v2, Llj3;

    iget-wide v3, v0, Lmi3;->B:J

    iget-object v5, v0, Lmi3;->u:Lmg3;

    .line 22
    invoke-interface {v5}, Lmg3;->b()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Llj3;-><init>(JZ)V

    const/4 v3, 0x0

    .line 23
    invoke-interface {v1, v2, v3}, Lyi3;->f(Lse3;Ljava/lang/Object;)V

    .line 24
    iget-object v1, v0, Lmi3;->t:Lwi3;

    invoke-interface {v1, v0}, Lwi3;->j(Lxi3;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 25
    monitor-exit v3

    throw v0

    :cond_6
    :goto_3
    return-void
.end method
