.class public Lnf6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnf6;
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
    .locals 1
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
    iget-object p2, p2, Ldg6;->a:Ljava/lang/Class;

    .line 2
    const-class v0, Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    .line 3
    new-instance p2, Lnf6;

    invoke-direct {p2, p1}, Lnf6;-><init>(Lod6;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
