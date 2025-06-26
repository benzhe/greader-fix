.class public final Lnz1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzvx;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzvx;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lsk2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnz1;->c:Lsk2;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnz1;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnz1;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lsk2;JLcom/google/android/gms/internal/ads/zzvh;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lsk2;->v:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lnz1;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lnz1;->c:Lsk2;

    if-nez v1, :cond_1

    .line 4
    iput-object p1, p0, Lnz1;->c:Lsk2;

    .line 5
    :cond_1
    iget-object p1, p0, Lnz1;->b:Ljava/util/Map;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvx;

    .line 7
    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzvx;->f:J

    .line 8
    iput-object p4, p1, Lcom/google/android/gms/internal/ads/zzvx;->g:Lcom/google/android/gms/internal/ads/zzvh;

    return-void
.end method
