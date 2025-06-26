.class public final synthetic Li71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lh71;

.field public final b:Lcom/google/android/gms/internal/ads/zzdrc;


# direct methods
.method public constructor <init>(Lh71;Lcom/google/android/gms/internal/ads/zzdrc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li71;->a:Lh71;

    iput-object p2, p0, Li71;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 4

    iget-object v0, p0, Li71;->a:Lh71;

    iget-object v1, p0, Li71;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzauj;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzauj;->m:Lcom/google/android/gms/internal/ads/zzdrc;

    .line 3
    iget-object v0, v0, Lh71;->h:Lbw1;

    .line 4
    new-instance v1, Lcw1;

    invoke-direct {v1, p1}, Lcw1;-><init>(Lcom/google/android/gms/internal/ads/zzauj;)V

    .line 5
    iget-object v2, v0, Lbw1;->b:Lpv1;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v3, Lfw1;

    invoke-direct {v3, v2}, Lfw1;-><init>(Lpv1;)V

    .line 8
    new-instance v2, Lew1;

    invoke-direct {v2, v0}, Lew1;-><init>(Lbw1;)V

    .line 9
    invoke-virtual {v0, p1, v3, v2, v1}, Lbw1;->a(Lcom/google/android/gms/internal/ads/zzauj;Liw1;Liw1;Lcv2;)Law2;

    move-result-object p1

    return-object p1
.end method
