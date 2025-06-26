.class public final Lok3;
.super Lmk3;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILjava/util/Map;Ljk3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljk3;",
            ")V"
        }
    .end annotation

    const/16 p2, 0x1a

    const-string v0, "Response code: "

    .line 1
    invoke-static {p2, v0, p1}, Ljo;->M(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lmk3;-><init>(Ljava/lang/String;Ljk3;)V

    return-void
.end method
