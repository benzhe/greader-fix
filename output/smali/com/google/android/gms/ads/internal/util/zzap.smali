.class public final Lcom/google/android/gms/ads/internal/util/zzap;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p2, p0, Lcom/google/android/gms/ads/internal/util/zzap;->e:I

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/internal/util/zzap;->e:I

    return v0
.end method
