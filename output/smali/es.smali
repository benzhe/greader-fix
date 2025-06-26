.class public final Les;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzq;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Luq;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lds;

.field public final c:Lhs;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lds;Lhs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Luq;",
            ">;",
            "Lds;",
            "Lhs;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Les;->a:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Les;->b:Lds;

    .line 4
    iput-object p3, p0, Les;->c:Lhs;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Class;Lxq;)Lyq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lxq<",
            "TT;[B>;)",
            "Lyq<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Luq;

    const-string v1, "proto"

    invoke-direct {v0, v1}, Luq;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2, v0, p3}, Les;->b(Ljava/lang/String;Ljava/lang/Class;Luq;Lxq;)Lyq;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;Luq;Lxq;)Lyq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Luq;",
            "Lxq<",
            "TT;[B>;)",
            "Lyq<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Les;->a:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Lgs;

    iget-object v1, p0, Les;->b:Lds;

    iget-object v5, p0, Les;->c:Lhs;

    move-object v0, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lgs;-><init>(Lds;Ljava/lang/String;Luq;Lxq;Lhs;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const/4 p3, 0x1

    iget-object p4, p0, Les;->a:Ljava/util/Set;

    aput-object p4, p2, p3

    const-string p3, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 4
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
