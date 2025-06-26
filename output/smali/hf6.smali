.class public final Lhf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhf6$a;
    }
.end annotation


# instance fields
.field public final e:Lne6;


# direct methods
.method public constructor <init>(Lne6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lhf6;->e:Lne6;

    return-void
.end method


# virtual methods
.method public b(Lod6;Ldg6;)Lde6;
    .locals 3
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
    iget-object v0, p2, Ldg6;->b:Ljava/lang/reflect/Type;

    .line 2
    iget-object v1, p2, Ldg6;->a:Ljava/lang/Class;

    .line 3
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    const-class v2, Ljava/util/Collection;

    invoke-static {v0, v1, v2}, Lhe6;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    .line 7
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 8
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_0

    .line 9
    :cond_2
    const-class v0, Ljava/lang/Object;

    .line 10
    :goto_0
    new-instance v1, Ldg6;

    invoke-direct {v1, v0}, Ldg6;-><init>(Ljava/lang/reflect/Type;)V

    .line 11
    invoke-virtual {p1, v1}, Lod6;->d(Ldg6;)Lde6;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lhf6;->e:Lne6;

    invoke-virtual {v2, p2}, Lne6;->a(Ldg6;)Laf6;

    move-result-object p2

    .line 13
    new-instance v2, Lhf6$a;

    invoke-direct {v2, p1, v0, v1, p2}, Lhf6$a;-><init>(Lod6;Ljava/lang/reflect/Type;Lde6;Laf6;)V

    return-object v2
.end method
