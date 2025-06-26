.class public final Lwy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Ld23;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lry0;


# direct methods
.method public constructor <init>(Lry0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwy0;->a:Lry0;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lwy0;->a:Lry0;

    .line 2
    new-instance v1, Ld23;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzf;

    iget-object v3, v0, Lry0;->b:Landroid/content/Context;

    iget-object v0, v0, Lry0;->a:Lcom/google/android/gms/internal/ads/zzbar;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/ads/internal/zzf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;)V

    invoke-direct {v1, v2}, Ld23;-><init>(Lws2;)V

    return-object v1
.end method
