.class public final Ld52;
.super Lrg1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lwh1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lrg1;-><init>(Lwh1;)V

    return-void
.end method


# virtual methods
.method public final a(La91;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La91;",
            ")",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lca1;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final b(La91;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La91;",
            ")",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lhf1;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
