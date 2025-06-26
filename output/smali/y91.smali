.class public final Ly91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lnp0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lsk2;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lop0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv91;Lmb3;Lmb3;Lmb3;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv91;",
            "Lmb3<",
            "Landroid/content/Context;",
            ">;",
            "Lmb3<",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            ">;",
            "Lmb3<",
            "Lsk2;",
            ">;",
            "Lmb3<",
            "Lop0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ly91;->a:Lmb3;

    .line 3
    iput-object p3, p0, Ly91;->b:Lmb3;

    .line 4
    iput-object p4, p0, Ly91;->c:Lmb3;

    .line 5
    iput-object p5, p0, Ly91;->d:Lmb3;

    return-void
.end method

.method public static a(Lv91;Lmb3;Lmb3;Lmb3;Lmb3;)Ly91;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv91;",
            "Lmb3<",
            "Landroid/content/Context;",
            ">;",
            "Lmb3<",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            ">;",
            "Lmb3<",
            "Lsk2;",
            ">;",
            "Lmb3<",
            "Lop0;",
            ">;)",
            "Ly91;"
        }
    .end annotation

    .line 1
    new-instance v6, Ly91;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ly91;-><init>(Lv91;Lmb3;Lmb3;Lmb3;Lmb3;)V

    return-object v6
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Ly91;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Ly91;->b:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v0, p0, Ly91;->c:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk2;

    iget-object v1, p0, Ly91;->d:Lmb3;

    invoke-interface {v1}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lop0;

    .line 2
    iget-object v1, v0, Lsk2;->z:Lcom/google/android/gms/internal/ads/zzaxn;

    if-eqz v1, :cond_0

    .line 3
    new-instance v7, Lfp0;

    iget-object v4, v0, Lsk2;->z:Lcom/google/android/gms/internal/ads/zzaxn;

    iget-object v0, v0, Lsk2;->r:Lzk2;

    iget-object v5, v0, Lzk2;->b:Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lfp0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/zzaxn;Ljava/lang/String;Lop0;)V

    return-object v7

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
