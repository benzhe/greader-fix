.class public final Lo62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhc1;


# instance fields
.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lmu3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lo62;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final s(Lcom/google/android/gms/internal/ads/zzvv;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo62;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ln62;

    invoke-direct {v1, p1}, Ln62;-><init>(Lcom/google/android/gms/internal/ads/zzvv;)V

    invoke-static {v0, v1}, Lc50;->s2(Ljava/util/concurrent/atomic/AtomicReference;Lei2;)V

    return-void
.end method
