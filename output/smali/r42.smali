.class public final Lr42;
.super Lq41;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;Lg61;Luk2;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2, p3}, Lq41;-><init>(Landroid/view/View;Lxw0;Lg61;Luk2;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Lnb1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lsf1<",
            "Lob1;",
            ">;>;)",
            "Lnb1;"
        }
    .end annotation

    .line 1
    new-instance p1, Lnb1;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Lnb1;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
