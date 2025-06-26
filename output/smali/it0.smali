.class public final synthetic Lit0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lcom/google/android/gms/internal/ads/zzbbq;

.field public final f:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbq;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lit0;->e:Lcom/google/android/gms/internal/ads/zzbbq;

    iput p2, p0, Lit0;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lit0;->e:Lcom/google/android/gms/internal/ads/zzbbq;

    iget v1, p0, Lit0;->f:I

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbq;->t:Lrt0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lrt0;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method
