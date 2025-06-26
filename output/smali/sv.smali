.class public final synthetic Lsv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgy0;


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/overlay/zze;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsv;->a:Lcom/google/android/gms/ads/internal/overlay/zze;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsv;->a:Lcom/google/android/gms/ads/internal/overlay/zze;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/zze;->g:Lxw0;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lxw0;->h0()V

    :cond_0
    return-void
.end method
