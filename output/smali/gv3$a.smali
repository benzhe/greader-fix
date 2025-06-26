.class public final Lgv3$a;
.super Lsc0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgv3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic e:Lgv3;


# direct methods
.method public constructor <init>(Lgv3;Ljv3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgv3$a;->e:Lgv3;

    invoke-direct {p0}, Lsc0;-><init>()V

    return-void
.end method


# virtual methods
.method public final O5(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzajm;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgv3$a;->e:Lgv3;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lgv3;->d:Z

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v0, Lgv3;->e:Z

    .line 4
    invoke-static {p1}, Lgv3;->e(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p1

    .line 5
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lgv3;->a:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;

    .line 8
    invoke-interface {v3, p1}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lgv3;->g()Lgv3;

    move-result-object p1

    .line 10
    iget-object p1, p1, Lgv3;->a:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
