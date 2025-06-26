.class public final Lp12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsz1<",
        "Lqg1;",
        "Lzl2;",
        "Lg12;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Loh1;

.field public final c:Lcom/google/android/gms/internal/ads/zzbar;

.field public final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Loh1;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp12;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lp12;->c:Lcom/google/android/gms/internal/ads/zzbar;

    .line 4
    iput-object p3, p0, Lp12;->b:Loh1;

    .line 5
    iput-object p4, p0, Lp12;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lhl2;Lsk2;Lmz1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl2;,
            Lz22;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp12;->b:Loh1;

    new-instance v1, Lv61;

    iget-object v2, p3, Lmz1;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance p1, Lrg1;

    new-instance p2, Ls12;

    invoke-direct {p2, p0, p3}, Ls12;-><init>(Lp12;Lmz1;)V

    invoke-direct {p1, p2}, Lrg1;-><init>(Lwh1;)V

    .line 2
    invoke-virtual {v0, v1, p1}, Loh1;->a(Lv61;Lrg1;)Lsg1;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lh61;->a()Lxa1;

    move-result-object p2

    .line 4
    new-instance v0, Le21;

    iget-object v1, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v1, Lzl2;

    invoke-direct {v0, v1}, Le21;-><init>(Lzl2;)V

    iget-object v1, p0, Lp12;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lxd1;->F0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 5
    iget-object p2, p3, Lmz1;->c:Llb1;

    check-cast p2, Lg12;

    invoke-virtual {p1}, Lh61;->f()Ln42;

    move-result-object p3

    invoke-virtual {p2, p3}, Lg12;->X6(Lng0;)V

    .line 6
    invoke-virtual {p1}, Lsg1;->j()Lqg1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lhl2;Lsk2;Lmz1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            "Lmz1<",
            "Lzl2;",
            "Lg12;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lpl2;
        }
    .end annotation

    .line 1
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lzl2;

    iget-object v1, p0, Lp12;->a:Landroid/content/Context;

    iget-object p1, p1, Lhl2;->a:Lcl2;

    iget-object p1, p1, Lcl2;->a:Lll2;

    iget-object v4, p1, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p1, p2, Lsk2;->u:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p2, Lsk2;->r:Lzk2;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza(Lcom/google/android/gms/ads/internal/util/zzbm;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p3, Lmz1;->c:Llb1;

    move-object v7, p1

    check-cast v7, Lng0;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    iget-object v2, v0, Lzl2;->a:Lig0;

    .line 6
    new-instance v3, Ly20;

    invoke-direct {v3, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 7
    invoke-interface/range {v2 .. v7}, Lig0;->Q5(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/lang/String;Lng0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
