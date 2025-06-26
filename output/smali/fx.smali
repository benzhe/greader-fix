.class public final Lfx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsr2;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/internal/zzf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfx;->a:Lcom/google/android/gms/ads/internal/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lfx;->a:Lcom/google/android/gms/ads/internal/zzf;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzf;->l:Lpq2;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lpq2;->f(IJ)Le45;

    return-void
.end method

.method public final b(IJLjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lfx;->a:Lcom/google/android/gms/ads/internal/zzf;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzf;->l:Lpq2;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v3, v2, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    move-object v7, p4

    .line 4
    invoke-virtual/range {v1 .. v7}, Lpq2;->c(IJLjava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Le45;

    return-void
.end method
