.class public final synthetic Ln72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Ll72;


# direct methods
.method public constructor <init>(Ll72;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln72;->a:Ll72;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 3

    iget-object v0, p0, Ln72;->a:Ll72;

    check-cast p1, Ljava/util/ArrayList;

    const-string v1, "google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"

    .line 1
    invoke-virtual {v0, v1}, Ll72;->Z6(Ljava/lang/String;)Law2;

    move-result-object v1

    new-instance v2, Lo72;

    invoke-direct {v2, v0, p1}, Lo72;-><init>(Ll72;Ljava/util/List;)V

    iget-object p1, v0, Ll72;->k:Lzv2;

    .line 2
    invoke-static {v1, v2, p1}, Lvt2;->l(Law2;Lvs2;Ljava/util/concurrent/Executor;)Law2;

    move-result-object p1

    return-object p1
.end method
