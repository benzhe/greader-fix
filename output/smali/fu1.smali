.class public final synthetic Lfu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lau1;

.field public final b:Lcom/google/android/gms/internal/ads/zzauj;

.field public final c:I


# direct methods
.method public constructor <init>(Lau1;Lcom/google/android/gms/internal/ads/zzauj;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfu1;->a:Lau1;

    iput-object p2, p0, Lfu1;->b:Lcom/google/android/gms/internal/ads/zzauj;

    iput p3, p0, Lfu1;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 3

    iget-object v0, p0, Lfu1;->a:Lau1;

    iget-object v1, p0, Lfu1;->b:Lcom/google/android/gms/internal/ads/zzauj;

    iget v2, p0, Lfu1;->c:I

    check-cast p1, Lyv1;

    .line 1
    iget-object p1, v0, Lau1;->d:Lxa3;

    invoke-interface {p1}, Lxa3;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmw1;

    invoke-virtual {p1, v1, v2}, Lmw1;->Z6(Lcom/google/android/gms/internal/ads/zzauj;I)Law2;

    move-result-object p1

    return-object p1
.end method
