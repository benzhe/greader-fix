.class public Lrf6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrf6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lod6;Ldg6;)Lde6;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lod6;",
            "Ldg6<",
            "TT;>;)",
            "Lde6<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Ldg6;->a:Ljava/lang/Class;

    .line 2
    const-class p2, Ljava/sql/Time;

    if-ne p1, p2, :cond_0

    new-instance p1, Lrf6;

    invoke-direct {p1}, Lrf6;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
