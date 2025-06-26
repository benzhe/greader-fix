.class public final synthetic Li72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lf72;

.field public final f:Lcom/google/android/gms/internal/ads/zzvh;


# direct methods
.method public constructor <init>(Lf72;Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li72;->e:Lf72;

    iput-object p2, p0, Li72;->f:Lcom/google/android/gms/internal/ads/zzvh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li72;->e:Lf72;

    iget-object v1, p0, Li72;->f:Lcom/google/android/gms/internal/ads/zzvh;

    .line 2
    iget-object v0, v0, Lf72;->c:Le72;

    .line 3
    iget-object v0, v0, Le72;->d:Ly62;

    .line 4
    iget-object v0, v0, Ly62;->c:Lda1;

    .line 5
    invoke-interface {v0, v1}, Lda1;->Q(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method
