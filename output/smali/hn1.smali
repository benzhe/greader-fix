.class public final synthetic Lhn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lfn1;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfn1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhn1;->a:Lfn1;

    iput-object p2, p0, Lhn1;->b:Ljava/lang/String;

    iput-object p3, p0, Lhn1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 8

    iget-object p1, p0, Lhn1;->a:Lfn1;

    iget-object v0, p0, Lhn1;->b:Ljava/lang/String;

    iget-object v1, p0, Lhn1;->c:Ljava/lang/String;

    .line 1
    iget-object v2, p1, Lfn1;->c:Lmp1;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->C()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v3

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v2, v3, v4, v4}, Lmp1;->a(Lcom/google/android/gms/internal/ads/zzvt;Lsk2;Lwk2;)Lxw0;

    move-result-object v2

    .line 3
    new-instance v3, Lus0;

    invoke-direct {v3, v2}, Lus0;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1, v2}, Lfn1;->a(Lxw0;)V

    .line 5
    iget-object v5, p1, Lfn1;->a:Lll2;

    iget-object v5, v5, Lll2;->c:Lcom/google/android/gms/internal/ads/zzajy;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 6
    new-instance v5, Ljy0;

    const/4 v7, 0x5

    invoke-direct {v5, v7, v6, v6}, Ljy0;-><init>(III)V

    .line 7
    invoke-interface {v2, v5}, Lxw0;->J(Ljy0;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v5, Ljy0;

    const/4 v7, 0x4

    invoke-direct {v5, v7, v6, v6}, Ljy0;-><init>(III)V

    .line 9
    invoke-interface {v2, v5}, Lxw0;->J(Ljy0;)V

    .line 10
    :goto_0
    invoke-interface {v2}, Lxw0;->I()Lhy0;

    move-result-object v5

    new-instance v6, Lmn1;

    invoke-direct {v6, p1, v2, v3}, Lmn1;-><init>(Lfn1;Lxw0;Lus0;)V

    .line 11
    check-cast v5, Lww0;

    .line 12
    iput-object v6, v5, Lww0;->k:Lgy0;

    .line 13
    invoke-interface {v2, v0, v1, v4}, Lxw0;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
