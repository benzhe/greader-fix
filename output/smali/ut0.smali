.class public final synthetic Lut0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lcom/google/android/gms/internal/ads/zzbbz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lut0;->e:Lcom/google/android/gms/internal/ads/zzbbz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lut0;->e:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->j()V

    return-void
.end method
