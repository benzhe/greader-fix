.class public final synthetic Lxv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lmb3;

.field public final b:Lcom/google/android/gms/internal/ads/zzauj;


# direct methods
.method public constructor <init>(Lmb3;Lcom/google/android/gms/internal/ads/zzauj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxv1;->a:Lmb3;

    iput-object p2, p0, Lxv1;->b:Lcom/google/android/gms/internal/ads/zzauj;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 2

    .line 1
    iget-object v0, p0, Lxv1;->a:Lmb3;

    iget-object v1, p0, Lxv1;->b:Lcom/google/android/gms/internal/ads/zzauj;

    check-cast p1, Lbu1;

    .line 2
    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzv1;

    invoke-interface {p1, v1}, Lzv1;->a(Lcom/google/android/gms/internal/ads/zzauj;)Law2;

    move-result-object p1

    return-object p1
.end method
