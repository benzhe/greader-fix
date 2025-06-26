.class public final synthetic Ltc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldv2;


# instance fields
.field public final a:Lrc2;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lrc2;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltc2;->a:Lrc2;

    iput-object p2, p0, Ltc2;->b:Ljava/lang/String;

    iput-object p3, p0, Ltc2;->c:Ljava/util/List;

    iput-object p4, p0, Ltc2;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 11

    iget-object v0, p0, Ltc2;->a:Lrc2;

    iget-object v1, p0, Ltc2;->b:Ljava/lang/String;

    iget-object v2, p0, Ltc2;->c:Ljava/util/List;

    iget-object v6, p0, Ltc2;->d:Landroid/os/Bundle;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v10, Lxs0;

    invoke-direct {v10}, Lxs0;-><init>()V

    .line 3
    iget-object v3, v0, Lrc2;->f:Li52;

    .line 4
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    iget-object v4, v3, Li52;->b:Lnq1;

    invoke-virtual {v4, v1}, Lnq1;->c(Ljava/lang/String;)Lvi0;

    move-result-object v4

    .line 6
    iget-object v3, v3, Li52;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Couldn\'t create RTB adapter : "

    .line 7
    invoke-static {v4, v3}, Lis0;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    iget-object v3, v0, Lrc2;->f:Li52;

    invoke-virtual {v3, v1}, Li52;->a(Ljava/lang/String;)Lvi0;

    move-result-object v3

    .line 9
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v9, Lr52;

    invoke-direct {v9, v1, v3, v10}, Lr52;-><init>(Ljava/lang/String;Lvi0;Lxs0;)V

    .line 11
    iget-object v1, v0, Lrc2;->d:Landroid/content/Context;

    .line 12
    new-instance v4, Ly20;

    invoke-direct {v4, v1}, Ly20;-><init>(Ljava/lang/Object;)V

    .line 13
    iget-object v5, v0, Lrc2;->g:Ljava/lang/String;

    const/4 v1, 0x0

    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/os/Bundle;

    iget-object v0, v0, Lrc2;->e:Lll2;

    iget-object v8, v0, Lll2;->e:Lcom/google/android/gms/internal/ads/zzvt;

    .line 15
    invoke-interface/range {v3 .. v9}, Lvi0;->a3(Lx20;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzvt;Laj0;)V

    return-object v10
.end method
