.class public final Luj0;
.super Lyj0;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lxw0;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxw0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storePicture"

    .line 1
    invoke-direct {p0, p1, v0}, Lyj0;-><init>(Lxw0;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Luj0;->c:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Lxw0;->a()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Luj0;->d:Landroid/content/Context;

    return-void
.end method
