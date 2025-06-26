.class public final Ld32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsz1<",
        "Ldp1;",
        "Lzl2;",
        "Lg12;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lgp1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lgp1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld32;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ld32;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Ld32;->c:Lgp1;

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
    iget-object v0, p0, Ld32;->c:Lgp1;

    new-instance v1, Lv61;

    iget-object v2, p3, Lmz1;->a:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lv61;-><init>(Lhl2;Lsk2;Ljava/lang/String;)V

    new-instance p1, Lep1;

    new-instance p2, Lf32;

    invoke-direct {p2, p3}, Lf32;-><init>(Lmz1;)V

    invoke-direct {p1, p2}, Lep1;-><init>(Lwh1;)V

    .line 2
    invoke-virtual {v0, v1, p1}, Lgp1;->e(Lv61;Lep1;)Lfp1;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lh61;->a()Lxa1;

    move-result-object p2

    .line 4
    new-instance v0, Le21;

    iget-object v1, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v1, Lzl2;

    invoke-direct {v0, v1}, Le21;-><init>(Lzl2;)V

    iget-object v1, p0, Ld32;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0, v1}, Lxd1;->F0(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 5
    iget-object p2, p3, Lmz1;->c:Llb1;

    check-cast p2, Lg12;

    invoke-virtual {p1}, Lfp1;->m()Ll32;

    move-result-object p3

    invoke-virtual {p2, p3}, Lg12;->X6(Lng0;)V

    .line 6
    invoke-virtual {p1}, Lfp1;->k()Ldp1;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lhl2;Lsk2;Lmz1;)V
    .locals 4
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
    :try_start_0
    iget-object p1, p1, Lhl2;->a:Lcl2;

    iget-object p1, p1, Lcl2;->a:Lll2;

    .line 2
    iget-object v0, p1, Lll2;->o:Lxk2;

    iget v0, v0, Lxk2;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lzl2;

    iget-object v1, p0, Ld32;->a:Landroid/content/Context;

    iget-object p1, p1, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p2, p2, Lsk2;->u:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p3, Lmz1;->c:Llb1;

    check-cast v2, Lng0;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    iget-object v0, v0, Lzl2;->a:Lig0;

    .line 7
    new-instance v3, Ly20;

    invoke-direct {v3, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-interface {v0, v3, p1, p2, v2}, Lig0;->O6(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lng0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_2
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 10
    :cond_0
    iget-object v0, p3, Lmz1;->b:Ljava/lang/Object;

    check-cast v0, Lzl2;

    iget-object v1, p0, Ld32;->a:Landroid/content/Context;

    iget-object p1, p1, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object p2, p2, Lsk2;->u:Lorg/json/JSONObject;

    .line 11
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p3, Lmz1;->c:Llb1;

    check-cast v2, Lng0;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 13
    :try_start_3
    iget-object v0, v0, Lzl2;->a:Lig0;

    .line 14
    new-instance v3, Ly20;

    invoke-direct {v3, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 15
    invoke-interface {v0, v3, p1, p2, v2}, Lig0;->a6(Lx20;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lng0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    .line 16
    :try_start_4
    new-instance p2, Lpl2;

    invoke-direct {p2, p1}, Lpl2;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "Fail to load ad from adapter "

    .line 17
    iget-object p3, p3, Lmz1;->a:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, p3

    :goto_0
    invoke-static {p2, p1}, Lis0;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
