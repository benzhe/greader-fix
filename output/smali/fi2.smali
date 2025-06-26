.class public final Lfi2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Ll91<",
        "+",
        "Lf61;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lsm2;

.field public final b:Loi2;

.field public final c:Lni2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lni2<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/Executor;

.field public e:Lji2;


# direct methods
.method public constructor <init>(Lsm2;Loi2;Lni2;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsm2;",
            "Loi2;",
            "Lni2<",
            "TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfi2;->a:Lsm2;

    .line 3
    iput-object p2, p0, Lfi2;->b:Loi2;

    .line 4
    iput-object p3, p0, Lfi2;->c:Lni2;

    .line 5
    iput-object p4, p0, Lfi2;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Lbn2;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lfi2;->c:Lni2;

    iget-object v1, p0, Lfi2;->b:Loi2;

    invoke-interface {v0, v1}, Lni2;->a(Loi2;)Lk91;

    move-result-object v0

    invoke-interface {v0}, Lk91;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll91;

    .line 2
    invoke-interface {v0}, Ll91;->b()Lll2;

    move-result-object v0

    .line 3
    iget-object v2, v0, Lll2;->d:Lcom/google/android/gms/internal/ads/zzvq;

    .line 4
    iget-object v3, v0, Lll2;->f:Ljava/lang/String;

    .line 5
    iget-object v6, v0, Lll2;->j:Lcom/google/android/gms/internal/ads/zzwc;

    .line 6
    iget-object v0, p0, Lfi2;->a:Lsm2;

    check-cast v0, Lrm2;

    .line 7
    new-instance v1, Lum0;

    iget-object v4, v0, Lrm2;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzdrc;->h:Landroid/content/Context;

    invoke-direct {v1, v4}, Lum0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lum0;->e()Lrm0;

    move-result-object v1

    .line 8
    iget v4, v1, Lrm0;->j:I

    .line 9
    new-instance v7, Len2;

    iget-object v0, v0, Lrm2;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdrc;->n:Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Len2;-><init>(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzwc;)V

    return-object v7
.end method
