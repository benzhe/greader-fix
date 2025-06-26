.class public final synthetic Lmh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lkh2;

.field public final f:Lcom/google/android/gms/internal/ads/zzvh;


# direct methods
.method public constructor <init>(Lkh2;Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmh2;->e:Lkh2;

    iput-object p2, p0, Lmh2;->f:Lcom/google/android/gms/internal/ads/zzvh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmh2;->e:Lkh2;

    iget-object v1, p0, Lmh2;->f:Lcom/google/android/gms/internal/ads/zzvh;

    .line 2
    iget-object v0, v0, Lkh2;->c:Lih2;

    .line 3
    iget-object v0, v0, Lih2;->d:Lw52;

    .line 4
    invoke-virtual {v0, v1}, Lw52;->Q(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method
