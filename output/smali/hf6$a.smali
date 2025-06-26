.class public final Lhf6$a;
.super Lde6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lde6<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lde6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde6<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:Laf6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf6<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lod6;Ljava/lang/reflect/Type;Lde6;Laf6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lod6;",
            "Ljava/lang/reflect/Type;",
            "Lde6<",
            "TE;>;",
            "Laf6<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lde6;-><init>()V

    .line 2
    new-instance v0, Ltf6;

    invoke-direct {v0, p1, p3, p2}, Ltf6;-><init>(Lod6;Lde6;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lhf6$a;->a:Lde6;

    .line 3
    iput-object p4, p0, Lhf6$a;->b:Laf6;

    return-void
.end method


# virtual methods
.method public a(Leg6;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Leg6;->Q()Lfg6;

    move-result-object v0

    sget-object v1, Lfg6;->m:Lfg6;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Leg6;->E()V

    const/4 p1, 0x0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lhf6$a;->b:Laf6;

    invoke-interface {v0}, Laf6;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 4
    invoke-virtual {p1}, Leg6;->a()V

    .line 5
    :goto_0
    invoke-virtual {p1}, Leg6;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lhf6$a;->a:Lde6;

    invoke-virtual {v1, p1}, Lde6;->a(Leg6;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Leg6;->f()V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public b(Lgg6;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lgg6;->m()Lgg6;

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lgg6;->b()Lgg6;

    .line 4
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lhf6$a;->a:Lde6;

    invoke-virtual {v1, p1, v0}, Lde6;->b(Lgg6;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lgg6;->f()Lgg6;

    :goto_1
    return-void
.end method
