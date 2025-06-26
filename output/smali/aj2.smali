.class public final synthetic Laj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lwi2;

.field public final f:Lcom/google/android/gms/internal/ads/zzvh;


# direct methods
.method public constructor <init>(Lwi2;Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laj2;->e:Lwi2;

    iput-object p2, p0, Laj2;->f:Lcom/google/android/gms/internal/ads/zzvh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Laj2;->e:Lwi2;

    iget-object v1, p0, Laj2;->f:Lcom/google/android/gms/internal/ads/zzvh;

    .line 2
    iget-object v0, v0, Lwi2;->c:Lui2;

    .line 3
    iget-object v0, v0, Lui2;->e:Lej2;

    .line 4
    invoke-virtual {v0, v1}, Lej2;->Q(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method
