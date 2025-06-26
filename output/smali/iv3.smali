.class public final synthetic Liv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lgv3;

.field public final f:Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# direct methods
.method public constructor <init>(Lgv3;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liv3;->e:Lgv3;

    iput-object p2, p0, Liv3;->f:Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Liv3;->e:Lgv3;

    iget-object v1, p0, Liv3;->f:Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;

    .line 1
    iget-object v0, v0, Lgv3;->h:Lcom/google/android/gms/ads/initialization/InitializationStatus;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    return-void
.end method
