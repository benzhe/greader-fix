.class public final synthetic Lyu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lcom/google/android/gms/internal/ads/zzbcv;

.field public final f:Z

.field public final g:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbcv;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyu0;->e:Lcom/google/android/gms/internal/ads/zzbcv;

    iput-boolean p2, p0, Lyu0;->f:Z

    iput-wide p3, p0, Lyu0;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lyu0;->e:Lcom/google/android/gms/internal/ads/zzbcv;

    iget-boolean v1, p0, Lyu0;->f:Z

    iget-wide v2, p0, Lyu0;->g:J

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbcv;->g:Liu0;

    invoke-interface {v0, v1, v2, v3}, Liu0;->R(ZJ)V

    return-void
.end method
