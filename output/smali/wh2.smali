.class public final Lwh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lon2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lon2;"
    }
.end annotation


# instance fields
.field public final a:Lni2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lni2<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final b:Lpi2;

.field public final c:Lcom/google/android/gms/internal/ads/zzvq;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lcom/google/android/gms/internal/ads/zzwc;

.field public final g:Lbn2;


# direct methods
.method public constructor <init>(Lni2;Lpi2;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzwc;Lbn2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lni2<",
            "TR;>;",
            "Lpi2;",
            "Lcom/google/android/gms/internal/ads/zzvq;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzwc;",
            "Lbn2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwh2;->a:Lni2;

    .line 3
    iput-object p2, p0, Lwh2;->b:Lpi2;

    .line 4
    iput-object p3, p0, Lwh2;->c:Lcom/google/android/gms/internal/ads/zzvq;

    .line 5
    iput-object p4, p0, Lwh2;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lwh2;->e:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Lwh2;->f:Lcom/google/android/gms/internal/ads/zzwc;

    .line 8
    iput-object p7, p0, Lwh2;->g:Lbn2;

    return-void
.end method


# virtual methods
.method public final a()Lbn2;
    .locals 1

    .line 1
    iget-object v0, p0, Lwh2;->g:Lbn2;

    return-object v0
.end method

.method public final b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lwh2;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final c()Lon2;
    .locals 9

    .line 1
    new-instance v8, Lwh2;

    iget-object v1, p0, Lwh2;->a:Lni2;

    iget-object v2, p0, Lwh2;->b:Lpi2;

    iget-object v3, p0, Lwh2;->c:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v4, p0, Lwh2;->d:Ljava/lang/String;

    iget-object v5, p0, Lwh2;->e:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lwh2;->f:Lcom/google/android/gms/internal/ads/zzwc;

    iget-object v7, p0, Lwh2;->g:Lbn2;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lwh2;-><init>(Lni2;Lpi2;Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzwc;Lbn2;)V

    return-object v8
.end method
