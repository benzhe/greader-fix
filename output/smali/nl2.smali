.class public final Lnl2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzvq;

.field public b:Lcom/google/android/gms/internal/ads/zzvt;

.field public c:Lwt3;

.field public d:Ljava/lang/String;

.field public e:Lcom/google/android/gms/internal/ads/zzaaz;

.field public f:Z

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/google/android/gms/internal/ads/zzaei;

.field public j:Lcom/google/android/gms/internal/ads/zzwc;

.field public k:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

.field public l:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field public m:Lpt3;

.field public n:I

.field public o:Lcom/google/android/gms/internal/ads/zzajy;

.field public p:Lal2;

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lnl2;->n:I

    .line 3
    new-instance v0, Lal2;

    invoke-direct {v0}, Lal2;-><init>()V

    iput-object v0, p0, Lnl2;->p:Lal2;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lnl2;->q:Z

    return-void
.end method


# virtual methods
.method public final a()Lll2;
    .locals 2

    .line 1
    iget-object v0, p0, Lnl2;->d:Ljava/lang/String;

    const-string v1, "ad unit must not be null"

    invoke-static {v0, v1}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lnl2;->b:Lcom/google/android/gms/internal/ads/zzvt;

    const-string v1, "ad size must not be null"

    invoke-static {v0, v1}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lnl2;->a:Lcom/google/android/gms/internal/ads/zzvq;

    const-string v1, "ad request must not be null"

    invoke-static {v0, v1}, Lbi;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lll2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lll2;-><init>(Lnl2;Lkl2;)V

    return-object v0
.end method
