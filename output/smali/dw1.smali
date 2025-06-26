.class public final synthetic Ldw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lbw1;

.field public final b:Liw1;

.field public final c:Lcom/google/android/gms/internal/ads/zzauj;

.field public final d:Lcv2;


# direct methods
.method public constructor <init>(Lbw1;Liw1;Lcom/google/android/gms/internal/ads/zzauj;Lcv2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldw1;->a:Lbw1;

    iput-object p2, p0, Ldw1;->b:Liw1;

    iput-object p3, p0, Ldw1;->c:Lcom/google/android/gms/internal/ads/zzauj;

    iput-object p4, p0, Ldw1;->d:Lcv2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 4

    iget-object v0, p0, Ldw1;->a:Lbw1;

    iget-object v1, p0, Ldw1;->b:Liw1;

    iget-object v2, p0, Ldw1;->c:Lcom/google/android/gms/internal/ads/zzauj;

    iget-object v3, p0, Ldw1;->d:Lcv2;

    check-cast p1, Lyv1;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v1, v2}, Liw1;->a(Lcom/google/android/gms/internal/ads/zzauj;)Law2;

    move-result-object p1

    iget-object v0, v0, Lbw1;->a:Lzv2;

    invoke-static {p1, v3, v0}, Lvt2;->m(Law2;Lcv2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p1

    return-object p1
.end method
